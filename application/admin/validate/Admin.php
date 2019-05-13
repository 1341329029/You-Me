<?php
namespace app\admin\validate;

use think\Validate;

class Admin extends Validate
{
    protected $rule = [
        'username'  =>  'require|max:10|unique:admin',
        'password'  =>  'require|min:5',
    ];
    protected $message = [
      'username.require'  =>  '用户名不能为空',
      'username.max'  =>  '用户名不能多于十位',
      'username.unique'  =>  '用户名不能重复',
      'password.require'  =>  '密码不能为空',
      'password.min'  =>  '密码不能少于5位',

   ];

     protected $scene = [
        'edit'  =>  ['username'],
    ];


}
