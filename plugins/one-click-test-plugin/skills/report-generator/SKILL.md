---
name: report-generator
description: Habilidad para generar informes y reportar defectos de las pruebas realizadas
---

# Generador de Informes de Pruebas

Sigue las instrucciones detalladas a continuación para generar informes de pruebas en formato HTML y reportar defectos en Azure DevOps de manera efectiva y profesional.

Solo si te solicitan explícitamente generar un informe en formato docx o xlsx, utiliza tus Skill correspondientes para crear ese tipo de archivos y genera un informe profesional de las pruebas realizadas. en caso contrario sigue las instrucciones para generar un informe de pruebas en formato HTML y reportar defectos en Azure DevOps.

## Instrucciones para generar un informe de pruebas en HTML

Sigue las siguientes instrucciones cuando te soliciten generar un informe de pruebas en formato HTML:

1. Valida que ya exista la carpeta `informes\<NombreInforme>` en la raíz del proyecto.
   - Si no existe, crea la carpeta `informes\<NombreInforme>` en la raíz del proyecto.
   - Con las capturas de pantalla tomadas durante la prueba.
2. Genera un informe final en formato HTML utilizando la plantilla proporcionada como ejemplo:
   - **examples/** - (`plantilla_informe.html`) - Plantilla de informe de pruebas en HTML con estilos profesionales.
   - Puedes editar la plantilla para adaptarla a tus necesidades, pero asegúrate de mantener un formato profesional y claro.
3. Valida que las capturas de pantalla estén correctamente referenciadas en el informe.
4. Guarda el archivo del informe en la ruta absoluta completa `informes\<NombreInforme>\informe_pruebas.html`.
   - Informa al usuario sobre la ubicación del archivo generado.
   - Abre el informe generado.

## Instrucciones para reportar defectos en Azure DevOps

Las siguientes instrucciones sirven para reportar los defectos identificados en Azure DevOps:

Todo lo que crees en Azure DevOps debe estar en formato HTML muy bonito y profesional.

1. Ten conocimiento del Work Item original donde se encuentran las especificaciones del requerimiento a probar (USER STORY, BUG, ISSUE).
   - Si no tienes conocimiento del Work Item original, solicita al usuario el ID del Work Item.
2. Pregunta al usuario cual de la siguiente acciones desea realizar o ambas:
   - Comentar en el Work Item original con un resumen del resultado de la prueba en un formato muy bonito y profesional.
   - Crear Work Items tipo BUG/ISSUE con los defectos identificados, vinculado al Work Item original.
3. Si aplica, Comenta en el Work Item original un resumen de las pruebas.
   - No crear tags.
4. Si aplica, Crea Work Items tipo BUG/ISSUE con los defectos identificados.
   - Verifica los campos requeridos para la creación de un work item de tipo BUG por lo general son (Repro, StepsDescription).
   - Rellena los campos requeridos con la información del defecto identificado en un formato muy bonito y profesional.
   - Add link del Work Item original.
   - No crear tags.
