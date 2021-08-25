<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
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
            $table->integer('status')->default(1);
            $table->integer('popular_1')->default(0);
            $table->integer('popular_2')->default(0);
            $table->integer('popular_3')->default(0);
            $table->text('images')->nullable();
            $table->integer('category_id_1')->nullable();
            $table->integer('category_id_2')->nullable();
            $table->integer('category_id_3')->nullable();
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
        Schema::dropIfExists('products');
    }
}
