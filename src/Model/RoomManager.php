<?php

namespace App\Model;

class RoomManager extends AbstractManager
{
    public const TABLE = 'room';

    /**
     * Insert new item in database
     */
    public function selectAllRoom(string $orderBy = 'price', string $direction = 'ASC'): array
    {
        $query = "SELECT * FROM `slots` INNER JOIN room ON slots.room_id =room.id;";
        if ($orderBy) {
            $query .= ' ORDER BY ' . $orderBy . ' ' . $direction;
        }
        return $this->pdo->query($query)->fetchAll();
    }
    public function show(int $id)
    {
        // prepared request
        $statement = $this->pdo->prepare("SELECT room.*, slots.arrival_date,
        slots.departure_date,slots.price,slots.status FROM " .
         static::TABLE . " JOIN `slots` WHERE room.id=:id");
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetch();
    }
    public function selectAllByCity(string $city): array
    {
        $query = "SELECT * FROM " . static::TABLE . " WHERE city='" . $city . "' LIMIT 4";
        return $this->pdo->query($query)->fetchAll();
    }
    /**
     * Update item in database
     */
    public function update(array $item): bool
    {
        $statement = $this->pdo->prepare("UPDATE " . self::TABLE . " SET `title` = :title WHERE id=:id");
        $statement->bindValue('id', $item['id'], \PDO::PARAM_INT);
        $statement->bindValue('title', $item['title'], \PDO::PARAM_STR);

        return $statement->execute();
    }
    public function insert(array $item): int
    {
        $statement = $this->pdo->prepare("INSERT INTO " . self::TABLE . " (`title`) VALUES (:title)");
        $statement->bindValue('title', $item['title'], \PDO::PARAM_STR);

        $statement->execute();
        return (int)$this->pdo->lastInsertId();
    }
}
