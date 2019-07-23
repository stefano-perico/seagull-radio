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
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @IsGranted("ROLE_ADMIN_CHANNEL")
 */
class ChannelAdminController extends AbstractController
{
    /**
     * @Route("/admin/channel/new")
     */
    public function new(EntityManagerInterface $em)
    {
        // TODO - create a form to add channels

        return new Response('Ok');
    }

}