<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('posts');
        Schema::create('posts', function (Blueprint $table) {
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
            $table->integer('status')->default(0)->nullable();
            $table->integer('category_id')->nullable();
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

    }
}
