<%
metamodel http://www.eclipse.org/emf/2002/Ecore
%>

<%script type="ecore.EClass" name="xhtml" file="<%name%>.xhtml"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mon Carnet</title>
</head>
<body>

<h1>Description de la classe : <%name%></h1>
<p>Liste des attributs :</p>
<ul>
<%for (eAllAttributes()) {%>
<li><%eAttributeType().name%> <%name%></li>
<%}%>

<p>Liste des references:</p>
<%for (eAllReferences()) {%>
<li><%eReferenceType().name%> <%name%></li>
<%}%>

<p>Liste des operations :</p>
<%for (eAllOperations()) {%>
<li><%eType.instanceClassName%> <%name%></li>
<%}%>
</ul>

</body>
</html>


