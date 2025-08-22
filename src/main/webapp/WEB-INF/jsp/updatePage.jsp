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
            flex-direction: column;
            justify-content: center;

        }
        .form {
            display:flex;
            gap: 20px;
            flex-direction: column;
            justify-content: center;
            align-items:center;
        }

        .btn {
            background-color: #298d03;
            width: 200px;
            padding: 5px;
            height: 30px;
            text-align: center;
            border: none;
            border-radius: 5px;
        }
    </style>
</head>

<body>
<div class="container">
    <h1>Enter Id of Employee to Update details</h1>
    <div class="mainPage">
        <form action="/updateById" method="post" class="form">
            <div class="mb-3" class="form">
                <label for="id" class="form-label">
                    <h5>Id:</h5>
                </label>
                <input name="id" class="form-control" id="id" placeholder="Enter your ID">
            </div>
            <button type="submit" class="btn btn-primary text-center">Update Employee</button>
        </form>
        <div>
            <c:if test="${not empty errorMsg}">
                <h4 style="color:#f14242">${errorMsg}</h4>
            </c:if>
            <c:if test="${not empty successMsg}">
                <h4 style="color:#02c102">${successMsg}</h4>
            </c:if>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q"
        crossorigin="anonymous"></script>
</body>

</html>