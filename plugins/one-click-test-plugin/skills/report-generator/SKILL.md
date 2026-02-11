---
name: report-generator
description: Kit de herramientas para realizar pruebas de api utilizando Postman. Permite verificar la funcionalidad de los servicos, generer y editar colecciones de postman, ejecutar las colecciones y generar un informe html nativo de postman.
---

### Instrucciones para generar un informe de pruebas local

Sigue las siguientes instrucciones cuando te soliciten generar un informe de pruebas en formato HTML:

1. Crear una carpeta en la ruta absoluta completa `informes\<NombreInforme>` para almacenar el informe de la prueba.
   - Asegúrate de NO crear nuevamente la carpeta `informes\` si esta ya existe en la raíz del proyecto.
2. Generar un informe final en formato HTML.
   - Explicar claramente cumplimiento/incumplimiento.
   - Mueve las capturas de pantalla tomadas a la carpeta del informe.
   - Utilizar las capturas de pantalla tomadas para evidenciar los defectos identificados.
3. Valida que las capturas de pantalla estén correctamente referenciadas en el informe.
4. Valida que las capturas de pantalla estén en la carpeta del informe.

### Instrucciones para reportar defectos en Azure DevOps

Las siguientes instrucciones sirven para reportar los defectos identificados en Azure DevOps:

Todo lo que crees en Azure DevOps debe estar en formto HTML muy bonito y profesional.

0. Valida correcto acceso a azure-devops-mcp.
   - Si no tienes acceso, informa al usuario que no puedes continuar con el reporte de defectos.
1. Ten conocimiento del Work Item original donde se encuentran las especificaciones del requerimiento a probar (criterios de aceptación, casos de prueba y/o Detalle de un Bug).
   - Si no tienes conocimiento del Work Item original, solicita al usuario el ID del Work Item.
2. Pregunta al usuario cual de la siguiente acciones desea realizar o ambas:
   - Comentar en el Work Item original con un resumen del resultado de la prueba.
   - Crear Work Items tipo BUG/ISSUE con los defectos identificados, vinculado al Work Item original.
3. Verifica los campos requeridos para la creación de un work item de tipo bug.
4. Si aplica, Comenta en el Work Item original un resumen del resultado de la prueba de forma muy bonita.
   - No crear tags.
5. Si aplica, Crea Work Items tipo BUG/ISSUE con los defectos identificados de forma muy bonita, vinculado al Work Item original.
   - No crear tags.
