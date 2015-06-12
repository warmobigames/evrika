<?php

class IndexController extends ControllerBase
{

    public function indexAction()
    {

    }

    public function loginAction()
    {
        $this->cookies->set('key', 'qwerty', time() + 99999999);
    }
}

