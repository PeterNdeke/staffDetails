<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Searchable\Searchable;
use Spatie\Searchable\SearchResult;

class Staff extends Model implements Searchable
{

    protected $guarded = [];


    public function getSearchResult(): SearchResult
    {
        $url = url('staff', $this->id);

        return new \Spatie\Searchable\SearchResult(
            $this,
            $this->first_name,
            $url
        );
    }
}
