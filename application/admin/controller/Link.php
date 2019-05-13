<?php
namespace app\admin\controller;
class Link extends Base
{
    public function lst()
    {
    	$linkres = \think\Db::name('link')->paginate(3);
    	$this->assign('linkres',$linkres);
        return $this->fetch();

    }
     public function add()
    {
    	if (request()->isPost()) {
    		$data=[
    		     'title'=>input('title'),
    		     'url'=>input('url'),
    		     'desc'=>input('desc'),

    		];
    		$validate = \think\Loader::validate('Link');
    		if ($validate ->scene('edit') ->check($data)) {
    		   $db= \think\Db::name('link')->insert($data);
    		
    		   if ($db) {
    			   return $this->success('添加链接成功！','lst');
    		    }else{
    			   return $this->error('添加链接失败！');
    		    }   
    		}else{
    			$this->error( $validate->getError());
    		}
    		return;
    	}
        return $this->fetch();
    }
    public function edit(){
        if (request()->isPost()) {
            $validate = \think\Loader::validate('Link');
            if ($validate ->check(input('post.'))) {

                if ($db=\think\Db::name('link')->update(input('post.'))) {

                    return $this->success('修改链接成功','lst');

                }else{

                    return $this->error('修改链接成功');
                }
            }else{
                  $this->error( $validate->getError());
                }
           return;
        }
      $id=input('id');
      $links =db('link')->where('id',$id)->find();
      $this->assign('links',$links);
      return $this->fetch();

    }

    public function del(){
    	$id=input('id');
    	if (db('link')->delete($id)) {
    		return $this ->success('删除链接成功','lst');
    	}else{
    		return $this ->error('删除链接失败');
    	}
    }


}
