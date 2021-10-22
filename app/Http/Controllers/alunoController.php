<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\alunos;


class alunoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return alunos::all();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {        
        if($request->nome && $request->email && $request->data_nascimento){
        
            $dados = alunos::where('email', '=', $request->email)->get();
            
            if($dados->count() != 0){

                return "Já existir um usuário com o mesmo email cadastrado";

            }
            
            $novo_aluno = new alunos;
            
            $novo_aluno->nome = $request->nome; 
            $novo_aluno->email = $request->email;
            $novo_aluno->sexo = $request->sexo;
            $novo_aluno->data_nascimento = $request->data_nascimento;
            if($novo_aluno->save()){
                echo "Aluno cadastrado com sucesso";
            }else{
                echo "Não foi possivel cadastrar o aluno";
            }
            
        }
        else{
            echo "Necessario que tenha nome, eamil, data de nascimento";
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
        $novo_aluno = alunos::find($request->id);
            
        $novo_aluno->nome = $request->nome; 
        $novo_aluno->email = $request->email;
        $novo_aluno->sexo = $request->sexo;
        $novo_aluno->data_nascimento = $request->data_nascimento;
        if($novo_aluno->save()){
            echo "Aluno editado com sucesso";
        }else{
            echo "Não foi possivel editar o aluno";
        }
    }

    public function visualizar($id)
    {
        return alunos::find($id);
        
    }
    
    public function buscar(Request $request)
    {
        //dd($request->nome);
        return alunos::where('nome', '=', $request->nome)
        ->orwhere("email", "=", $request->email)->get();
        
    }

    public function buscar_avancada()
    {
        $sql = "SELECT
            COUNT(alunos.id) AS total_curso,
            cursos.titulo,
            SUM(IF(alunos.sexo = 'Masculino', 1, 0)) AS masculino,
            SUM(IF(alunos.sexo = 'Feminino', 1, 0)) AS feminino,
            SUM(IF(alunos.sexo = 'Masculino', IF(alunos.data_nascimento > '2006-01-01', 1, 0) , 0)) AS menor_15_masculino,
            SUM(IF(alunos.sexo = 'Feminino', IF(alunos.data_nascimento > '2006-01-01', 1, 0) , 0)) AS menor_15_feminino,
            SUM(IF(alunos.sexo = 'Masculino', IF(alunos.data_nascimento < '2006-12-30' AND alunos.data_nascimento > '2003-01-01' , 1, 0) , 0)) AS entre_15_18_masculino,
            SUM(IF(alunos.sexo = 'Feminino', IF(alunos.data_nascimento < '2006-12-30' AND alunos.data_nascimento > '2003-01-01' , 1, 0) , 0)) AS entre_15_18_feminino,
            SUM(IF(alunos.sexo = 'Masculino', IF(alunos.data_nascimento < '2002-12-30' AND alunos.data_nascimento > '1997-01-01' , 1, 0) , 0)) AS entre_19_24_masculino,
            SUM(IF(alunos.sexo = 'Feminino', IF(alunos.data_nascimento < '2002-12-30' AND alunos.data_nascimento > '1997-01-01' , 1, 0) , 0)) AS entre_19_24_feminino,
            SUM(IF(alunos.sexo = 'Masculino', IF(alunos.data_nascimento < '1996-12-30' AND alunos.data_nascimento > '1991-01-01' , 1, 0) , 0)) AS entre_25_30_masculino,
            SUM(IF(alunos.sexo = 'Feminino', IF(alunos.data_nascimento < '1996-12-30' AND alunos.data_nascimento > '1991-01-01' , 1, 0) , 0)) AS entre_25_30_feminino,
            SUM(IF(alunos.sexo = 'Masculino', IF(alunos.data_nascimento < '1991-12-30', 1, 0) , 0)) AS maior_30_masculino,
            SUM(IF(alunos.sexo = 'Feminino', IF(alunos.data_nascimento < '1991-12-30', 1, 0) , 0)) AS maior_30_feminino
        FROM alunos 
        INNER JOIN matriculas
            ON matriculas.aluno_id = alunos.id
        INNER JOIN cursos
            ON matriculas.cursos_id = cursos.id
        GROUP BY cursos.id";
        return \DB::select($sql);
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        alunos::findOrFail($id)->delete();
    }
}
