<?php
/**
 * Created by PhpStorm.
 * User: jefdc
 * Date: 30/10/2018
 * Time: 16:49
 */

namespace Model;


class BonbonManager extends AbstractManager
{
    /**
     *
     */
    const TABLE = 'bonbon';

    /**
     *  Initializes this class.
     */
    public function __construct(\PDO $pdo)
    {
        parent::__construct(self::TABLE, $pdo);
    }

}