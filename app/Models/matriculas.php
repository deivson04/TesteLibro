<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class matriculas extends Model
{
    protected $fillable = ['id','aluno_id','cursos_id'];
}
