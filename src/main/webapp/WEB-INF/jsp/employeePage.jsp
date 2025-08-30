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

            #homeBtn {
                width: 40px;
                transition: .5s;
            }

            #homeBtn:hover {
                transform: scale(1.5);
                transition: .5s;

            }

            .btn {
                transition: .5s;
            }

            .btn:hover {
                transition: .5s;
                box-shadow: 1px 1px 5px black;
                transform: scale(1.1);
            }

            .navbar {
                display: flex;
                flex-direction: row;
            }

            .navbar a,
            h1 {
                padding: 20px;
            }
        </style>
    </head>

    <body>
        <div class="container">
            <div class="navbar">
                <a href="/home"><img id="homeBtn" src="back.png" /></a>
                <h1>Employee Page</h1>
                <a href="/"><img id="homeBtn" src="logout.png" /></a>
            </div>
            <div class="mainPage">
                <button class="btn btn-primary" id="show">Show All Employees</button>
                <a href="/getEmployee" class="btn btn-warning" id="getId">Get Employee By Id</a>
                <a href="/addEmployeePage" class="btn btn-success" id="add">Add Employee</a>
                <a href="/deleteEmployee" class="btn btn-danger" id="delete">Delete Employee</a>
                <a href="/updateEmployee" class="btn btn-warning" id="update">Update Employee</a>

            </div>
            <div id="employeeList" class="mt-4"></div>
        </div>
        <script>
            document.getElementById("show").addEventListener("click", function () {
                fetch("/api/employees")   // AJAX call to backend
                    .then(response => response.json())
                    .then(data => {
                        console.log(data);
                        let html = `<table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Department</th>
                                <th>Designation</th>
                                <th>Skills</th>

                            </tr>
                        </thead>
                        <tbody>`;
                        data.forEach(emp => {
                            html += `<tr>
                        <td>\${emp.id} </td>
                        <td>\${emp.name}</td>
                        <td>\${emp.email}</td>
                        <td>\${emp.department}</td>
                        <td>\${emp.designation}</td>
                        <td>\${emp.skills.map(skill => skill.skills).join(", ")}</td>
                    </tr>`;
                        });
                        html += `</tbody></table>`;

                        // Insert into div
                        document.getElementById("employeeList").innerHTML = html;
                    })
                    .catch(error => console.error("Error fetching employees:", error));
            });
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q"
            crossorigin="anonymous"></script>
    </body>

    </html>