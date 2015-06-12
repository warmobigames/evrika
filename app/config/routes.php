<?php
/**
 * Created by PhpStorm.
 * User: Ринат
 * Date: 12.06.15
 * Time: 4:54
 */

$router = new \Phalcon\Mvc\Router(false);

$router->add(
    "/",
    array(
        "controller" => "Index",
        "action"     => "index",
    )
)->setName('index');

$router->add(
    "/login",
    array(
        "controller" => "Index",
        "action"     => "login",
    )
)->setName('login');

return $router;