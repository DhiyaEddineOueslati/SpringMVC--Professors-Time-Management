<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>    

<c:set var="cxt" value="${pageContext.request.contextPath}" />
<%@ include file="header.jsp" %> <!-- Inclure la barre de navigation -->

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Matières</title>

    <!-- Lien vers un fichier CSS externe ou ajouter un style interne -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #004c99;
            color: white;
            padding: 15px;
            text-align: center;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-top: 20px;
        }

        table {
            width: 80%;
            margin: 30px auto;
            border-collapse: collapse;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #009688;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        a {
            display: inline-block;
            background-color: #004c99;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 4px;
            margin: 20px 0;
            text-align: center;
        }

        a:hover {
            background-color: #005bb5;
        }
    </style>
</head>
<body>
    <header>
        <h1>Liste des Matières</h1>
    </header>

    <table>
        <tr>
            <th>ID</th>
            <th>Titre</th>
            <th>Niveau</th>
            <th>Nombre d'heures</th>
        </tr>
        <c:forEach var="matiere" items="${matieres}">
            <tr>
                <td>${matiere.id}</td>
                <td>${matiere.titre}</td>
                <td>${matiere.niveau}</td>
                <td>${matiere.nombreHeures}</td>
            </tr>
        </c:forEach>
    </table>

    <a href="${cxt}/addMatiere">Ajouter une matière</a>
</body>
</html>
