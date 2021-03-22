<?php

namespace Database\Factories;

use App\Models\Profile;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Support\Str;

class ProfileFactory extends Factory
{

    use WithFaker;
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Profile::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $name = Str::random(8);
        return [
            'fullname' => $this->faker->name,
            'username' => $name,
            'developername' => $name,
            'address' => $this->faker->sentence,
            'city' => $this->faker->city,
            'state' => $this->faker->state,
            'zip' => rand(100000, 999999),
        ];
    }
}
