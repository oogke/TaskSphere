<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projects</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1AnmER5vPpTOjzHfyDgKZ3t5zRt9D6EIj2Cz/0lmUwF6F78IDXQ" crossorigin="anonymous">
</head>
<body>

<table class="table table-striped table-hover">
<thead>
    <tr>
      <th scope="col">S.N</th>
      <th scope="col">Name</th>
      <th scope="col">Description</th>
      <th scope="col">start date</th>
      <th scope="col">end date</th>
      <th scope="col">Members</th>
      <th scope="col">status</th>
      <th scope="col">Leader</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    @foreach ($tasks as $keys => $task )
       <tr>
      <th scope="row">{{ $loop->iteration }}</th>
      <td>{{ $task->name }}</td>
      <td>{{ $task->description }}</td>
      <td>{{ $task->sdate }}</td>
      <td>{{ $task->edate }}</td>
      <td>{{ implode(', ', json_decode($task->members, true)) }}</td>
      <td>{{ $task->status }}</td>
      <td>{{ $task->leader }}</td>
      <td>
<a href="">Edit</a> | <a href="">Delete</a>


      </td>
     
    </tr>
    @endforeach
 
    </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
    crossorigin="anonymous"></script>

</body>
</html>
