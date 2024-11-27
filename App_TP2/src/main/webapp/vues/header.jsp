<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu de Navigation</title>

    <!-- Style CSS pour le menu -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        /* Style de la barre de navigation */
        nav {
            background-color: #007bff;
            padding: 10px 0;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        nav ul {
            display: flex;
            justify-content: center;
            padding: 0;
            margin: 0;
            list-style-type: none;
        }

        nav ul li {
            margin: 0 20px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            font-weight: bold;
            text-transform: uppercase;
            transition: all 0.3s ease;
        }

        /* Effet au survol des liens */
        nav ul li a:hover {
            color: #ffcc00;
            border-bottom: 2px solid #ffcc00;
        }

        /* Style pour les pages */
        hr {
            border: 0;
            border-top: 2px solid #eee;
            margin-top: 20px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        /* Responsiveness */
        @media (max-width: 768px) {
            nav ul {
                flex-direction: column;
                text-align: center;
            }

            nav ul li {
                margin: 10px 0;
            }
        }
    </style>
</head>
<body>
   
    <nav>
        <ul>
            <li><a href="<c:url value='/matieres'/>">Matières</a></li>
            <li><a href="<c:url value='/enseignants'/>">Enseignants</a></li>
            <li><a href="<c:url value='/affectations'/>">Affectations</a></li>
        </ul>
    </nav>

  
 

    </div>
</body>
</html>
