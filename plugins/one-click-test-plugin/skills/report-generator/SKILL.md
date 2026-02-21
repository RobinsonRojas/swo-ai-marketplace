---
name: report-generator
description: Habilidad para generar reportes de pruebas realizadas en distintos formatos (HTML, docx, xlsx) y reportar defectos en Azure DevOps de manera profesional.
---

# Instrucciones generales

Sigue las instrucciones detalladas a continuación para generar reportes detallados y profesionales de las pruebas en diferentes formatos.

1. Valida que ya exista las carpetas `reportes\<NombreReporte>\` en la raíz del proyecto.
   - Si no existe, crea las carpetas `reportes\<NombreReporte>\` en la raíz del proyecto.
   - Si las carpetas ya existen, utiliza esas mismas carpetas para guardar el nuevo reporte, asegurándote de no sobrescribir archivos anteriores.
2. Genera un archivo markdown con el contexto de las pruebas realizadas.
3. Pregunta al usuario en que formato desea el reporte final sugiriendo los siguientes formatos disponibles y recomendando HTML para reportes de pruebas:
   - HTML: Sigue las instrucciones para generar un reporte en HTML.
   - docx: Utiliza la Skill correspondiente para crear ese tipo de archivos y genera un reporte profesional de las pruebas realizadas.
   - xlsx: Utiliza la Skill correspondiente para crear ese tipo de archivos y genera un reporte profesional de las pruebas realizadas.

## Instrucciones para generar un reporte de pruebas en HTML

Sigue las siguientes instrucciones para generar un reporte de pruebas en formato HTML:

2. Genera un reporte final en formato HTML utilizando la plantilla proporcionada como ejemplo:
   - **examples/** - (`plantilla_reporte.html`) - Plantilla de reporte de pruebas en HTML con estilos profesionales.
   - Puedes editar la plantilla para adaptarla a tus necesidades, pero asegúrate de mantener un formato profesional y claro.
   - Asegúrate de incluir siempre el `logoSWO.png` del ejemplo.
3. Valida que las capturas de pantalla estén correctamente referenciadas en el reporte.
4. Guarda el archivo del reporte en la ruta absoluta completa `reportes\<NombreReporte>\reporte_pruebas.html`.
   - Informa al usuario sobre la ubicación del archivo generado.
   - Abre el reporte generado.

## Instrucciones para reportar defectos en Azure DevOps

Sigue las siguientes instrucciones para reportar los defectos identificados en Azure DevOps:

1. Ten conocimiento del Work Item original donde se encuentran las especificaciones del requerimiento probado (USER STORY, BUG, ISSUE).
   - Si no tienes conocimiento del Work Item original. Pregunta al usuario al usuario el ID o nombre del Work Item.
2. Pregunta al usuario cual de la siguiente acciones desea realizar o ambas:
   - Comentar en el Work Item original con un resumen del resultado de la prueba en un formato muy bonito y profesional.
   - Solo si se identificaron defectos. Crear Work Items tipo BUG/ISSUE con los defectos identificados vinculados al Work Item original.
3. Utiliza las herramientas disponibles de azure-devops-mcp para interactuar con Azure DevOps.
   - Verifica los campos requeridos para la creación de un work item.
   - Rellena los campos requeridos con la información del defecto identificado en un formato muy bonito y profesional.
   - Add link del Work Item original.
