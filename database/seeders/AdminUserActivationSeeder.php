<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class AdminUserActivationSeeder extends Seeder
{
    /**
     * Run the database seeds to ensure admin user is activated.
     *
     * @return void
     */
    public function run()
    {
        // First, ensure the admin user exists
        $adminUser = DB::table('users')->where('email', 'admin@admin.com')->first();
        
        if (!$adminUser) {
            // Create admin user if it doesn't exist
            $userId = DB::table('users')->insertGetId([
                'email' => 'admin@admin.com',
                'username' => 'admin',
                'password' => Hash::make('admin123'),
                'first_name' => 'Admin',
                'last_name' => 'User',
                'email_verified_at' => now(),
                'super_user' => 1,
                'manage_supers' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        } else {
            $userId = $adminUser->id;
            
            // Update password to ensure it's correct
            DB::table('users')
                ->where('email', 'admin@admin.com')
                ->update([
                    'password' => Hash::make('admin123'),
                    'super_user' => 1,
                    'manage_supers' => 1,
                    'email_verified_at' => now(),
                    'updated_at' => now()
                ]);
        }

        // Check if activation record exists for this user
        $activationExists = DB::table('activations')->where('user_id', $userId)->first();
        
        if (!$activationExists) {
            // Create activation record for Botble CMS
            DB::table('activations')->insert([
                'user_id' => $userId,
                'code' => bin2hex(random_bytes(16)), // Generate random activation code
                'completed' => 1, // Mark as completed/activated
                'completed_at' => now(),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        } else {
            // Update existing activation to ensure it's completed
            DB::table('activations')
                ->where('user_id', $userId)
                ->update([
                    'completed' => 1,
                    'completed_at' => now(),
                    'updated_at' => now(),
                ]);
        }

        $this->command->info('Admin user has been activated successfully!');
    }
}