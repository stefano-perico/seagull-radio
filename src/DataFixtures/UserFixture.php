<?php

namespace App\DataFixtures;

use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoder;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class UserFixture extends Fixture
{
    private $passwordEncoder;

    public function __construct(UserPasswordEncoderInterface $passwordEncoder)
    {
        $this->passwordEncoder = $passwordEncoder;
    }

    public function load(ObjectManager $manager)
    {
        $user = new User();
        $user
            ->setEmail("user@example.com")
            ->setFirstName("user")
            ->setPassword($this->passwordEncoder->encodePassword($user, 'test'))
        ;

        $admin = new User();
        $admin
            ->setEmail("admin@example.com")
            ->setFirstName("admin")
            ->setPassword($this->passwordEncoder->encodePassword($admin, 'test'))
            ->setRoles(['ROLE_ADMIN'])
        ;

        $manager->persist($user);
        $manager->persist($admin);

        $manager->flush();
    }
}
