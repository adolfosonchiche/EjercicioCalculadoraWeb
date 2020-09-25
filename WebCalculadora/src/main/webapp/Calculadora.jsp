<%-- 
    Document   : Calculadora
    Created on : 24 sept. 2020, 19:32:40
    Author     : hectoradolfo   METHOD="GET" ACTION="Calculadora.jsp"
--%>

<%@page import="com.adolfo.webcalculadora.Calcular"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>

        <% if (request.getParameter("n1")
                    == null && request.getParameter("n2")
                    == null) {%>  

        <FORM > 
            <h4>Ingres los numero a operar: </h4>
            <label>Primer Valor  (n1):  </label>
            <input type="number" name="n1" step="0.0001"/>
            <br /><br>
            <label>Segundo Valor (n2): </label>
            <input type="number" name="n2" step="0.0001"/>
            <br /><br>

            <h4>Elige una o varias operaciones que desee hacer: </h4>

            <input type="checkbox" id="suma" name="suma" value="suma">
            <label for="suma">Sumar</label><br>
            <input type="checkbox" id="producto" name="producto" value="producto">
            <label for="producto">Multiplicar</label><br>
            <input type="checkbox" id="mayor" name="mayor" value="mayor">
            <label for="num_mayor">Obtener numero mayor</label> <br>
            <input type="checkbox" id="potencia" name="potencia" value="potencia">
            <label for="potencia">Obtener potencia de n1^n2</label> <br>
            <input type="checkbox" id="bianrio" name="bianrio" value="binario">
            <label for="binario">Valor binario de los valores</label> <br>

            <input type="submit" value="Calcular"> 

        </FORM> 
        <% } else { %>
        <%-- Declaramos nuestra variables String--%>
        <%! String n1, n2, suma, producto, mayor, potencia, binario;%>     
        <%
            n1 = request.getParameter("n1");
            n2 = request.getParameter("n2");
            suma = request.getParameter("suma");
            producto = request.getParameter("producto");
            mayor = request.getParameter("mayor");
            potencia = request.getParameter("potencia");
            binario = request.getParameter("bianrio");
        %>     
        <%
            Calcular calc = new Calcular();
            calc.realizarOperacion(n1, n2, suma, producto, mayor, potencia, binario);

            //obtenemos los resultados de las operaciones
            double sum, pdt, mayr, ptn;
            String bi1, bi2;
            sum = calc.getSuma();
            pdt = calc.getProducto();
            mayr = calc.getMayor();
            ptn = calc.getPotencia();
            bi1 = calc.getBin1();
            bi2 = calc.getBin2();

        %>
        <P>     
            <B>Los resultados son:</B>:     
        <P>     
            <%-- imprimimos los datos en el portal --%>
            <% if (suma != null) {%>
            <B>Suma: </B> <%= sum%><P>  
                <%}%>
                <% if (producto != null) {%>
            <B>Multiplicacion: </B> <%= pdt%><P>  
                <%}%>
                <% if (mayor != null) {%>
            <B>EL numero mayor: </B> <%= mayr%><P>  
                <%}%>
                <% if (potencia != null) {%>
            <B>La potencia: </B> <%= ptn%><P>  
                <%}%>
                <% if (binario != null) {%>
            <B>valor binario de n1: </B> <%= bi1%><P>  
            <B>valor binario de n2: </B> <%= bi2%><P> 
                <%}%>
            
                <%}%>

    </body>
</html>
