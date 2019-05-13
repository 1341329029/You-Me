<?php
namespace app\index\controller;
class Guest extends Base
{
    public function index()
    {
       return $this->fetch('guest');
    }
}
