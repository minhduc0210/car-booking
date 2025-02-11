<%-- 
    Document   : profile
    Created on : Oct 22, 2023, 10:46:29 PM
    Author     : anhdu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Car booking</title>
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/stylesBootstrap.css" rel="stylesheet" />
    </head>

    <body>
        <!-- Navigation Bar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark d-flex justify-content-between">
            <a class="navbar-brand" href="home">Car Booking</a>
            <c:if test="${sessionScope.User eq null}">
                <a class="navbar-brand" href="login.jsp">Login</a>
            </c:if>
            <c:if test="${sessionScope.User ne null}">
                <a class="navbar-brand" href="listbooked">History booked</a>
                <a class="navbar-brand" href="log">LogOut</a>
                <a class="navbar-brand" href="profile">Profile</a>
            </c:if>
        </nav>

        <!-- Banner -->
        <div class="jumbotron jumbotron-fluid text-center">
            <div class="container">
                <h1 class="display-4">Book Your Dream Car</h1>
                <p class="lead">Explore a wide range of cars and book your perfect ride today.</p>
            </div>
        </div>

        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5 col-md-6">

                <h1>Change Password</h1>

                <form action="ChangePass" method="post">

                    <input type="hidden" name="username" value="${user.username}">

                    <div class="form-group">
                        <label for="oldPassword">Old Password</label>
                        <input type="password" class="form-control" name="oldPassword" id="oldPassword" placeholder="Enter your old password" required>
                    </div>

                    <div class="form-group">
                        <label for="newPassword">New Password</label>
                        <input type="password" class="form-control" name="newPassword" id="newPassword" placeholder="Enter your new password" required>
                    </div>

                    <div class="form-group">
                        <label for="confirmPassword">Confirm New Password</label>
                        <input type="password" class="form-control" name="confirmPassword" id="confirmPassword" placeholder="Confirm your new password" required>
                    </div>

                    <label>${msg}</label>
                    
                    <br>

                    <button type="submit" class="btn btn-primary">Change Password</button>
                </form>

            </div>

        </section>

    </body>

</html>
