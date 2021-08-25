<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
    protected $primaryKey = 'id';
    protected $table = "orders_detail";
    public $timestamps = true;
    protected $guarded = [];
}
