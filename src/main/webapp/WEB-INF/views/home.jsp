<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

    <html>
        <head>
              <%@ include file="./base.jsp" %>
        </head>

        <body>
          <h2 class="text-center mb-3"> User Registration and Login </h2>

          <div class="container mt-3">

                 <table class="table">
                   <thead class="bg-primary">
                     <tr>
                       <th scope="col">ID</th>
                       <th scope="col">First Name</th>
                       <th scope="col">Last Name</th>
                       <th scope="col">E-mail Id</th>
                       <th scope="col">Username</th>
                      <%-- <th scope="col">Password</th> --%>
                       <th scope="col">Delete</th>
                       <th scope="col">Edit</th>
                     </tr>
                   </thead>

                   <tbody>
                      <c:forEach items="${users}" var="user">
                          <tr>
                           <th scope="row">User${user.userId}</th>
                            <td>${user.firstName}</td>
                            <td>${user.lastName}</td>
                            <td>${user.email}</td>
                            <td>${user.username}</td>
                            <td>
                               <a href="deleteUser/${user.userId}" <i class="fa-solid fa-trash text-danger"
                                                                   style="font-size:25px"></i> </a>
                            </td>
                            <td>
                               <a href="updateUser/${user.userId}" > <i class="fa-solid fa-pen-to-square"
                                                                     style="font-size:25px"></i> </a>
                            </td>
                          </tr>
                      </c:forEach>
                   </tbody>
                 </table>
        </div>

        <div class="container text-center">
              <a href="addUserForm" class="btn btn-outline-success"> Create New Account</a>
              <a href="loginForm" class="btn btn-outline-info"> Login</a>
        </div> 
       
        </div>
        </body>
    </html>

