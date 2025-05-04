<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@500&display=swap" rel="stylesheet">
  <script src="https://kit.fontawesome.com/c5a4938a4c.js" crossorigin="anonymous"></script>
  <title>Project Manager Dashboard</title>
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
      height: fit-content;
    }

    .sidebar {
      width: 250px;
      background-color: #1e293b;
      color: white;
      display: flex;
      flex-direction: column;
      padding: 20px;
      transition: all 0.3s ease;
    }

    .sidebar h2 {
      margin-bottom: 30px;
      font-size: 24px;
      text-align: center;
    }

    .sidebar a {
      padding: 12px 20px;
      margin: 5px 0;
      color: white;
      text-decoration: none;
      display: block;
      border-radius: 5px;
      transition: background 0.2s ease;
    }

    .sidebar a:hover {
      background-color: #334155;
    }

    /* #main {
      flex: 1;
      padding: 20px;
      background-color: #f1f5f9;
      overflow-y: auto;
      width: 100%;
    } */

  </style>
</head>
<body  id="root">

  @viteReactRefresh
  @vite('resources/js/react/projectManager/ProjectManagerApp.jsx')
</body>
</html>
