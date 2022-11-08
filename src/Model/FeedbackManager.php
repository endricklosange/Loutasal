<?php

namespace App\Model;

class FeedbackManager extends AbstractManager
{
    public const TABLE = 'feedback';

    /**
     * Insert new item in database
     */
    public function selectFeedbackByRoomId(int $id)
    {
        // prepared request
        $statement = $this->pdo->prepare("SELECT feedback.* ,user.username FROM " . static::TABLE
        . " INNER JOIN `user` ON feedback.user_id = user.id WHERE feedback.room_id=:id");
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetchAll();
    }
}
