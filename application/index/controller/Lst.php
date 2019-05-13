<?php
namespace app\index\controller;
class Lst extends Base
{
    public function index()
    {
    	$artres= \think\Db::name('article')->order('id desc')->where('cateid','=',input('cateid'))->paginate(2);
    	$cates= \think\Db::name('cate')->field('catename')->find(input('cateid'));
    	$catename=$cates['catename'];
    	$this->assign('artres',$artres);
    	$this->assign('catename',$catename);
       return $this->fetch('lst');
    }
}
