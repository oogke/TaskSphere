<!-- <!DOCTYPE html>
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
  <button>
    <a href="{{ route('workspaceCreate') }}">Create Workshop</a>
  </button>


</body>
</html> -->


{{-- projectManager/projects/projectDash.blade.php --}}
<h1>Project Dashboard</h1>
<p>Project Name: {{ $project->name }}</p>
<p>Project Description: {{ $project->description }}</p>
<!-- Add more fields as needed -->
