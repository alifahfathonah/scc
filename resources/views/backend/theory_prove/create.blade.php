@extends('layouts.app')

@section('content')
<div class="container px-6 mx-auto grid">
    <h4 class="my-6 mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">
        Tambah Materi Prove
    </h4>
    <div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800">
        <form action="{{ route('theory_prove.store') }}" method="post">
            @csrf
            <label class="block text-sm">
                <span class="text-gray-700 dark:text-gray-400">Nama</span>
                <input type="text" name="name" class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input" placeholder="Masukan nama materi" />
            </label>

            <div class="flex mt-4 text-sm">
                <button type="submit" class="px-3 py-1 text-sm font-medium leading-5 text-white transition-colors duration-150 bg-blue-500 border border-transparent rounded-lg active:bg-blue-600 hover:bg-blue-700 focus:outline-none focus:shadow-outline-blue">
                    Simpan
                </button>
                <a href="{{ route('theory_prove.index') }}" class="ml-2 px-3 py-1 text-sm font-medium leading-5 text-white transition-colors duration-150 bg-red-600 border border-transparent rounded-lg active:bg-red-600 hover:bg-red-700 focus:outline-none focus:shadow-outline-red">
                    Kembali
                </a>
            </div>
        </form>
    </div>
</div>
@endsection