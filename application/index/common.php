 <?php

    function arr_unique($arr2D){
        foreach ($arr2D as $v) {
            $v=join(',',$v);
            $temp[]=$v;
        }

        $temp=array_unique($temp);
        //  0 => 5,测试文章5,1469271904   1=> 4,测试文章4,1469176297
        foreach ($temp as $k => $v) {
            $temp[$k]=explode(',', $v);
        }

        return $temp;

    }