<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\matriculas;

class matriculaController extends Controller
{
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return matriculas::all();
    }

     /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        
        if($request->cursos_id && $request->aluno_id){
        
            $nova_matricula = new matriculas;
            
            $nova_matricula->cursos_id = $request->cursos_id;
            $nova_matricula->aluno_id = $request->aluno_id;         
            if($nova_matricula->save()){
                echo "Matricula cadastrada com sucesso";
            }else{
                echo "Não foi possivel cadastrar a matricula";
            }
        }
        else{
            echo "Necessario informar o id do curso e o id do aluno para criação da matricula";
        }
    }

     /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request)
    {
        $nova_matricula = matriculas::find($request->id);
            
        $nova_matricula->cursos_id = $request->cursos_id; 
        $nova_matricula->aluno_id = $request->aluno_id;
        $nova_matricula->save();
    }

      /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        matriculas::findOrFail($id)->delete();
    }
   
    public function visualizar($id)
    {
        return matriculas::find($id);
        
    }
















}
