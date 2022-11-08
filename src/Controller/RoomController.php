<?php

namespace App\Controller;

use App\Model\FeedbackManager;
use App\Model\RoomManager;

class RoomController extends AbstractController
{
    /**
     * Show informations for a specific item
     */
    public function show(int $id): string
    {
        $roomsManager = new RoomManager();
        $feedbackManager = new FeedbackManager();
        $room = $roomsManager->show($id);
        $feedback = $feedbackManager->selectFeedbackByRoomId($id);
        $roomsCity = $roomsManager->selectAllByCity($room['city']);
        return $this->twig->render('Room/show.html.twig', ['room' => $room, 'feedback'
        => $feedback, 'roomsCity' => $roomsCity]);
    }


    /**
     * Edit a specific item
     */
    public function edit(int $id): string
    {
        $roomManager = new RoomManager();
        $item = $roomManager->selectOneById($id);

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // clean $_POST data
            $item = array_map('trim', $_POST);

            // TODO validations (length, format...)

            // if validation is ok, update and redirection
            $roomManager->update($item);
            header('Location: /item/show/' . $id);
        }

        return $this->twig->render('Item/edit.html.twig', [
            'item' => $item,
        ]);
    }


    /**
     * Add a new item
     */
    public function add(): string
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // clean $_POST data
            $item = array_map('trim', $_POST);

            // TODO validations (length, format...)

            // if validation is ok, insert and redirection
            $roomManager = new RoomManager();
            $id = $roomManager->insert($item);
            header('Location:/item/show/' . $id);
        }

        return $this->twig->render('Item/add.html.twig');
    }


    /**
     * Delete a specific item
     */
    public function delete(int $id)
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $roomManager = new RoomManager();
            $roomManager->delete($id);
            header('Location:/item/index');
        }
    }
}
