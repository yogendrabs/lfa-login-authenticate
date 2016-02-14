<?php

namespace App\Models;

use Illuminate\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\CanResetPassword as CanResetPasswordContract;

class Developer extends Model implements AuthenticatableContract, CanResetPasswordContract
{
	use Authenticatable, CanResetPassword;

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'developers';

	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $fillable = [
		'name',
		'email',
		'password',
		'image',
		'is_available',
		'del_flag'
	];

	public function biodata(){
		return $this->hasOne(Biodata::class);
	}

	public function education(){
		return $this->hasMany(Education::class);
	}

	public function skill(){
		return $this->hasOne(Skill::class);
	}

    public function experiences(){
        return $this->hasMany(Experience::class);
    }

    public function projects(){
        return $this->hasMany(Project::class);
    }

}