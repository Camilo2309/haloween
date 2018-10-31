<?php

namespace Model;



class UserManager extends AbstractManager
{
    const TABLE = 'user';

    public function __construct(\PDO $pdo)
    {
        parent::__construct(self::TABLE, $pdo);
    }


    public function suscribe(User $user)
    {
        $addUser = $this->pdo->prepare("INSERT INTO $this->table (pseudo, password) VALUES (:pseudo, :password)");
        $addUser->bindValue(':pseudo', $_POST['pseudo'], \PDO::PARAM_STR);
        $addUser->bindValue(':password', password_hash($user->getPassword(), PASSWORD_DEFAULT), \PDO::PARAM_STR);
      //  $addUser->bindValue(':password', $_POST['password'], \PDO::PARAM_STR);
        $addUser->execute();
        return $this->pdo->lastInsertId();
    }

    public function existUser($pseudo) {
        $query = $this->pdo->prepare("SELECT * FROM $this->table WHERE pseudo = :pseudo");
        $query->execute(array(':pseudo' => $pseudo));
        $query->setFetchMode(\PDO::FETCH_CLASS, 'Model\User');
        $res = $query->fetch();
        return $res;
    }

    public function loginUser($pseudo)
    {
        $reqUser = $this->pdo->prepare("SELECT * FROM $this->table WHERE pseudo = :pseudo");
        $reqUser->execute(array(':pseudo' => $pseudo));
        $reqUser->setFetchMode(\PDO::FETCH_CLASS, 'Model\User');
        $res =  $reqUser->fetch();
        return $res;
    }

}
