<?php
namespace app\admin\controller;
class Admin extends Base
{
    public function lst()
    {
    	$adminres = \think\Db::name('admin')->paginate(2);
    	$this->assign('adminres',$adminres);
        return $this->fetch();

    }
     public function add()
    {
    	if (request()->isPost()) {
    		$data=[
    		     'username'=>input('username'),
    		     'password'=>MD5 (input('password')),
    		];
    		$validate = \think\Loader::validate('Admin');
    		if ($validate->check($data)) {
    		   $db= \think\Db::name('Admin')->insert($data);
    		
    		   if ($db) {
    			   return $this->success('添加管理员成功！','lst');
    		    }else{
    			   return $this->error('添加管理员失败！');
    		    }   
    		}else{
    			$this->error( $validate->getError());
    		}
    		return;
    	}
        return $this->fetch();
    }
    public function edit(){
         $id=input('id');
         $admins =db('admin')->where('id',$id)->find();
         $this->assign('admins',$admins);
         $password=$admins['password'];
        if (request()->isPost()) {
            $data=[
            'id'=>input('id'),
            'username'=>input('username'),
            'password'=>input('password') ? md5(input('password')) : $password ,

            ];
            $validate = \think\Loader::validate('Admin');
            if ($validate ->scene('edit')->check($data)) {

                if ($db=\think\Db::name('admin')->update($data)) {

                    return $this->success('修改管理员成功','lst');

                }else{

                    return $this->error('修改管理员成功');
                }
            }else{
                  $this->error( $validate->getError());
                }
           return;
        }
     
      return $this->fetch();

    }

    public function del(){
    	$id=input('id');
        if($id=="1"){
            return $this ->error('初始化管理员禁止删除');
        }
    	if (db('admin')->delete($id)) {
    		return $this ->success('删除管理员成功','lst');
    	}else{
    		return $this ->error('删除管理员失败');
    	}
    }


}
