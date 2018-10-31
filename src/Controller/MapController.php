<?php

namespace Controller;

use Controller\AbstractController;
use Model\AdresseManager;
use Model\BonbonManager;
use Model\EnigmesManager;

class MapController extends AbstractController {

    private $errors = [];

    public function show () {


        if($_SERVER["REQUEST_METHOD"] === "POST"){

            $enigmeManager = new EnigmesManager($this->getPdo());
            $enigme = $enigmeManager->selectOneById($_POST['id']);

            if($_POST["response"] === $enigme["faux"]){
                $this->errors['not_valid'] = "La réponse est pas valide !";
            } else {
                $this->errors['valid'] = "La réponse est valide BRAVO !";

                /* AJOUT DU BONBON DANS LA BASE DE L'utilisateur en connexion */

                $deletedAdress = new AdresseManager($this->getPdo());
                $deletedAdress->delete($_POST['marker_id']);
            }

        }

        $adress = new AdresseManager($this->getPdo());
        $allAdress = $adress->selectAll();

        $bonbons = new BonbonManager($this->getPdo());
        $allBonbons = $bonbons->selectAll();


        $enigmes = new EnigmesManager($this->getPdo());
        $allEnigmes = count($enigmes->selectAll());
        $randValue = rand(1, $allEnigmes);

        $enigmesById = $enigmes->selectOneById($randValue);


        return $this->twig->render('Map/show.html.twig', [
            'adresses' => $allAdress,
            'bonbons' => $allBonbons,
            'enigme' => $enigmesById,
            'errors' => $this->errors,
        ]);
    }

}