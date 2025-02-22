<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projects</title>
    ≈<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1AnmER5vPpTOjzHfyDgKZ3t5zRt9D6EIj2Cz/0lmUwF6F78IDXQ" crossorigin="anonymous">
    <style>
        .output {
            margin-top: 30px;
            background: #f8f9fa;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            display: none;
        }

        .output h2 {
            text-align: center;
            color: #333;
            margin-bottom: 15px;
        }

        .output p {
            font-size: 16px;
            color: #555;
        }

        .output strong {
            color: #007bff;
        }
    </style>
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
      <td>{{ implode(', ', json_decode($task->employee, true)) }}</td>
      <td>{{ $task->status }}</td>
      <td>{{ $task->leader }}</td>
      <td>
<a href="" data-id="{{ $task->id  }}" id="editBtn">Edit</a> | <a href="" data-id="{{ $task->id  }}" id="deleteBtn">Delete</a>


      </td>
     
    </tr>
    @endforeach
 
    </tbody>
</table>

<!-- 
<div class="output" id="output"></div> -->


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
    crossorigin="anonymous"></script>

 <script>
//    document.getElementById('output').style.display="block"
//             document.getElementById('output').innerHTML = `
//                 <h2>Task Details:</h2>
//                 <p><strong>Name:</strong> ${name}</p>
//                 <p><strong>Description:</strong> ${description}</p>
//                 <p><strong>Start Date:</strong> ${startDate}</p>
//                 <p><strong>End Date:</strong> ${endDate}</p>
//                 <p><strong>Priority:</strong> ${priority}</p>
//             `;
</script>   


<script>
// const table= document.querySelector('.table');
// const editBtn= document.getElementById("editBtn");
// table.addEventListener("click",event=>
//     {
// event.preventDefault();
// if(event.target && event.target.)


//     }
// );



const token=localStorage.getItem("token");

const deleteBtn= document.getElementById("deleteBtn");

editBtn.addEventListener("click",event=>
    {
        event.preventDefault();
      const taskId= editBtn.getAttribute("data-id");
      fetch("/api/taskUpdateView",{
        method:"post",
        headers:
        {
            'Authorization': `Bearer ${token}`,
            'Content-Type':'application/json'
        },
        body:JSON.stringify(taskId)
      }).then(response=>
      {
        console.log(response)
        return response.json()
      }
      ).then(data=>
      {
        if(data.status==true)
      {
        console.log("I made it")
      }
      else{
        console.log("Fuck it")
      }
      }
      )
    }
);



</script>


</body>
</html>
