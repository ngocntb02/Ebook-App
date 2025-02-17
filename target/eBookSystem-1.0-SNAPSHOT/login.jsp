<%-- 
    Document   : login
    Created on : Apr 28, 2024, 12:02:18 AM
    Author     : PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ebook: Login</title>
        <%@include file="all_component/allCss.jsp" %>
    </head>
    <body style="background-color: #f0f1f2;">
        <%@include file="all_component/navbar.jsp" %>
        <div class="container">
            <div class="row mt-2">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center">Login</h3>
                            <c:if test="${not empty failedMsg}">
                                <h5 class="text-center text-danger">${failedMsg}</h5>
                                <c:remove var="failedMsg" scope="session"></c:remove>
                            </c:if>
                            
                            <form action="login" method="post">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Email address</label>
                                  <input type="email" class="form-control" id="exampleInputEmail1" 
                                         aria-describedby="emailHelp" placeholder="Enter email" required="required"
                                         name = "email">
                                </div>
                                <div class="form-group">
                                  <label for="exampleInputPassword1">Password</label>
                                  <input type="password" class="form-control" id="exampleInputPassword1" 
                                         placeholder="Password" required="required"
                                         name="password">
                                </div>
                                <div class="form-group">
                                    <label for="exampleRole1">Select User Type</label>
                                    <select class="form-control" id="exampleRole1" name="role">
                                        <option>Admin</option>
                                        <option>User</option>
                                        <option>Store manager</option>
                                    </select>
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Login</button><br>
                                    <a href="register.jsp">Create Account</a>
                                </div>
                              </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </body>
</html>
