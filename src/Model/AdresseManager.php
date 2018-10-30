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

}