<!DOCTYPE html>
<html :class="{ 'theme-dark': dark }" x-data="data()" lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SCC</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="{{ url('windmill/assets/css/tailwind.output.css') }}" />
    <!-- <link href="{{ asset('css/app.css') }}" rel="stylesheet"> -->

    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
    <script src="{{ url('windmill/assets/js/init-alpine.js') }}"></script>

</head>

<body>
    <div class="flex h-screen bg-gray-50 dark:bg-gray-900" :class="{ 'overflow-hidden': isSideMenuOpen}">

        @include('layouts.sidebar')

        <div class="flex flex-col flex-1">

            @include('layouts.header')

            <main class="h-full pb-16 overflow-y-auto">

                @yield('content')

            </main>
        </div>
    </div>
</body>

</html>