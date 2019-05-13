<?php
namespace app\admin\validate;

use think\Validate;

class Link extends Validate
{
    protected $rule = [
        'title'  =>  'require|max:10|unique:link',
        'url'  =>  'require',
    ];
    protected $message = [
      'title.require'  =>  '链接标题不能为空',
      'title.max'  =>  '链接标题不能多于十位',
      'title.unique'  =>  '链接标题不能重复',
      'url.require'  =>  '链接地址不能为空',
   ];

}
