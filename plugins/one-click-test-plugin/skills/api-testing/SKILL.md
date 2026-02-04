---
name: api-testing
description: Kit de herramientas para realizar pruebas de api utilizando Postman. Permite verificar la funcionalidad de los servicos, generer y editar colecciones de postman, ejecutar las colecciones y generar un informe html nativo de postman.
---

# Instrucciones para ejecutar pruebas de servicios/Api

Las siguientes instrucciones sirven para: Ejecutar pruebas de servicios web y APIs.

1. Valida que exista la colección solicitada en Postman.
   - Si no existe, informa al usuario y sugiere crear la colección primero.
2. Para ejecutar pruebas de servicios web y APIs, utiliza la herramienta Postman CLI.
3. Consulta el id de la colección y el entorno en Postman.
4. Ejecuta la colección utilizando Postman CLI con la etiqueta "-r html" para generar el informe HTML nativo de postman.
   - Ejemplo de ejecución: 'postman collection run 22461808-0c697111-ac46-4848-8ab9-ee8300f76cf4 -r html'
