<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@500&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/c5a4938a4c.js" crossorigin="anonymous"></script>
    <title>Project Dashboard</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-color: #f4f5f7;
            font-family: 'Baloo 2', cursive;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        h1 {
            font-size: 3rem;
            text-align: center;
            color: #10b981;
            margin-bottom: 30px;
        }

        #createWorkspace {
            background-color: #10b981;
            color: white;
            font-weight: bold;
            font-size: 1rem;
            padding: 10px 20px;
            border-radius: 30px;
            border: none;
            cursor: pointer;
            position: fixed;
            right: 50px;
            top: 50px;
            transition: background-color 0.3s ease;
        }

        #createWorkspace:hover {
            background-color: #22c55e;
        }

        .projectIntro {
            width: 80%;
            max-width: 900px;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
        }

        .projectIntro h2 {
            font-size: 2.5rem;
            color: #2d3748;
            text-align: center;
            margin-bottom: 20px;
        }

        .projectIntro .details {
            display: grid;
            grid-template-columns: 1fr 2fr;
            gap: 20px;
            font-size: 1.1rem;
            line-height: 1.8;
        }

        .projectIntro .details span {
            font-weight: bold;
            color: #2d3748;
        }

        .projectIntro .details p {
            margin: 0;
            color: #555;
        }

        .projectIntro .status {
            margin-top: 20px;
            display: flex;
            justify-content: center;
        }

        .status .status-btn {
            padding: 10px 20px;
            background-color: #10b981;
            color: white;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .status .status-btn:hover {
            background-color: #16a34a;
        }

        .workspaceIndex {
            display: flex;
            flex-wrap: wrap;
            gap: 30px;
            justify-content: center;
            margin-top: 30px;
            max-height: 500px; /* Adjust the height according to your needs */
            overflow-y: auto; /* Makes it scrollable */
            padding-right: 20px; /* Optional: Prevents content from being hidden behind scrollbar */
        }

        .projectRow {
            background-color: #1e293b;
            border-radius: 15px;
            width: 300px;
            padding: 20px;
            color: white;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .projectRow:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 12px rgba(0, 255, 170, 0.3);
        }

        .projectRow ul {
            list-style: none;
            padding: 0;
        }

        .projectRow ul li {
            margin: 10px 0;
            font-size: 1.2rem;
        }

        .statusBtn {
            background-color: #10b981;
            color: white;
            border: none;
            border-radius: 20px;
            padding: 10px 20px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .statusBtn:hover {
            background-color: #22c55e;
        }

        @media (max-width: 768px) {
            .workspaceIndex {
                flex-direction: column;
                align-items: center;
            }

            .projectRow {
                width: 90%;
            }
        }
    </style>
</head>

<body>
    <h1>SwiftStay</h1>
    <button id="createWorkspace">Create Workspace</button>

    <div class="projectIntro">
        <h2>Project Details</h2>
        <div class="details">
            <div>
                <span>ID:</span>
                <p>1</p>
            </div>
            <div>
                <span>Name:</span>
                <p>Designing</p>
            </div>
            <div>
                <span>Description:</span>
                <p>A workspace focused on designing new UI/UX elements for the platform.</p>
            </div>
            <div>
                <span>Start Date:</span>
                <p>2025-04-01</p>
            </div>
            <div>
                <span>End Date:</span>
                <p>2025-06-30</p>
            </div>
            <div>
                <span>Members:</span>
                <p>John, Sarah, Michael, Emma</p>
            </div>
            <div>
                <span>Leader:</span>
                <p>John Doe</p>
            </div>
            <div>
                <span>Workspace Count:</span>
                <p>4</p>
            </div>
            <div>
                <span>Status:</span>
                <p>Open</p>
            </div>
            <div>
                <span>Created At:</span>
                <p>2025-03-15</p>
            </div>
        </div>

 
    </div>

    <div class="workspaceIndex">
   
        <div class="projectRow">
            <ul>
                <li><strong>Designing</strong></li>
                <li><button class="statusBtn">Open</button></li>
            </ul>
        </div>
        <div class="projectRow">
            <ul>
                <li><strong>Designing</strong></li>
                <li><button class="statusBtn">Open</button></li>
            </ul>
        </div>
        <div class="projectRow">
            <ul>
                <li><strong>Designing</strong></li>
                <li><button class="statusBtn">Open</button></li>
            </ul>
        </div>
        <div class="projectRow">
            <ul>
                <li><strong>Designing</strong></li>
                <li><button class="statusBtn">Open</button></li>
            </ul>
        </div>
        <div class="projectRow">
            <ul>
                <li><strong>Designing</strong></li>
                <li><button class="statusBtn">Open</button></li>
            </ul>
        </div>

        <div class="projectRow">
            <ul>
                <li><strong>Project Management</strong></li>
                <li><button class="statusBtn">Open</button></li>
            </ul>
        </div>
        <div class="projectRow">
            <ul>
                <li><strong>Backend</strong></li>
                <li><button class="statusBtn">Open</button></li>
            </ul>
        </div>
        <div class="projectRow">
            <ul>
                <li><strong>Frontend</strong></li>
                <li><button class="statusBtn">Open</button></li>
            </ul>
        </div>
        <div class="projectRow">
            <ul>
                <li><strong>Frontend</strong></li>
                <li><button class="statusBtn">Open</button></li>
            </ul>
        </div>
          <div class="projectRow">
            <ul>
                <li><strong>Frontend</strong></li>
                <li><button class="statusBtn">Open</button></li>
            </ul>
        </div>
        <!-- Add more project rows as needed -->
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

</body>

</html>
