<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 11/10/17
 * Time: 16:07
 * PHP version 7
 */

namespace Controller;

use Model\Enigmes;
use Model\EnigmesManager;

/**
 * Class ItemController
 *
 */
class EnigmesController extends AbstractController
{


    /**
     * Display item listing
     *
     * @return string
     * @throws \Twig_Error_Loader
     * @throws \Twig_Error_Runtime
     * @throws \Twig_Error_Syntax
     */
    public function index()
    {
        $enigmeManager = new EnigmesManager($this->getPdo());
        $enigmes = $enigmeManager->selectAll();

        return $this->twig->render('Enigme/index.html.twig', ['enigmes' => $enigmes]);
    }


    /**
     * Display item informations specified by $id
     *
     * @param int $id
     * @return string
     * @throws \Twig_Error_Loader
     * @throws \Twig_Error_Runtime
     * @throws \Twig_Error_Syntax
     */
    public function show(int $id)
    {
        if($_SERVER["REQUEST_METHOD"] === "POST"){

            $enigmeManager = new EnigmesManager($this->getPdo());
            $enigme = $enigmeManager->selectOneById($_POST['id']);

            if($_POST["response"] === $enigme["faux"]){
                echo "La réponse est fausse";
            } else {
                echo "Votre réponse est vraie !";
            }

        }

        $enigmeManager = new EnigmesManager($this->getPdo());
        $enigme = $enigmeManager->selectOneById($id);


        return $this->twig->render('Enigme/show.html.twig', ['enigme' => $enigme]);
    }


    /**
     * Display item edition page specified by $id
     *
     * @param int $id
     * @return string
     * @throws \Twig_Error_Loader
     * @throws \Twig_Error_Runtime
     * @throws \Twig_Error_Syntax
     */
    public function edit(int $id): string
    {
        $enigmeManager = new EnigmesManager($this->getPdo());
        $enigme = $enigmeManager->selectOneById($id);

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $enigme->setTitle($_POST['question']);
            $enigmeManager->update($enigme);
        }

        return $this->twig->render('Enigme/edit.html.twig', ['enigme' => $enigme]);
    }


    /**
     * Display item creation page
     *
     * @return string
     * @throws \Twig_Error_Loader
     * @throws \Twig_Error_Runtime
     * @throws \Twig_Error_Syntax
     */
    public function add()
    {

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $enigmeManager = new EnigmesManager($this->getPdo());
            $enigme = new Enigmes();
            $enigme->setQuestion($_POST['question']);
            $id = $enigmeManager->insert($enigme);
            header('Location:/enigme/' . $id);
        }

        return $this->twig->render('Enigme/add.html.twig');
    }


    /**
     * Handle item deletion
     *
     * @param int $id
     */
    public function delete(int $id)
    {
        $enigmeManager = new EnigmesManager($this->getPdo());
        $enigmeManager->delete($id);
        header('Location:/');
    }
}
