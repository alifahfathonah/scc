<!DOCTYPE html>
<html :class="{ 'theme-dark': dark }" x-data="data()" lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SCC</title>
    @notifyCss
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="{{ url('windmill/assets/css/tailwind.datatables.css') }}" />
    <link rel="stylesheet" href="{{ url('windmill/assets/css/tailwind.output.css') }}" />
    <!-- <link href="{{ asset('css/app.css') }}" rel="stylesheet"> -->

    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">
    <!--Responsive Extension Datatables CSS-->
    <link href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
    <script src="{{ url('windmill/assets/js/init-alpine.js') }}"></script>

    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

    <!--Datatables -->
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/jszip-2.5.0/dt-1.10.22/b-1.6.4/b-flash-1.6.4/b-html5-1.6.4/b-print-1.6.4/datatables.min.js"></script>
    <script>
        $(document).ready(function() {
            let table = $('#example').DataTable({
                responsive: true,
                ordering: false,
                "lengthMenu": [
                    [5, 10, 25, -1],
                    [5, 10, 25, "All"]
                ]
            });
        });
    </script>


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
    <x:notify-messages />
    @notifyJs
</body>

</html>