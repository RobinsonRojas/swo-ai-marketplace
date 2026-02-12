---
name: api-testing
description: Kit de herramientas para realizar pruebas de api utilizando Postman. Permite verificar la funcionalidad de los servicios, generar y editar colecciones de postman, ejecutar las colecciones y generar un informe html nativo de postman.
---

# Instrucciones para ejecutar pruebas de servicios/Api

Las siguientes instrucciones sirven para: Ejecutar pruebas de servicios web y APIs.

1. Valida que exista la colección solicitada en Postman.
   - Si no existe, Crear la colección primero.
2. Utiliza postman-mcp para generar la colección en Postman a partir del archivo de especificación proporcionado por el usuario.
   - Crea varias peticiones de una misma api para representar los casos de prueba.
   - No crees ejemplos de petición, siempre crea nuevas peticiones para cada caso de prueba.
   - No crees variables a nivel de environment, siempre crea variables a nivel de colección.
3. Ejecutar pruebas de servicios web y APIs, utiliza la herramienta Postman CLI.
4. Consulta el id de la colección y el entorno en Postman.
5. Ejecuta la colección utilizando Postman CLI con la etiqueta "-r html" para generar el informe HTML nativo de postman.
   - Ejemplo de ejecución:
     `postman collection run 22461808-0c697111-ac46-4848-8ab9-ee8300f76cf4 -r html`
6. Indica al usuario que las pruebas de servicios web y APIs se han ejecutado exitosamente y que el informe HTML nativo de postman ha sido generado.
   - No crees informes adicionales, siempre utiliza el informe HTML nativo de postman.
