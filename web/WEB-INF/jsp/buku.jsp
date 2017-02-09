<%-- 
    Document   : buku
    Created on : Feb 10, 2017, 1:35:28 AM
    Author     : Nur Annisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
            }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
    <body>
        <h1>Daftar Buku Perpustakaan Universitas AMIKOM</h1>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Judul</th>
                <th>Penerbit</th>
            </tr>
            <c:forEach var="book" items="${buku}">
                <tr>
                    <td>
                        <c:out value="${book.id}"></c:out>
                    </td>
                     <td>
                        <c:out value="${book.judul}"></c:out>
                    </td>
                     <td>
                        <c:out value="${book.penerbit}"></c:out>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
