<?php
namespace app\admin\model;

use think\Model;

class Login extends Model
{
 	public function login($username,$password){

     	$admin= \think\Db::name('admin')->where('username','=',$username)->find();
		if($admin){
		    		if($admin['password']==md5($password)){
		    			\think\Session::set('id',$admin['id']);
		    			\think\Session::set('username',$admin['username']);
		    			return 1;
		    		}else{
		    			return 2;
		    		}

		    	}else{
		    		return 3;
		    	}
 	}



}