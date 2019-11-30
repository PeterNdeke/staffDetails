<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use App\Staff;
use Faker\Generator as Faker;

$factory->define(App\Staff::class, function (Faker $faker) {
    return [
        'first_name' => $faker->name,
        'last_name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'position' => $faker->sentence(5),
        
    ];
});
