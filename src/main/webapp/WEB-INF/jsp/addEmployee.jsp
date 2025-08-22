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

    <h1>Add New Employee</h1>

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
