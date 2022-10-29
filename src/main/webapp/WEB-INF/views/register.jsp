<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <%@ include file="./base.jsp" %>
        </head>

        <body>
        
          <div class="container mt-3">    
             <div class="row">
                <div class="col-md-6 offset-md-3"> 
                   <h1 class="text-center mb-3"> Register here </h1>     

                     <form action="/handleUser" method="post">
                         <div class="form-group">
                              <label for="firstName">First Name:</label>
                              <input type="text" class="form-control"
                              id="firstName" aria-describedby="emailHelp"
                              name="firstName" placeholder="Enter your First Name">
                         </div>

                         <div class="form-group">
                              <label for="lastName">Last Name:</label>
                              <input type="text" class="form-control"
                              id="lastName" aria-describedby="emailHelp"
                              name="lastName" placeholder="Enter your Last Name">
                         </div>

                         <div class="form-group">
                              <label for="email">E-mail Id:</label>
                              <input type="text" class="form-control"
                              id="email" aria-describedby="emailHelp"
                              name="email" placeholder="Your Email id">
                         </div>

                         <div class="form-group">
                              <label for="username">Username:</label>
                              <input type="text" class="form-control"
                              id="username" aria-describedby="emailHelp"
                              name="username" placeholder="Your Username">
                         </div>

                         <div class="form-group">
                              <label for="password">Password:</label>
                              <input type="password" class="form-control"
                              id="password" aria-describedby="emailHelp"
                              name="password" placeholder="Your Password">
                         </div>

                         <div class="container text-center">
                               <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger"> Back </a>
                               <button type="submit" class="btn btn-primary"> Add </button>
                         </div>   
                   </form>
                  
                </div>
             </div>
          </div>
        </body>
    </html>

