<?php

namespace App\Http\Controllers\api;

use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class chatController extends Controller
{
    /**
     * Função para listar os dados
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $results = DB::select('select * from chat.cadastro');
         return $results;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Função para inserir dados
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $dados = DB::insert ('insert into chat.cadastro (telefone, senha, nome)
        values (?, ?, ?)',  
        [$request->telefone, 
        $request->senha, 
        $request->nome]);
        return $dados;
    }

    /**
     * Função para listar dados de acordo ao id cadastrado
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $filtro = DB::select('select * from chat.cadastro where id_cadastro = :id', ['id' => $id]);
        return $filtro;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Função para atualizar os dados cadastrados de acordo ao id
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $modify = DB::table("chat.cadastro")->where('id_cadastro', ['id' => $id])->update([
            'telefone' => $request->telefone, 
            'nome'=> $request->nome,
            'senha'=> $request->senha
            ]);
            
            return $modify;
    }

    /**
     * Função para remover usuário de acordo ao id cadastrado
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $remove = DB::delete('delete from chat.cadastro where id_cadastro = :id', ['id' => $id]);
        return $remove;
    }
}
