 <%-- 
    Document   : listBooks
    Created on : 03.12.2020, 13:07:53
    Author     : Jegor
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Изменить данные покупателя</title>
    </head>
    <body>
        <header>
            <div class="back"><a class="hhh" href="index.jsp">FS</a></div>
            
            <p style="border-style: groove; border-width: ${borderwidth}0px; border-color: black;">${info}</p>
        
            <div class="buttons">
                <div><a class="spisokT" href="listProducts">ТОВАРЫ</a></div>
                <div><a class="spisokP" href="listPersons">ПОКУПАТЕЛИ</a></div>

                <div><a class="buyT" href="buyProductForm">КУПИТЬ ТОВАР</a></td>
                <div><a class="changeO" href="editProductForm1">ИЗМЕНИТЬ ТОВАР</a></div>

                <div><a class="addT" href="addProductForm">ДОБАВИТЬ ТОВАР</a></div>
                <div><a class="addP" href="addPersonForm">ДОБАВИТЬ ПОКУПАТЕЛЯ</a></div>
                
                <div><a class="dakdmaskd" href="editPersonForm1">ИЗМЕНИТЬ ДАННЫЕ ПОКУПАТЕЛЯ</a></div>
                
                <div><a class="nazad" href="index.jsp"></a></div>
            </div>
        </header>
        <footer><div class="footerr"><div class="Rectangle1"><div class="Rectangle2"></div></div></div></footer>
        
        <h1>Изменить данные покупателя:</h1>
        <form action="editPersonForm2" method="POST">
            <select name="personId" multiple="true">
                <c:forEach var="pers" items="${listPersons}">
                    <option value="${pers.id}">${pers.name} ${pers.surname} (${pers.money}$)</option>
                </c:forEach>
            </select>
            <input type="submit" value="Изменить">
        </form>
    </body>
</html>
