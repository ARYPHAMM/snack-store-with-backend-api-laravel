<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Order;
use App\OrderDetail;
use App\Jobs\SendPaymentEmail;
use Session;
use Stripe;

class StripeController extends Controller
{
    public function stripePost(Request $request)
    {
        Stripe\Stripe::setApiKey(config('app.STRIPE_SECRET'));
        $customer = json_decode($request->customer,true);
        $order = Order::create($customer);

        $cart = json_decode($request->cart,true);
        $total = 0;
        foreach ($cart as $item) {
            $item = $item[0];
            OrderDetail::create([
                'order_id' => $order->id,
                'product_id' => $item['id'],
                'title' => $item['title'],
                'quantity' => $item['quantity'],
                'price' => $item['price'],
            ]);
            $total += ($item['price'] * $item['quantity']);
        };
        $paymentIntent =  Stripe\Charge::create ([
            "amount" => 100 * 100,
            "currency" => "usd",
            "source" => $request->token,
            "description" => "Test payment from itsolutionstuff.com." 
        ]);

        dispatch(new SendPaymentEmail($order->email));
        $order = Order::find($order->id)->update(['charge_id'=>$paymentIntent->id,'total_price' => $total]);

    //    return response()->json(['clientSecret' => $paymentIntent->client_secret],200);
       return response()->json(['clientSecret' => $order],200);
    }
}
