<?php
namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
class AuthController extends Controller
{
  public function register(Request $request)
  {
    $this->validate($request, [
      'email' => 'required|email|unique:users',
      'password' => 'required|min:6',
      'fullname' => 'required',
      'gender' => 'required',
      'address' => 'required|min:12',
      'birthday' => 'required',
    ]);
    
    $user = User::create([
      'fullname' => $request->fullname,
      'email' => $request->email,
      'address' => $request->address,
      'password' => Hash::make($request->password),
      'birthday' => $request->birthday,
      'gender' => $request->gender,
    ]);
    return response()->json(Response::HTTP_OK);
  }
  public function login(Request $request)
  {
    $request->validate([
      'email' => 'email|required',
      'password' => 'required'
    ]);
    $credentials = request(['email', 'password']);
    if (!Auth::attempt($credentials)) {
      return response()->json([
        'status_code' => 500,
        'message' => 'Unauthorized'
      ]);
    }
    $user = User::where('email', $request->email)->first();
    if (!Hash::check($request->password, $user->password, [])) {
      throw new \Exception('Error in Login');
    }
    $tokenResult = $user->createToken('authToken')->plainTextToken;
    return response()->json($tokenResult);
  }
}
