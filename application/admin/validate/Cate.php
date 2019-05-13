<?php
namespace app\admin\validate;

use think\Validate;

class Cate extends Validate
{
    protected $rule = [
        'catename'  =>  'require|max:10|unique:cate',
        'keywords'  =>  'require',
    ];
    protected $message = [
      'catename.require'  =>  '栏目名称不能为空',
      'catename.max'  =>  '栏目名称不能多于十位',
      'catename.unique'  =>  '栏目名称不能重复',
      'keywords.require'  =>  '关键字不能为空',
   ];

   protected $message = [
       'edit'  =>   ['catename'],
   ];


}
