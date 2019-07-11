<?php

namespace App\DataFixtures;

use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;

class UserFixture extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $user = new User();
        $user
            ->setEmail("user@example.com")
            ->setFirstName("user")
        ;

        $admin = new User();
        $admin
            ->setEmail("admin@example.com")
            ->setFirstName("admin")
        ;

        $manager->persist($user);
        $manager->persist($admin);

        $manager->flush();
    }
}
