<?php

 use Illuminate\Http\Request;
 use Illuminate\Support\Facades\Route;
 use App\Http\Controllers\alunoController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

 Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
 });

 //Rotas do Aluno

 Route::get('aluno', 'alunoController@index');

 Route::post('aluno/criar', 'alunoController@create');

 Route::post('aluno/editar', 'alunoController@edit');

 Route::delete('aluno/apagar/{id}', 'alunoController@destroy');

 Route::get('aluno/visualizar/{id}', 'alunoController@visualizar');
 
 Route::get('aluno/buscar', 'alunoController@buscar');
 
 Route::get('aluno/buscar_avancada', 'alunoController@buscar_avancada');

 //Rotas de cursos
 
 Route::get('curso', 'cursosController@index');
 
 Route::post('curso/criar', 'cursosController@create');

 Route::post('curso/editar', 'cursosController@edit');
 
 Route::delete('curso/apagar/{id}', 'cursosController@destroy');

 Route::get('curso/visualizar/{id}', 'cursosController@visualizar');

  //Rotas de matricula
  
  Route::get('matricula', 'matriculaController@index');

  Route::post('matricula/criar', 'matriculaController@create');

  Route::post('matricula/editar', 'matriculaController@edit');

  Route::delete('matricula/apagar/{id}', 'matriculaController@destroy');

  Route::get('matricula/visualizar/{id}', 'matriculaController@visualizar');

