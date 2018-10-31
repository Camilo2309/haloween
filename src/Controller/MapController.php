<?php

namespace Controller;

use Controller\AbstractController;
use Model\AdresseManager;
use Model\BonbonManager;

class MapController extends AbstractController {

    public function show () {

        $adress = new AdresseManager($this->getPdo());
        $allAdress = $adress->selectAll();

        $bonbons = new BonbonManager($this->getPdo());
        $allBonbons = $bonbons->selectAll();


        return $this->twig->render('Map/show.html.twig', ['adresses' => $allAdress, 'bonbons' => $allBonbons]);
    }

}