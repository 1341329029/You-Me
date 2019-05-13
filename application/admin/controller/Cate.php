<?php
namespace app\admin\controller;
class Cate extends Base
{
    public function lst()
    {
    	$cateres = \think\Db::name('cate')->order('id asc')->select();
    	$this->assign('cateres',$cateres);
        return $this->fetch();

    }
     public function add()
    {
    	if (request()->isPost()) {
    		$data=[
    		     'catename'=>input('catename'),
    		     'keywords'=>input('keywords'),
    		     'desc'=>input('desc'),
    		     'type'=>input('type')?input('type') :0,

    		];
    		$validate = \think\Loader::validate('Cate');
    		if ($validate ->scene('edit') ->check($data)) {
    		   $db= \think\Db::name('cate')->insert($data);
    		
    		   if ($db) {
    			   return $this->success('添加栏目成功！','lst');
    		    }else{
    			   return $this->error('添加栏目失败！');
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
            $data=[
            'id'=>input('id'),
            'catename'=>input('catename'),
            'keywords'=>input('keywords'),
            'desc'=>input('desc'),
            'type'=>input('type')?input('type') :0,

            ];
            $validate = \think\Loader::validate('Cate');
            if ($validate ->check($data)) {

                if ($db=\think\Db::name('cate')->update($data)) {

                    return $this->success('修改栏目成功','lst');

                }else{

                    return $this->error('修改栏目成功');
                }
            }else{
                  $this->error( $validate->getError());
                }
           return;
        }
      $id=input('id');
      $cates =db('cate')->where('id',$id)->find();
      $this->assign('cates',$cates);
      return $this->fetch();

    }

    public function del(){
    	$id=input('id');
    	if (db('cate')->delete($id)) {
    		return $this ->success('删除栏目成功','lst');
    	}else{
    		return $this ->error('删除栏目失败');
    	}
    }


}
