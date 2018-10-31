<?php
/**
 * Created by PhpStorm.
 * User: jefdc
 * Date: 30/10/2018
 * Time: 18:15
 */

namespace Model;


class AdresseManager extends AbstractManager
{
    /**
     *
     */
    const TABLE = 'adresse';

    /**
     *  Initializes this class.
     */
    public function __construct(\PDO $pdo)
    {
        parent::__construct(self::TABLE, $pdo);
    }

    public function delete(int $id): void
    {
        // prepared request
        $statement = $this->pdo->prepare("DELETE FROM $this->table WHERE id=:id");
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();
    }

}