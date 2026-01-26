<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Illuminate\Support\Facades\DB;

class LocationSeeder extends BaseSeeder
{
    public function run(): void
    {
        // Truncate existing location tables
        DB::table('cities')->truncate();
        DB::table('states')->truncate();
        DB::table('countries')->truncate();

        // Create countries
        $countries = [
            [
                'id' => 1,
                'name' => 'France',
                'nationality' => 'French',
                'order' => 0,
                'is_default' => 0,
                'status' => 'published',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id' => 2,
                'name' => 'England',
                'nationality' => 'English',
                'order' => 0,
                'is_default' => 0,
                'status' => 'published',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id' => 3,
                'name' => 'USA',
                'nationality' => 'American',
                'order' => 0,
                'is_default' => 0,
                'status' => 'published',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id' => 4,
                'name' => 'Holland',
                'nationality' => 'Dutch',
                'order' => 0,
                'is_default' => 0,
                'status' => 'published',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id' => 5,
                'name' => 'Denmark',
                'nationality' => 'Danish',
                'order' => 0,
                'is_default' => 0,
                'status' => 'published',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id' => 6,
                'name' => 'Germany',
                'nationality' => 'German',
                'order' => 0,
                'is_default' => 0,
                'status' => 'published',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];

        DB::table('countries')->insert($countries);

        // Create states
        $states = [
            [
                'id' => 1,
                'name' => 'Ile-de-France',
                'abbreviation' => 'IDF',
                'country_id' => 1,
                'order' => 0,
                'is_default' => 0,
                'status' => 'published',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id' => 2,
                'name' => 'Greater London',
                'abbreviation' => 'GL',
                'country_id' => 2,
                'order' => 0,
                'is_default' => 0,
                'status' => 'published',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id' => 3,
                'name' => 'New York',
                'abbreviation' => 'NY',
                'country_id' => 3,
                'order' => 0,
                'is_default' => 0,
                'status' => 'published',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id' => 4,
                'name' => 'North Holland',
                'abbreviation' => 'NH',
                'country_id' => 4,
                'order' => 0,
                'is_default' => 0,
                'status' => 'published',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id' => 5,
                'name' => 'Capital Region',
                'abbreviation' => 'CR',
                'country_id' => 5,
                'order' => 0,
                'is_default' => 0,
                'status' => 'published',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id' => 6,
                'name' => 'Berlin',
                'abbreviation' => 'BE',
                'country_id' => 6,
                'order' => 0,
                'is_default' => 0,
                'status' => 'published',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];

        DB::table('states')->insert($states);

        // Create cities
        $cities = [
            [
                'id' => 1,
                'name' => 'Paris',
                'state_id' => 1,
                'country_id' => 1,
                'record_id' => null,
                'order' => 0,
                'is_default' => 0,
                'status' => 'published',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id' => 2,
                'name' => 'London',
                'state_id' => 2,
                'country_id' => 2,
                'record_id' => null,
                'order' => 0,
                'is_default' => 0,
                'status' => 'published',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id' => 3,
                'name' => 'New York',
                'state_id' => 3,
                'country_id' => 3,
                'record_id' => null,
                'order' => 0,
                'is_default' => 0,
                'status' => 'published',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id' => 4,
                'name' => 'Copenhagen',
                'state_id' => 5,
                'country_id' => 5,
                'record_id' => null,
                'order' => 0,
                'is_default' => 0,
                'status' => 'published',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id' => 5,
                'name' => 'Berlin',
                'state_id' => 6,
                'country_id' => 6,
                'record_id' => null,
                'order' => 0,
                'is_default' => 0,
                'status' => 'published',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];

        DB::table('cities')->insert($cities);

        // Update companies to use these locations
        DB::table('jb_companies')
            ->where('id', 1)
            ->update([
                'country_id' => 3, // USA
                'state_id' => 3,   // New York
                'city_id' => 3     // New York
            ]);

        DB::table('jb_companies')
            ->where('id', 2)
            ->update([
                'country_id' => 2, // England
                'state_id' => 2,   // Greater London
                'city_id' => 2     // London
            ]);

        DB::table('jb_companies')
            ->where('id', 3)
            ->update([
                'country_id' => 1, // France
                'state_id' => 1,   // Ile-de-France
                'city_id' => 1     // Paris
            ]);

        DB::table('jb_companies')
            ->where('id', 4)
            ->update([
                'country_id' => 5, // Denmark
                'state_id' => 5,   // Capital Region
                'city_id' => 4     // Copenhagen
            ]);

        DB::table('jb_companies')
            ->where('id', 5)
            ->update([
                'country_id' => 6, // Germany
                'state_id' => 6,   // Berlin
                'city_id' => 5     // Berlin
            ]);

        DB::table('jb_companies')
            ->where('id', 6)
            ->update([
                'country_id' => 4, // Holland
                'state_id' => 4,   // North Holland
                'city_id' => 3     // New York (as per reference)
            ]);

        echo "Location data seeded successfully!\n";
    }
}