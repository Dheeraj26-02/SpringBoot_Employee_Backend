<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Update Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet"/>
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
            gap: 10px;
            width: 400px;
        }
        #homeBtn{
            width:50px;
        }

        .btn {
            transition: .5s;
        }

        .btn:hover {
            transition: .5s;
            box-shadow: 1px 1px 5px black;
            transform: scale(1.1);
        }
        .navbar a{
            margin-right:100px;
        }
    </style>
</head>

<body>
<div class="container">
    <div class="navbar">
        <a href="/home" ><img id="homeBtn" src="back.png"/></a>
        <h1>Add Employee</h1>
    </div>

    <c:if test="${not empty successMsg}">
        <h4 style="color:green">${successMsg}</h4>
    </c:if>

    <form class="form" action="/register" method="post">
        <div class="mb-3">
            <label for="id" class="form-label">Id:</label>
            <input name="id" class="form-control" id="id"
                   value="${employee.id}"
                   <c:if test="${formDisabled}">disabled</c:if> />
        </div>
        <div class="mb-3">
            <label for="name" class="form-label">Name:</label>
            <input name="name" class="form-control" id="name"
                   value="${employee.name}"
                   <c:if test="${formDisabled}">disabled</c:if> />
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email:</label>
            <input name="email" class="form-control" id="email"
                   value="${employee.email}"
                   <c:if test="${formDisabled}">disabled</c:if> />
        </div>
        <div class="mb-3">
            <label for="address" class="form-label">Address:</label>
            <input name="address" class="form-control" id="address"
                   value="${employee.address}"
                   <c:if test="${formDisabled}">disabled</c:if> />
        </div>
        <div class="mb-3">
            <label for="designation" class="form-label">Designation:</label>
            <input name="designation" class="form-control" id="designation"
                   value="${employee.designation}"
                   <c:if test="${formDisabled}">disabled</c:if> />
        </div>
        <div class="mb-3">
            <label for="department" class="form-label">Department:</label>
            <input name="department" class="form-control" id="department"
                   value="${employee.department}"
                   <c:if test="${formDisabled}">disabled</c:if> />
        </div>

        <c:choose>
            <c:when test="${formDisabled}">
                <!-- After submission: show two action buttons -->
                <a href="/employees" class="btn btn-success">Show All Employees</a>
                <a href="/addEmployeePage" class="btn btn-primary">Add New Employee</a>
            </c:when>
            <c:otherwise>
                <!-- Before submission: show submit button -->
                <button type="submit" class="btn btn-primary">Submit</button>
            </c:otherwise>
        </c:choose>
    </form>
</div>
</body>
</html>
