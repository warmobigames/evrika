<?php

use Phalcon\Mvc\Controller,
    Eureka\Models\Users;

class ControllerBase extends Controller
{
    public function initialize()
    {
        $key = $this->cookies->get('key')->getValue();
        if(!empty($key))
        {
            $user = Users::login($key);

            if($user)
            {
                $this->view->user = $user;
            }
        }
    }
}
