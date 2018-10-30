<?php
/**
 * Created by PhpStorm.
 * User: jefdc
 * Date: 30/10/2018
 * Time: 18:34
 */

namespace Controller;


use Model\AdresseManager;

class AdresseController extends AbstractController
{

    public function indexAdresse()
    {
        $adresseManager = new AdresseManager($this->getPdo());
        $adresses = $adresseManager->selectAll();
        header('Content-Type: application/json');
        return json_encode($adresses);

    }

    public function show(int $id)
    {
        $adresseManager = new AdresseManager($this->getPdo());
        $adresse = $adresseManager->selectOneById($id);
        header('Content-Type: application/json');
        return json_encode($adresse);
    }

}