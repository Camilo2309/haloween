<?php
/**
 * Created by PhpStorm.
 * User: bobbywcs
 * Date: 31/10/18
 * Time: 03:57
 */

namespace Model;

class MapManager extends AbstractManager
{

    const TABLE = 'bonbondex';

    public function __construct(\PDO $pdo)
    {
        parent::__construct(self::TABLE, $pdo);
    }

    public function addbonbonOnDatabase(array $values)
    {
        $statment = $this->pdo->prepare("INSERT INTO bonbondex SET bonbon_name = ?, bonbon_date = NOW(), bonbon_pos_lat = ?, bonbon_pos_lng = ?");
        $statment->execute([
            //
        ]);
        echo "A bien été ajouté !";
    }


}