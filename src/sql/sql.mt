<%
metamodel http://www.eclipse.org/emf/2002/Ecore
%>

<%script type="ecore.EPackage" name="sql" file="<%name%>.sql"%>


<%for (eAllContents().filter("EClass")) {%>
    CREATE TABLE <%name%> VALUES(
    <%for (eAllContents().filter("EAttribute")) {%>
        <%name%> <%if (eAttributeType().name == "EString"){%>VARCHAR(255)
<%}else if (eAttributeType().name == "EDate") 
{%>DATETIME
<%}else if (eAttributeType().name == "EInt") 
{%>NUMBER
<%}else{%>
CHAR(32)
<%}%>
    <%}%>
    );
<%}%>
