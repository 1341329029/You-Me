<?php
namespace app\admin\validate;

use think\Validate;

class Article extends Validate
{
    protected $rule = [
        'title'  =>  'require|max:100|unique:article',
        'keywords'  =>  'require|max:100|unique:article',
    ];
    protected $message = [
      'title.require'  =>  '标题名称不能为空',
      'title.max'  =>  '标题名称不能多于十位',
      'title.unique'  =>  '标题名称不能重复',
   ];


}
