<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $primaryKey = 'id';
    protected $table = "orders";
    public $timestamps = true;
    protected $guarded = [];

}
