<?php

namespace App\Controller;

use App\Model\UserManager;

class RegisterController extends AbstractController
{
    public function index()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $data = array_map('trim', $_POST);
            $email = $data['email'];
            $password = password_hash($data['password'], PASSWORD_DEFAULT);
            $userManager = new UserManager();
            $userManager->insert($email, $password);
        }
        return $this->twig->render('Register/index.html.twig');
    }
}
