<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Get Employee By Id</title>
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

        .form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .mainPage {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .Btn {
            background-color: #01806d;
            width: 200px;
            padding: 5px;
            height: 30px;
            text-align: center;
            border: none;
            border-radius: 5px;
        }

        #homeBtn {
            width: 50px;
        }

        .btn {
            transition: .5s;
        }

        .btn:hover {
            transition: .5s;
            box-shadow: 1px 1px 5px black;
            transform: scale(1.1);
        }

        .navbar a {
            margin-right: 100px;
        }
    </style>
</head>

<body>
<div class="container">
    <div class="navbar">
        <a href="/home"><img id="homeBtn" src="back.png"/></a>
        <h1>Get Employee By Id</h1>
    </div>
    <div class="mainPage">
        <form action="/getEmployee" method="post" class="form">
            <label for="id">Id:</label>
            <input class="form-control" id="id" name="id" placeholder="Enter your ID">
            <button type="submit" class="Btn btn btn-primary text-center">Get Employee</button>
        </form>
        <br>
        <c:if test="${not empty employee}">
            <h3>Employee Details</h3>
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <td>${employee.id}</td>
                </tr>
                <tr>
                    <th>Name</th>
                    <td>${employee.name}</td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td>${employee.email}</td>
                </tr>
                <tr>
                    <th>Department</th>
                    <td>${employee.department}</td>
                </tr>
                <tr>
                    <th>Designation</th>
                    <td>${employee.designation}</td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td>${employee.address}</td>
                </tr>
                <tr>
                    <th>Skills</th>
                    <td>
                        <c:forEach var="skill" items="${employee.skills}" varStatus="status">
                            ${skill.skills}<c:if test="${!status.last}">, </c:if>
                        </c:forEach>
                    </td>

                </tr>
            </table>
        </c:if>
        <c:if test="${not empty errorMsg}">
            <h4 style="color:#f14242">${errorMsg}</h4>
        </c:if>


    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q"
        crossorigin="anonymous"></script>
</body>

</html>