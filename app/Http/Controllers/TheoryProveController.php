<?php

namespace App\Http\Controllers;

use App\Models\TheoryProve;
use Illuminate\Http\Request;

class TheoryProveController extends Controller
{
    public function index()
    {
        $items = TheoryProve::latest()->paginate(5);

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
        ]);

        TheoryProve::create($request->all());

        return redirect()->route('theory_prove.index');
    }
}
