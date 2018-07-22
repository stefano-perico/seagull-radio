<?php
/**
 * Created by PhpStorm.
 * User: stefano
 * Date: 22/07/18
 * Time: 10:08
 */

namespace App\Controller;


use App\Entity\Channel;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ChannelAdminController extends AbstractController
{
    /**
     * @Route("/admin/channel/new")
     */
    public function new(EntityManagerInterface $em)
    {
        // TODO - create a form to add channels

        $channel = new Channel();
        $channel
            ->setName('Hotel Radio Paris')
            ->setWebsite('http://hotelradioparis.com/')
            ->setLocation('Paris')
            ->setLogo('Hotel Radio Paris.jpg')
            ->setLink('http://91.121.162.224:9111/stream')
        ;

        //$em->persist($channel);
        //$em->flush();

        return new Response('Ok');
    }

}