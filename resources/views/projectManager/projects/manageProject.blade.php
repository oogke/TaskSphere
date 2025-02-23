<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Projects</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<button>Create Project</button>
  <table class="table table-striped table-hover" id="projectTable">
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
      @foreach ($projects as $keys => $project)
      <tr class="projectRow" data-id="{{ $project->id }}">
      <th scope="row">{{ $loop->iteration }}</th>
      <td>{{ $project->name }}</td>
      <td>{{ $project->description }}</td>
      <td>{{ $project->sdate }}</td>
      <td>{{ $project->edate }}</td>
      <td>{{ implode(', ', json_decode($project->members, true)) }}</td>
      <td>{{ $project->status }}</td>
      <td>{{ $project->leader }}</td>
      <td>
        <a href="" data-id="{{ $project->id }}">Edit</a> | <a href="" data-id="{{ $project->id }}">Delete</a> | <a
        href="" id="goToBtn" data-id="{{ $project->id }}">check</a>


      </td>

      </tr>
    @endforeach

    </tbody>
  </table>

  <!-- <script>
    const projectTable = document.querySelector("#projectTable tbody");
    const token = localStorage.getItem("token");
    projectTable.addEventListener("click", (event) => {
      const row = event.target.closest(".projectRow")
      const id = row.getAttribute("data-id");
      fetch(`/api/projectDashCon/${id}`, {
        method: "POST",
        headers:
        {
          'Authorization': `Bearer ${token}`,
          'Content-Type': 'application/json'
        }
      });
    });
  </script> -->



  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

   
</body>

</html>