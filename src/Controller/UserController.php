<?php

namespace Controller;

/**
 * Class UserController
 *
 * @package \Controller
 */
namespace Controller;


use Model\UserManager;
use Model\User;


class UserController extends AbstractController
{

//    public function __construct()
//    {
//        parent:: __construct();
//        if ($_SERVER['REQUEST_URI'] != '/login'){
//            $this->verifyUser();
//        }
//    }


    public function suscribeUser()
    {
        $errorRegister = [];


        if ($_SERVER['REQUEST_METHOD'] === 'POST') {

            $userManager = new UserManager($this->getPdo());

            if (strlen($_POST['pseudo']) < 2 || strlen($_POST['pseudo']) > 15)
            {
                $errorRegister['pseudo'] = "LE PSEUDO DOIT COMPORTER ENTRE 2 ET 15 CARACTERES";
            }
            // Vérifie que le pseudo qu'on envoi n'est pas en base de donnée
            if ($userManager->existUser($_POST['pseudo']))
            {
                $errorRegister['pseudo'] = "TROP TARD LE PSEUDO EST DEJA UTILISE.";
            }
            if ($_POST['password'] !== ($_POST['password_control']))
            {
                $errorRegister['password'] = "LES MOTS DE PASSE SAISIS NE SONT PAS IDENTIQUES.";
            }
            if (empty($errorRegister))
            {
                $newUser = new User;
                $newUser->setPseudo($_POST['pseudo']);
                $newUser->setPassword($_POST['password']);
                $id = $userManager->suscribe($newUser);
                // TODO Renvoyer vers le bonne page
                header('Location: /login');
            }

        }
        return $this->twig->render('signUp.html.twig', ["errorRegister" => $errorRegister]);

    }

    public function logUser()
    {
        // Si user connecter
        if (isset($_SESSION['user'])) {

            header('Location: /map');
            exit();
        }

        $errorLoginUser = "";

        if (!empty($_POST)) {

            $auth = new UserManager($this->getPdo());
            $user = $auth->loginUser($_POST['pseudo']);

            if ($user) {
                if (password_verify($_POST['password'], $user->getPassword())) {

                    $_SESSION['user'] = [
                        "pseudo" => $user->getPseudo(),
                        "password" => $user->getPassword(),
                        'message'=> 'VOUS ETES CONNECTE !',
                    ];

                    header('Location: /map');

                }else{
                    $errorLoginUser = 'IDENTIFIANTS INCORECTS ';

                }
            }
            else {
                $errorLoginUser = 'IDENTIFIANTS INCORECTS';
            }
        }

        return $this->twig->render('login.html.twig', ["errorLoginUser" => $errorLoginUser]);
    }


}
