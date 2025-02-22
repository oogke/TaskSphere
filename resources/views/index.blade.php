<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .projectActions {
            height: 400px;
            border: 2px solid black;
            width: 60%;
            border-radius: 30px;
            margin: 90px auto;
            box-shadow: 5px 5px 13px -2px black;
            position: relative;

        }

        .workspaceActions {
            height: 400px;
            border: 2px solid black;
            width: 60%;
            border-radius: 30px;
            margin: 90px auto;
            box-shadow: 5px 5px 13px -2px black;
            position: relative;

        }
        .taskActions{
            height: 500px;
            border: 2px solid black;
            width: 60%;
            border-radius: 30px;
            margin: 90px auto;
            box-shadow: 5px 5px 13px -2px black;

            position: relative;

        }

        .top{
            height: 500px;
            border: 2px solid black;
            width: 100%;
            border-radius: 30px;
            margin: 90px auto;
            box-shadow: 5px 5px 13px -2px black;
            position: relative;  
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
  
        }
        .top ::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url(images/image.png) top no-repeat;
            filter: blur(1px);
            z-index: -1;
        
        }

         .projectActions ::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url(images/luffy.jpg) top;
            filter: blur(1.5px);
            z-index: -1;
        }

        .workspaceActions::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url(images/guid3.jpg) center;
            filter: blur(1.5px);
            z-index: -1;
        }
        .taskActions::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url(images/heaven2.jpg) bottom;
            filter: blur(1.5px);
            z-index: -1;
        }

        .projectActions h1 {
            text-align: center;
            font-family: cursive;
            font-size: 50px;
        }

        .workspaceActions h1 {
            text-align: center;
            font-family: cursive;
            font-size: 50px;
        }
        .taskActions h1 {
            text-align: center;
            font-family: cursive;
            font-size: 50px;
        }

        .projectActions a button {
            width: 170px;
            height: 70px;
            margin-left: 30px;
            background-color: #F5E0B7;
            border: 1px solid black;
            border-radius: 10px;
            box-shadow: 5px 5px 9px -2px black;
        }
        .top h1{
            text-align: center;
            font-family: cursive;
            font-size: 50px;
        }
        .top a button {
            width: 170px;
            height: 70px;
            margin-left: 30px;
            background-color:rgb(255, 255, 255);
            border: 1px solid black;
            border-radius: 10px;
            box-shadow: 5px 5px 9px -2px black;
         font-weight: bold;
        }
        .workspaceActions a button {
            width: 170px;
            height: 70px;
            margin-left: 30px;
            background-color: #F5E0B7;
            border: 1px solid black;
            border-radius: 10px;
            box-shadow: 5px 5px 9px -2px black;
        }
        .taskActions a button {
            width: 170px;
            height: 70px;
            margin-left: 30px;
            background-color:rgb(250, 250, 250);
            border: 1px solid black;
            border-radius: 10px;
            box-shadow: 5px 5px 9px -2px black;
        }
    </style>
</head>

<body>
    <div class="top">
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
    <a href="{{route('pmPanel')}}"><button>
            Project Dashboard
        </button></a>
    <a href="{{route('pmPanel')}}"><button>
            Workspace Dashboard
        </button></a>   
    </div>
   
   


    <div class="projectActions">
        <h1>
            Project
        </h1>
        <a href="{{route('pmPanel')}}"><button>
                Create
            </button></a>
        <a href="{{route('pmPanel')}}"><button>
                Update
            </button></a>
        <a href="{{route('pmPanel')}}"><button>
                Delete
            </button></a>
        <a href="{{route('pmPanel')}}"><button>
                Show
            </button></a>
    </div>


    <div class="workspaceActions">
        <h1>
            Workspaces
        </h1>
        <a href="{{route('pmPanel')}}"><button>
                Create
            </button></a>
        <a href="{{route('pmPanel')}}"><button>
                Update
            </button></a>
        <a href="{{route('pmPanel')}}"><button>
                Delete
            </button></a>
        <a href="{{route('pmPanel')}}"><button>
                Show
            </button></a>
    </div>


    <div class="taskActions">
        <h1>
            Tasks
        </h1>
        <a href="{{route('pmPanel')}}"><button>
                Create
            </button></a>
        <a href="{{route('pmPanel')}}"><button>
                Update
            </button></a>
        <a href="{{route('pmPanel')}}"><button>
                Delete
            </button></a>
        <a href="{{route('pmPanel')}}"><button>
                Show
            </button></a>
    </div>
</body>

</html>