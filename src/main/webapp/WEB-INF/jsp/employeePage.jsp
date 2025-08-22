<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
    <style>
        .container {
            display: flex;
            align-items: center;
            padding: 20px;
            flex-direction: column;
            gap: 20px;
            justify-content: center;
        }

        .mainPage {
            display: flex;
            gap: 20px;
        }


        #add {
            background-color: rgb(50, 145, 6);
            color: white;
            border: none;
            cursor: pointer;
        }

        #delete {
            background-color: rgb(214, 45, 45);
            color: white;
            border: none;
            cursor: pointer;
        }

        #update {
            background-color: rgb(214, 211, 25);
            color: white;
            border: none;
            cursor: pointer;
        }
        #homeBtn{
            background-color: rgb(145, 6, 138);
            color: white;
            border: none;
            cursor: pointer;
        }

        .btn {
            transition: .5s;
        }

        .btn:hover {
            transition: .5s;
            box-shadow: 1px 1px 5px black;
            transform: scale(1.1);
        }
    </style>
</head>

<body>
    <div class="container">
        <a href="/home"  class="btn" id="homeBtn">Home</a>
        <h1>Employee Page</h1>
        <div class="mainPage">
            <a href="/employees" class="btn btn-primary" id="show">Show All Employees</a>
            <a href="/getEmployee" class="btn btn-warning" id="getId">Get Employee By Id</a>
            <a href="/addEmployeePage" class="btn btn-success" id="add">Add Employee</a>
            <a href="/deleteEmployee" class="btn btn-danger" id="delete">Delete Employee</a>
            <a href="/updateEmployee" class="btn btn-warning" id="update">Update Employee</a>

        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q"
        crossorigin="anonymous"></script>
</body>

</html>