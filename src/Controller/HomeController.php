<?php
/**
 * Created by PhpStorm.
 * User: stefano
 * Date: 22/07/18
 * Time: 00:39
 */

namespace App\Controller;


use App\Entity\Channel;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="homepage")
     */
    public function homepage(EntityManagerInterface $em)
    {
        $repository = $em->getRepository(Channel::class);
        $channels = $repository->findAll();

        return $this->render('home/homepage.html.twig', [
            'channels'  =>  $channels
        ]);
    }

}