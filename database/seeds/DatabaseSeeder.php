<?php

use App\Models\Admin;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::table('admins')->insert([
            [
                'name' => 'Admin',
                'email' => 'hieu016286@gmail.com',
                'password' => Hash::make('1qz2MxCid'),
                'phone' => '0328698912',
                'class' => 'D13CNPM4',
                'address' => 'TP.HN',
                'level' => Admin::LEVEL_ADMIN,
                'avatar' => '2022-11-21__a.png'
            ],
            [
                'name' => 'Staff',
                'email' => 'staff@gmail.com',
                'password' => Hash::make('12345678'),
                'phone' => '0333333333',
                'class' => 'D13CNPM4',
                'address' => 'TP.HN',
                'level' => Admin::LEVEL_STAFF,
                'avatar' => null
            ]
        ]);
        DB::table('users')->insert([
            [
                'name' => 'user',
                'email' => 'user@gmail.com',
                'email_verified_at' => '2021-05-19 14:38:54',
                'password' => Hash::make('12345678'),
                'created_at' => '2022-11-21 01:55:19',
                'updated_at' => '2022-11-21 01:55:19',
                'google_id' => '102842857868709120320'
            ]
        ]);

    }
}
