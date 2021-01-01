<?php

namespace App\Http\Controllers;

use App\Models\TheoryProve;
use Illuminate\Http\Request;

class TheoryProveController extends Controller
{
    public function index()
    {
        $items = TheoryProve::latest()->get();

        return view('backend/theory_prove/index', compact('items'));
    }

    public function create()
    {
        return view('backend/theory_prove/create');
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
}
