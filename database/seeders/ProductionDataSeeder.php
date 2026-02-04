<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\File;

class ProductionDataSeeder extends Seeder
{
    /**
     * Run the database seeds for production with demo data.
     *
     * @return void
     */
    public function run()
    {
        $this->command->info('Starting production data seeding...');
        
        // Check if data already exists to avoid duplicate seeding
        if (DB::table('users')->where('email', 'admin@admin.com')->exists()) {
            $this->command->info('Demo data already exists. Skipping seeding.');
            return;
        }

        // Disable foreign key checks temporarily (database-agnostic)
        $driver = DB::getDriverName();
        if ($driver === 'mysql') {
            DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        } elseif ($driver === 'pgsql') {
            DB::statement('SET CONSTRAINTS ALL DEFERRED;');
        }
        
        try {
            // Load the exported demo data
            $demoDataPath = base_path('demo_data_export.json');
            
            if (!File::exists($demoDataPath)) {
                $this->command->error('Demo data export file not found!');
                return;
            }
            
            $demoData = json_decode(File::get($demoDataPath), true);
            
            if (!$demoData) {
                $this->command->error('Failed to parse demo data!');
                return;
            }
            
            // Define the order of table seeding to respect foreign key constraints
            $seedOrder = [
                'users',
                'activations',
                'roles',
                'role_users',
                'settings',
                'languages',
                'language_meta',
                'countries',
                'states',
                'cities',
                'media_folders',
                'media_files',
                'pages',
                'categories',
                'tags',
                'posts',
                'post_categories',
                'post_tags',
                'menus',
                'menu_nodes',
                'menu_locations',
                'galleries',
                'testimonials',
                'teams',
                'faq_categories',
                'faqs',
                'jb_currencies',
                'jb_job_types',
                'jb_job_skills',
                'jb_job_shifts',
                'jb_job_experiences',
                'jb_language_levels',
                'jb_career_levels',
                'jb_functional_areas',
                'jb_categories',
                'jb_degree_levels',
                'jb_degree_types',
                'jb_major_subjects',
                'jb_packages',
                'jb_companies',
                'jb_accounts',
                'jb_jobs',
                'jb_jobs_categories',
                'jb_jobs_skills',
                'jb_jobs_types',
                'jb_tags',
                'jb_jobs_tags',
                'jb_account_experiences',
                'jb_account_educations',
                'slugs',
                'widgets',
                'dashboard_widgets',
                'meta_boxes',
            ];
            
            // Seed tables in order
            foreach ($seedOrder as $tableName) {
                if (isset($demoData[$tableName]) && Schema::hasTable($tableName)) {
                    $this->seedTable($tableName, $demoData[$tableName]);
                }
            }
            
            // Seed remaining tables not in the ordered list
            foreach ($demoData as $tableName => $tableData) {
                if (!in_array($tableName, $seedOrder) && Schema::hasTable($tableName)) {
                    $this->seedTable($tableName, $tableData);
                }
            }
            
            $this->command->info('Production demo data seeded successfully!');
            
        } catch (\Exception $e) {
            $this->command->error('Error seeding demo data: ' . $e->getMessage());
            throw $e;
        } finally {
            // Re-enable foreign key checks (database-agnostic)
            $driver = DB::getDriverName();
            if ($driver === 'mysql') {
                DB::statement('SET FOREIGN_KEY_CHECKS=1;');
            } elseif ($driver === 'pgsql') {
                DB::statement('SET CONSTRAINTS ALL IMMEDIATE;');
            }
        }
    }
    
    /**
     * Seed a specific table with data
     */
    private function seedTable($tableName, $tableData)
    {
        if (empty($tableData)) {
            return;
        }
        
        $this->command->info("Seeding table: {$tableName} ({" . count($tableData) . "} records)");
        
        try {
            // Clear existing data
            DB::table($tableName)->truncate();
            
            // Insert data in chunks to avoid memory issues
            $chunks = array_chunk($tableData, 100);
            
            foreach ($chunks as $chunk) {
                $insertData = [];
                
                foreach ($chunk as $row) {
                    $rowData = (array) $row;
                    
                    // Handle null values and ensure proper data types
                    foreach ($rowData as $key => $value) {
                        if ($value === 'NULL' || $value === '') {
                            $rowData[$key] = null;
                        }
                    }
                    
                    $insertData[] = $rowData;
                }
                
                if (!empty($insertData)) {
                    DB::table($tableName)->insert($insertData);
                }
            }
            
        } catch (\Exception $e) {
            $this->command->warn("Failed to seed table {$tableName}: " . $e->getMessage());
        }
    }
}