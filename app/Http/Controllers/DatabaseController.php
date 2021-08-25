<?php
namespace App\Http\Controllers;

use App\OrderDetail;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
class DatabaseController extends Controller
{
    public function createItem(Request $request)
    {
        $this->validateOfTable($request, $request->table);
        $keys = array();
        $values = array();
        $items = array();
        $table = $request->table;
        foreach ($request->except(['table', 'id']) as $key => $value) {
            // $keys[] = $key;
            // $values[] ="?";
            $items[$key] = $value;
        }
        if ((@$items['url'] == '') && ($request->table=="categories"  || $request->table=="products" ||  $request->table=="posts")){
            $items['url'] = changeTitle($items['title']);
        }
        $items['created_at'] = \Carbon\Carbon::now();
        $items['updated_at'] = \Carbon\Carbon::now();
        DB::table($table)->insert($items);
        return response()->json(true, Response::HTTP_OK);
    }
    private function validateOfTable($request, $table)
    {
        switch ($table) {
            case 'categories':
                $customMessages = [
                    'required' => 'The :attribute field is required 1'
                ];
                $this->validate($request, [
                    'title' => 'required',
                    // 'thumbnail' => 'required',
                    // 'description' => 'required',
                    // 'content' => 'required',
                    // 'title_seo' => 'required',
                    // 'keyword_seo' => 'required',
                    // 'description_seo' => 'required',
                    // 'h1_seo' => 'required',
                    // 'h2_seo' => 'required',
                    // 'h3_seo' => 'required',
                ]);
                break;
            case 'products':
                $customMessages = [
                    'required' => 'The :attribute field is required 1'
                ];
                $this->validate($request, [
                    'title' => 'required',
                    // 'thumbnail' => 'required',
                    // 'description' => 'required',
                    // 'content' => 'required',
                    // 'title_seo' => 'required',
                    // 'keyword_seo' => 'required',
                    // 'description_seo' => 'required',
                    // 'h1_seo' => 'required',
                    // 'h2_seo' => 'required',
                    // 'h3_seo' => 'required',
                ]);
                break;
            default:
                # code...
                break;
        }
        return true;
    }
    public function getItem(Request $request)
    {
        $item = DB::table($request->table)->where('id', $request->id)->first();
        if($request->table == 'orders'){
            $orderDetail = DB::table('orders_detail')->where('order_id', $item->id)->get();
            foreach ($orderDetail as $key => $od) {
                $product = DB::table('products')->where('id', $od->product_id)->first();
                $orderDetail[$key]->thumbnail = $product->thumbnail;
                $orderDetail[$key]->url = $product->url;
            }
            $item->order_detail = $orderDetail;
        }
        if ($item) {
            return response()->json($item, 200);
        }
        return response()->json(array(
            'status' => 'error',
            'message' => 'Fail'
        ), 500);
    }
    public function updateItem(Request $request)
    {
        if ($request->setstatus == false) {
            $this->validateOfTable($request, $request->table);
        }
        foreach ($request->except(['table', 'id', 'setstatus']) as $key => $value) {
            
            $user = DB::table($request->table)->where('id', $request->id)->update([$key => $value]);
        }
        if ($request->table=="categories" || $request->table=="products"|| $request->table=="posts"){
            
            $user = DB::table($request->table)->where('id', $request->id)->update(['url' => changeTitle($request->title)]);
        }
        $user = DB::table($request->table)->where('id', $request->id)->update(['updated_at' => \Carbon\Carbon::now()]);
        if ($user) {
            return response()->json(true, Response::HTTP_OK);
        } else {
            return response()->json(array(
                'status' => 'error',
                'message' => 'Fail'
            ), 500);
        }
    }
    public function getItems(Request $request)
    {
        $items = DB::table($request->table)->get();
        if ($items) {
            return response()->json($items, 200);
        }
        return response()->json(array(
            'status' => 'error',
            'message' => 'Fail'
        ), 500);
    }
    public function getItemsUi(Request $request)
    {
        $items = DB::table($request->table)->where(['name'=>$request->name])->first();
        if ($items) {
            return response()->json($items, 200);
        }
        return response()->json(array(
            'status' => 'error',
            'message' => 'Fail'
        ), 500);
    }
    public function getItemsPro(Request $request)
    {
        $items = DB::table($request->table)->orWhere(['category_id_1'=>$request->cat_id,'category_id_2'=>$request->cat_id,'category_id_3'=>$request->cat_id])->get();
        if ($items) {
            return response()->json($items, 200);
        }
        return response()->json(array(
            'status' => 'error',
            'message' => 'Fail'
        ), 500);
    }
    public function deleteItem(Request $request)
    {
        $item = DB::table($request->table)->where('id', $request->id)->delete();
        return response()->json($item, Response::HTTP_OK);
        return response()->json(array(
            'status' => 'error',
            'message' => 'Fail'
        ), 500);
    }
    public function duplicateItem(Request $request)
    {
        $item = DB::table($request->table)->where('id', $request->id)->first();
        $keys = array();
        $values = array();
        $items = array();
        $table = $request->table;
        foreach ($item as $key => $value) {
            if ($key == 'id')
                continue;
            $items[$key] = $value;
        }
        $items['id'] = DB::table($request->table)->max('id')+1;
        $items['title'] = $items['title'] . ' coppy';
        if ((@$items['url'] == '') && ($request->table=="categories")){
            $items['url'] = changeTitle($items['title']);
        }
        $items['created_at'] = \Carbon\Carbon::now();
        $items['updated_at'] = \Carbon\Carbon::now();
        DB::table($table)->insert($items);
        if ($items)
            return response()->json($items, Response::HTTP_OK);
        else
            return response()->json(array(
                'status' => 'error',
                'message' => 'Fail'
            ), 500);
    }
    public function getUrl(Request $request)
    {
        $categories = DB::table('categories')->get();
        $products = DB::table('products')->get();
        $posts = DB::table('posts')->get();
        return response()->json(['categories'=>$categories,'products'=>$products,'posts'=>$posts], 200);
    
    }
    public function getItemsOfCat(Request $request)
    {   
        $items = null;
        if($request->cat_id != '')
          $items = DB::table($request->table)->orWhere(['category_id_1'=>$request->cat_id,'category_id_2'=>$request->cat_id,'category_id_3'=>$request->cat_id])->get();
        else
        $items = DB::table($request->table)->get();
        if ($items) {
            return response()->json($items, 200);
        }
    }
    public function getItemsIds(Request $request)
    {
        $items = DB::table('products')->whereIn('id', $request->ids)->get();
        if ($items) {
            return response()->json($items, 200);
        }
    }
    public function saveContact(Request $request){
        $keys = array();
        $values = array();
        $items = array();
        foreach ($request->except(['table', 'id']) as $key => $value) {
            // $keys[] = $key;
            // $values[] ="?";
            $items[$key] = $value;
        }
        if ((@$items['url'] == '') && ($request->table=="categories"  || $request->table=="products")){
            $items['url'] = changeTitle($items['title']);
        }
        $items['created_at'] = \Carbon\Carbon::now();
        $items['updated_at'] = \Carbon\Carbon::now();
        DB::table('contacts')->insert($items);
        return response()->json(true, Response::HTTP_OK);
    }
}
