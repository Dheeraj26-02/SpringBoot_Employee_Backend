<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee List</title>
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

        <h1>All Employees List</h1>
        <div class="mainPage">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Designation</th>
                    <th>Department</th>
                    <th>Address</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="emp" items="${employees}">
                    <tr>
                        <td>${emp.id}</td>
                        <td>${emp.name}</td>
                        <td>${emp.email}</td>
                        <td>${emp.designation}</td>
                        <td>${emp.department}</td>
                        <td>${emp.address}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q"
        crossorigin="anonymous"></script>
</body>

</html>