<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\cursos;

class cursosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return cursos::all();
    }
      
    
    public function create(Request $request)
    {        
        if($request->titulo){
        
            $novo = new cursos;
            
            $novo->titulo = $request->titulo; 
            $novo->descricao = $request->descricao;
            $novo->save();
        }
        else{
            echo "Necessario que tenha o titulo do curso.";
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
        $novo = cursos::find($request->id);
            
        $novo->titulo = $request->titulo; 
        $novo->descricao = $request->descricao;
        $novo->save();
    } 
    
    public function visualizar($id)
    {
        return cursos::find($id);
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        cursos::findOrFail($id)->delete();
    }





}
