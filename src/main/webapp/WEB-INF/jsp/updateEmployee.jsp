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

        .form {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        #homeBtn {
            width: 50px;
        }

        .navbar a {
            margin-right: 100px;
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
    <div class="navbar">
        <a href="/home"><img id="homeBtn" src="back.png"/></a>
        <h1>Update Employee Data</h1>
    </div>
    <c:if test="${not empty successMsg}">
        <h4 style="color:green">${successMsg}</h4>
    </c:if>
    <c:if test="${not empty errorMsg}">
        <h4 style="color:red">${errorMsg}</h4>
    </c:if>

    <div class="mainPage">
        <form class="form" action="/update" method="post">
            <div class="mb-3">
                <label for="id" class="form-label"><h5>Id:</h5></label>
                <input type="text" class="form-control" id="id" name="id"
                       value="${employee.id}" readonly>
            </div>
            <div class="mb-3">
                <label for="name" class="form-label"><h5>Name:</h5></label>
                <input type="text" class="form-control" id="name" name="name"
                       value="${employee.name}" placeholder="Enter your Name">
            </div>
            <div class="mb-3">
                <label for="email" class="form-label"><h5>Email address:</h5></label>
                <input type="email" class="form-control" id="email" name="email"
                       value="${employee.email}" placeholder="Enter your Email">
            </div>
            <div class="mb-3">
                <label for="address" class="form-label"><h5>Address:</h5></label>
                <input type="text" class="form-control" id="address" name="address"
                       value="${employee.address}" placeholder="Enter your address">
            </div>
            <div class="mb-3">
                <label for="designation" class="form-label"><h5>Designation:</h5></label>
                <input type="text" class="form-control" id="designation" name="designation"
                       value="${employee.designation}" placeholder="Enter your designation">
            </div>
            <div class="mb-3">
                <label for="department" class="form-label"><h5>Department</h5></label>
                <input type="text" class="form-control" id="department" name="department"
                       value="${employee.department}" placeholder="Enter your department">
            </div>
            <div class="mb-3">
                <label for="skills" class="form-label" ><h5>Select one or more skills:</h5></label>
                <select id="skills" name="skills" class="form-control" multiple
                        value="${employee.skills}"
                        <c:if test="${formDisabled}">disabled</c:if>>
                    <option value="1">Java</option>
                    <option value="2">Python</option>
                    <option value="3">Js</option>
                    <option value="4">C#</option>
                    <option value="5">C++</option>
                </select>
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