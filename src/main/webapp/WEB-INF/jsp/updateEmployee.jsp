<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Employee</title>
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
            align-items: center;
            justify-content: center;
        }
        .form{            
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Update Employee Data</h1>
        <div class="mainPage">
            <form class="form">
                <div class="mb-3">
                    <label for="id" class="form-label"><h5>Id:</h5></label>
                    <input type="name" class="form-control" id="id" placeholder="Enter your ID">
                </div>
                <div class="mb-3">
                    <label for="name" class="form-label"><h5>Name:</h5></label>
                    <input type="name" class="form-control" id="name" placeholder="Enter your Name">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label"><h5>Email address:</h5></label>
                    <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter your Email">
                </div>
                <div class="mb-3">
                    <label for="address" class="form-label"><h5>Address:</h5></label>
                    <input type="address" class="form-control" id="address" aria-describedby="emailHelp" placeholder="Enter your address">
                </div>
                <div class="mb-3">
                    <label for="designation" class="form-label"><h5>Designation:</h5></label>
                    <input type="designation" class="form-control" id="designation" aria-describedby="emailHelp" placeholder="Enter your designation">
                </div>
                <div class="mb-3">
                    <label for="department" class="form-label"><h5>Department</h5></label>
                    <input type="department" class="form-control" id="department" aria-describedby="emailHelp" placeholder="Enter your department">
                </div>
                <br>
                <button type="submit" class="btn btn-primary">Update</button>
            </form>

        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q"
        crossorigin="anonymous"></script>
</body>

</html>