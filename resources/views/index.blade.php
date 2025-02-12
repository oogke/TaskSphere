<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<h1>Welcome to index page</h1>
<a href="{{route('registerView')}}"><button>
    Register
</button></a>
<a href="{{route('loginView')}}"><button>
    Login
</button></a>
<a href="{{route('adminPanel')}}"><button>
    Admin Panel
</button></a>
<a href="{{route('pmPanel')}}"><button>
    project Manager Panel
</button></a>
   <!-- <script src="{{ asset('js/employee.js') }}"></script> -->
</body>
</html>