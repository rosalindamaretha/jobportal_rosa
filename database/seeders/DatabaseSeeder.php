<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        \App\Models\User::factory(10)->create();

        //\App\Models\Category::factory(5)->create();
        //\App\Models\JobType::factory(5)->create();

        //\App\Models\Job::factory(20)->create();
    }
}
