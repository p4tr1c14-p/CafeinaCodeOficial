<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tipos de Variables</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/leccion4.css">
</head>

<body>

    <div class="menu">
        <img src="${pageContext.request.contextPath}/imagenes/logo_cafeina_code.png" class="logo">

        <a href="${pageContext.request.contextPath}/Inicio.jsp">Inicio</a>
        <a href="${pageContext.request.contextPath}/leccion.jsp">Lecciones</a>
        <a href="${pageContext.request.contextPath}/Challenges.jsp">Challenges</a>
        <a href="${pageContext.request.contextPath}/Mascotas.jsp">Mascota</a>
        <a href="${pageContext.request.contextPath}/Perfil.jsp">Perfil</a>
    </div> 
    
    <div class="contenedor">
    <h1>CONCEPTOS BÁSICOS</h1>            
    <form action="${pageContext.request.contextPath}/lecciones" method="post" class="boton">

        <input type="hidden" name="accion" value="guardar">
        <input type="hidden" name="id_tema" value="3">

        <input type="hidden"
               name="descripcion"
               value="Introducción a Java y algunas dependencias, acompletado 16.6%">

        <button type="submit">
            ARREGLOS
        </button>

    </form>  
                
    <form action="${pageContext.request.contextPath}/lecciones" method="post" class="boton">

        <input type="hidden" name="accion" value="guardar">
        <input type="hidden" name="id_tema" value="4">

        <input type="hidden"
               name="descripcion"
               value="Operacion en Java para transformacion de datos">

        <button type="submit">
            CAST DE VARIABLES
        </button>

    </form>
    
    <form action="${pageContext.request.contextPath}/lecciones" method="post" class="boton">

        <input type="hidden" name="accion" value="guardar">
        <input type="hidden" name="id_tema" value="5">

        <input type="hidden"
               name="descripcion"
               value="Declaraciones y ejemplos">

        <button type="submit">
            TIPO DE VARIABLES
        </button>

    </form>
            
    <form action="${pageContext.request.contextPath}/lecciones" method="post" class="boton">

        <input type="hidden" name="accion" value="guardar">
        <input type="hidden" name="id_tema" value="6">

        <input type="hidden"
               name="descripcion"
               value="Símbolos que ayudan a realizar operaciones">

        <button type="submit">
            CLASES DE OPERADORES
        </button>

    </form>
    
    
    <form action="${pageContext.request.contextPath}/lecciones" method="post" class="boton">

        <input type="hidden" name="accion" value="guardar">
        <input type="hidden" name="id_tema" value="7">

        <input type="hidden"
               name="descripcion"
               value="SÃ­mbolos que ayudan a realizar operaciones">

        <button type="submit">
            SENTENCIAS IF-ELSE
        </button>

    </form>    
      
    <form action="${pageContext.request.contextPath}/lecciones" method="post" class="boton">

        <input type="hidden" name="accion" value="guardar">
        <input type="hidden" name="id_tema" value="8">

        <input type="hidden"
               name="descripcion"
               value="SÃ­mbolos que ayudan a realizar operaciones">

        <button type="submit">
            BUCLES FOR & WHILE
        </button>

    </form>
    
    <form action="${pageContext.request.contextPath}/lecciones" method="post" class="boton">

        <input type="hidden" name="accion" value="guardar">
        <input type="hidden" name="id_tema" value="9">

        <input type="hidden"
               name="descripcion"
               value="SÃ­mbolos que ayudan a realizar operaciones">

        <button type="submit">
            CONSTRUCTORES
        </button>

    </form>
    
    
    <form action="${pageContext.request.contextPath}/lecciones" method="post" class="boton">

        <input type="hidden" name="accion" value="guardar">
        <input type="hidden" name="id_tema" value="10">

        <input type="hidden"
               name="descripcion"
               value="SÃ­mbolos que ayudan a realizar operaciones">

        <button type="submit">
            HERENCIA
        </button>

    </form>
    
    
    <a href="${pageContext.request.contextPath}/lecciones.jsp" class="boton-fundamentos">
        <span class="texto-boton">REGRESAR</span>
    </a> 
    </div>
        
    <div class="footer">
            Aviso de privacidad | @2025 Cafeína Code
    </div>

</body>
</html>          
