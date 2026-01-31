<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // Core system seeders first
        $this->call(SettingSeeder::class);
        $this->call(ThemeOptionSeeder::class);
        $this->call(PageSeeder::class);
        $this->call(HomePageSeeder::class);
        $this->call(WidgetSeeder::class);
        
        // Location and job-related seeders
        $this->call(LocationSeeder::class);
        $this->call(JobCategorySeeder::class);
        $this->call(JobTypeSeeder::class);
        $this->call(JobShiftSeeder::class);
        $this->call(JobExperienceSeeder::class);
        $this->call(JobSkillSeeder::class);
        $this->call(CareerLevelSeeder::class);
        $this->call(DegreeLevelSeeder::class);
        $this->call(DegreeTypeSeeder::class);
        $this->call(FunctionalAreaSeeder::class);
        $this->call(LanguageLevelSeeder::class);
        
        // Content seeders (companies and accounts before jobs)
        $this->call(CompanySeeder::class);
        $this->call(AccountSeeder::class);
        $this->call(JobSeeder::class);
        $this->call(JobApplicationSeeder::class);
        $this->call(PackageSeeder::class);
        
        // Menu seeder after jobs are created
        $this->call(MenuSeeder::class);
        
        // Other content seeders
        $this->call(BlogSeeder::class);
        $this->call(GallerySeeder::class);
        $this->call(TeamSeeder::class);
        $this->call(TestimonialSeeder::class);
        $this->call(ReviewSeeder::class);
        $this->call(FaqSeeder::class);
        $this->call(ContactSeeder::class);
        
        // Admin user activation (should be last)
        $this->call(AdminUserActivationSeeder::class);
    }
}