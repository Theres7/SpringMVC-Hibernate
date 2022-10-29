<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="i" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


                    <%-- User Login --%>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <%@ include file="./base.jsp" %>
        </head>

        <body>
          <div class="container mt-3">              <%-- mt [margin-top] --%>
             <div class="row">
                <div class="col-md-6 offset-md-3">  <%-- md [medium] 6,3 grids --%>

                   <h1 class="text-center mb-3"> Please Login </h1>      <%-- mb [margin-bottom] --%>

                   <form action="/handleLogin" method="post" commandName="u">
                          <h3>
                               <font color="red">${loginError}</font>
                          </h3>
                         <div class="form-group">
                              <label for="username">Username:</label>
                              <input type="text" class="form-control"
                              id="username" aria-describedby="emailHelp"
                              name="usernameForm" placeholder="Your Username">
                              <errors path="username" cssStyle="color:red"/>
                         </div>

                         <div class="form-group">
                              <label for="password">Password:</label>
                              <input type="password" class="form-control"
                              id="password" aria-describedby="emailHelp"
                              name="passwordForm" placeholder="Your Password">
                         </div>

                         <div class="container text-center">
                               <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger"> Back </a>
                               <button type="submit" class="btn btn-primary"> Login </button>
                         </div>
                   </form>

                </div>
             </div>
          </div>
        </body>

    </html>
