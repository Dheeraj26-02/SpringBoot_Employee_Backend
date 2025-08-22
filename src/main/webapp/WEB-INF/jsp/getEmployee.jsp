<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
    <style>
        .container {
            display: flex;
            padding: 20px;
            align-items: center;
            flex-direction: column;
            gap: 20px;
            justify-content: center;
        }

        .mainPage {
            display: flex;
            gap: 20px;
        }

        .Btn {
            background-color: #83d50a;
            width: 200px;
            padding: 5px;
            height: 30px;
            text-align: center;
            border: none;
            border-radius: 5px;
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

    <h1>Delete Employee</h1>
    <div class="mainPage">
        <form action="/delete" method="post">
            <div class="mb-3">
                <label for="id" class="form-label">
                    <h5>Id:</h5>
                </label>
                <input type="name" class="form-control" id="id" placeholder="Enter your ID">
            </div>
            <button type="submit" class="Btn btn-primary text-center">Delete Employee</button>
        </form>

    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q"
        crossorigin="anonymous"></script>
</body>

</html>