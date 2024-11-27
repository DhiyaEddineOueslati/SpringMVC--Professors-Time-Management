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
    <title>Affecter une Matière à un Enseignant</title>

    <!-- Lien vers un fichier CSS externe ou ajout du style interne -->
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

        form {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        label {
            font-size: 16px;
            margin-top: 10px;
            display: block;
        }

        select,
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #004c99;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #005bb5;
        }

        a {
            display: inline-block;
            background-color: #f1f1f1;
            color: #333;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 4px;
            margin-top: 20px;
            text-align: center;
        }

        a:hover {
            background-color: #ccc;
        }
    </style>
</head>
<body>

    <h1>Affecter une Matière à un Enseignant</h1>

    <form action="${cxt}/saveAffectation" method="post">
        <label for="matiere">Matière :</label>
        <select name="matiere.id" id="matiere" required>
            <c:forEach var="matiere" items="${matieres}">
                <option value="${matiere.id}">${matiere.titre}</option>
            </c:forEach>
        </select><br>

        <label for="enseignant">Enseignant :</label>
        <select name="enseignant.id" id="enseignant" required>
            <c:forEach var="enseignant" items="${enseignants}">
                <option value="${enseignant.id}">${enseignant.nom} ${enseignant.prenom}</option>
            </c:forEach>
        </select><br>

        <label for="heuresAffectees">Heures Affectées :</label>
        <input type="number" id="heuresAffectees" name="heuresAffectees" required><br>

        <input type="submit" value="Affecter">
    </form>

    <a href="${cxt}/affectations">Retour à la liste des affectations</a>

</body>
</html>
