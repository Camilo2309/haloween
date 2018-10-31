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
    public function __construct()
    {
        parent:: __construct();
        if ($_SERVER['REQUEST_URI'] != '/login'){
            $this->verifyUser();
        }
    }

    public function suscribeUser()
    {
        $errorRegister = [];


        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // appeler le manager
            $userManager = new UserManager($this->getPdo());

            if (strlen($_POST['pseudo']) < 2 || strlen($_POST['pseudo']) > 15)
            {
                $errorRegister['pseudo'] = "Le pseudo doit comporter entre 2 et 15 caractères";
            }
            // Vérifie que le pseudo qu'on envoi n'est pas en base de donnée
            if ($userManager->existUser($_POST['pseudo']))
            {
                $errorRegister['pseudo'] = "Trop tard le pseudo est déja utilisé.";
            }
            if ($_POST['password'] !== ($_POST['password_control']))
            {
                $errorRegister['password'] = "Les mots de passe saisis ne sont pas identiques.";
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
            //TODO Renvoyer vers l'index
            header('Location: /map');
            exit();
        }

        $errorLoginUser = "";

        if (!empty($_POST)) {

            // Appeler le manager
            $auth = new UserManager($this->getPdo());
            $user = $auth->loginUser($_POST['pseudo']);

            if ($user) {
                if (password_verify($_POST['password'], $user->getPassword())) {

                    $_SESSION['user'] = [
                        "pseudo" => $user->getPseudo(),
                        "password" => $user->getPassword(),
                        'message'=> 'Vous êtes connecté',
                    ];
                    // TODO Renvoyer vers le bonne page
                    header('Location: /map');
                }
            } else {
                $errorLoginUser = 'Identifiant incorrect';
            }


        }

//                }else
//                   {
//                    $errorLoginUser = 'Identifiants incorrects ';
//                    var_dump($errorLoginUser);
//
//                }
  //          }
//            else {
//                $errorLoginUser = 'Identifiants incorrects';
//            }
//        }
        return $this->twig->render('login.html.twig', ["errorLoginUser" => $errorLoginUser]);
    }

    public function logout()
    {
        session_start();
        session_destroy();
        header('Location: /login');
    }

}
