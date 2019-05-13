<?php
namespace app\admin\controller;
use think\Controller;
class Base extends Controller
{
   public function _initialize()
   {
        if(!session('id')){
         $this->error('请先登录系统',url('Login/index'));
        }else{

           // $this->$redirect(url('Login/index'));
        }
    }
  

}
