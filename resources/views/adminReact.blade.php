<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@500&display=swap" rel="stylesheet">
  <script src="https://kit.fontawesome.com/c5a4938a4c.js" crossorigin="anonymous"></script>
  <title>Admin Dashboard</title>
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
  padding: 0 !important;
  margin: 0;
  display: flex;
  flex-direction: row;
  height: 100vh; 
}

#root {
  width: 100%;
  height: 100%; 
  display: flex; 
  flex-direction: row; 
}
  
  </style>
</head>

<body>
  <div id="root">

  </div>
  @viteReactRefresh
  @vite('resources/js/react/admin/AdminApp.jsx')
</body>

</html>
