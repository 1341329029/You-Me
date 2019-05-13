<?php
namespace app\index\controller;
class Article extends Base
{
    public function index()
    {
    	$id=input('artid');
    	db('article')->where('id', $id)->setInc('click');
    	$join = [
      			['cate c','c.id=a.cateid','LEFT'],
     			
  		 ];
        $field='a.id,a.title,a.pic,a.time,a.content,a.click,a.keywords,a.cateid,c.catename';
    	$arts=\think\Db::name('article')->alias('a')->join($join)->field($field)->find($id);
    	$prev= \think\Db::name('article')->where('id','<',$id)->where('cateid','=',$arts['cateid'])->order('id desc')->limit(1)->value('id');
    	$next= \think\Db::name('article')->where('id','>',$id)->where('cateid','=',$arts['cateid'])->order('id asc')->limit(1)->value('id');
    	$ralateres=$this->ralate($arts['keywords']);
    	$this->assign('arts',$arts);
    	$this->assign('prev',$prev);
    	$this->assign('next',$next);
    	$this->assign('ralateres',$ralateres);
       return $this->fetch('article');
    }
    public function ralate($keywords){
    	$arr=explode(',', $keywords);
    	// var_dump($arr); die;
    	static $ralateres=array();
    	foreach ($arr as $k => $v) {
    		$map['keywords']  = ['like','%'.$v.'%'];
    		$artres= \think\Db::name('article')->order('id desc')->where($map)->limit(10)->field('id,title,time')->select();
    		$ralateres=array_merge($ralateres,$artres);
    		$ralateres=arr_unique($ralateres);
    	}
    	return $ralateres;
    	
    }
}
