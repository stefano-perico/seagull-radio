<?php
/**
 * Created by PhpStorm.
 * User: stefano
 * Date: 22/07/18
 * Time: 00:39
 */

namespace App\Controller;


use App\Entity\Channel;
use App\Repository\ChannelRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="homepage")
     */
    public function homepage(ChannelRepository $channelRepository)
    {
        $channels = $channelRepository->findAll();
        shuffle($channels);

        return $this->render('home/homepage.html.twig', [
            'channels'  =>  $channels
        ]);
    }

}
