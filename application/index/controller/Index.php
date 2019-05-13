<?php
namespace app\index\controller;
class Index extends Base
{
    public function index()
    {
    	$artres= \think\Db::name('article')->alias('a')->join('cate c','c.id = a.cateid','LEFT')->field('a.id,a.title,a.pic,a.time,a.desc,a.click,a.keywords,c.catename')->order('a.id desc')->paginate(2);
    	$this->assign('artres',$artres);
        return $this->fetch();
       
    }
}
