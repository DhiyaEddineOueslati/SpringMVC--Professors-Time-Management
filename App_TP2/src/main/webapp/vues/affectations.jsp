<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="header.jsp" %> <!-- Inclure la barre de navigation -->    
<c:set var="cxt" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Affectations</title>

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
        <h1>Liste des Affectations</h1>
    </header>

    <table>
        <tr>
            <th>ID</th>
            <th>Matière</th>
            <th>Enseignant</th>
            <th>Heures Affectées</th>
            <th>Action</th>
        </tr>
        <c:forEach var="affectation" items="${affectations}">
            <tr>
                <td>${affectation.id}</td>
                <td>${affectation.matiere.titre}</td>
                <td>${affectation.enseignant.nom} ${affectation.enseignant.prenom}</td>
                <td>${affectation.heuresAffectees}</td>
                <td>
                    <a href="${cxt}/affectation/${affectation.id}">Supprimer</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <a href="${cxt}/addAffectation">Affecter une matière à un enseignant</a>
</body>
</html>
