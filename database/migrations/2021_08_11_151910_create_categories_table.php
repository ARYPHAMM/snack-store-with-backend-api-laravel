<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->id();
            $table->text('title')->nullable();
            $table->text('description')->nullable();
            $table->text('content')->nullable();
            $table->text('thumbnail')->nullable();
            $table->text('url')->nullable();
            $table->text('title_seo')->nullable();
            $table->text('keyword_seo')->nullable();
            $table->text('description_seo')->nullable();
            $table->text('h1_seo')->nullable();
            $table->text('h2_seo')->nullable();
            $table->text('h3_seo')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('categories');
    }
}
