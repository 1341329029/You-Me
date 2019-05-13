<?php
namespace app\index\controller;
class Tags extends Base
{
    public function index()
    {
    	$tags=input('tags');
    	$map['a.keywords']  = ['like','%'.$tags.'%'];
    	$artres= \think\Db::name('article')->alias('a')->join('cate c','c.id = a.cateid','LEFT')->field('a.id,a.title,a.pic,a.time,a.desc,a.click,a.keywords,c.catename')->order('a.id desc')->where($map)->paginate(2);
    	$this->assign('artres',$artres);
        return $this->fetch('lst');
    }
}
