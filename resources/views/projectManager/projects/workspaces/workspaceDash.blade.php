<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        a{
            text-decoration: none;
            color: black;

        }
    </style>
</head>
<body>
    <button><a href="{{ route('workspaceIndex') }}">Manage Data</a></button>
    <button><a href="{{ route('workspaceCreate') }}">Create Data</a></button>
</body>
</html>