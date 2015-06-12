<?php

namespace Eureka\Models;

class Users extends \Phalcon\Mvc\Model
{
    public $id;
    
    public $username;
    
    public $key;
    
    public static function find($p = array())
    {
        return parent::find($p);
    }

    public static function findFirst($p = array())
    {
        return parent::findFirst($p);
    }

    public static function login($key)
    {
        $user = Users::findFirst('key = "'.$key.'"');
        return $user;
    }
    
}