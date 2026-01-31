<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('jb_reviews', function (Blueprint $table) {
            if (!Schema::hasColumn('jb_reviews', 'reviewable_id')) {
                $table->unsignedBigInteger('reviewable_id')->nullable();
            }
            if (!Schema::hasColumn('jb_reviews', 'reviewable_type')) {
                $table->string('reviewable_type')->nullable();
            }
            if (!Schema::hasColumn('jb_reviews', 'created_by_id')) {
                $table->unsignedBigInteger('created_by_id')->nullable();
            }
            if (!Schema::hasColumn('jb_reviews', 'created_by_type')) {
                $table->string('created_by_type')->nullable();
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('jb_reviews', function (Blueprint $table) {
            if (Schema::hasColumn('jb_reviews', 'reviewable_id')) {
                $table->dropColumn('reviewable_id');
            }
            if (Schema::hasColumn('jb_reviews', 'reviewable_type')) {
                $table->dropColumn('reviewable_type');
            }
            if (Schema::hasColumn('jb_reviews', 'created_by_id')) {
                $table->dropColumn('created_by_id');
            }
            if (Schema::hasColumn('jb_reviews', 'created_by_type')) {
                $table->dropColumn('created_by_type');
            }
        });
    }
};
