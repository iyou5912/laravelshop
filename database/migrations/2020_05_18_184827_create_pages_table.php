<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pages', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('order')->default(0);
            $table->string('tips')->nullable();
            $table->string('title')->nullable();
            $table->string('cover')->nullable();
            $table->text('content')->nullable();
            $table->text('text_a')->nullable();
            $table->text('text_b')->nullable();
            $table->text('text_c')->nullable();
            $table->text('text_d')->nullable();
            $table->text('text_e')->nullable();
            $table->text('text_f')->nullable();
            $table->text('text_g')->nullable();
            $table->text('text_h')->nullable();
            $table->text('text_i')->nullable();
            $table->text('text_j')->nullable();
            $table->text('text_k')->nullable();
            $table->text('text_l')->nullable();
            $table->text('text_m')->nullable();
            $table->text('text_n')->nullable();
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
        Schema::dropIfExists('pages');
    }
}
