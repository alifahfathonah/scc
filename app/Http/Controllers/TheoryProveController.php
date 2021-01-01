<?php

namespace App\Http\Controllers;

use App\Models\TheoryProve;
use Illuminate\Http\Request;

class TheoryProveController extends Controller
{
    public function index()
    {
        $items = TheoryProve::latest()->get();

        return view('backend.theory_prove.index', compact('items'));
    }

    public function create()
    {
        return view('backend.theory_prove.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
        ], [
            'name.required' => 'Nama materi harus di isi !',
        ]);

        TheoryProve::create($request->all());
        notify()->success('Sukses menambahkan data');
        return redirect()->route('theory_prove.index');
    }

    public function edit($id)
    {
        $item = TheoryProve::find($id);
        return view('backend.theory_prove.edit', compact('item'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required',
        ], [
            'name.required' => 'Nama materi harus di isi !',
        ]);

        TheoryProve::find($id)->update($request->all());

        notify()->success('Sukses mengedit data');
        return redirect()->route('theory_prove.index');
    }

    public function destroy($id)
    {
        TheoryProve::find($id)->delete();
        notify()->success('Sukses menghapus data');
        return redirect()->route('theory_prove.index');
    }
}
