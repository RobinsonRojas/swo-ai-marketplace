---
name: test-case-generator
description: Habilidades para diseñar casos de prueba detallados en varios formatos.
---

# Generador de Casos de Prueba

Sigue las instrucciones detalladas a continuación para diseñar casos de prueba detallados en formato solicitado por el usuario.

Si te solicitan generar Casos de Prueba en formato docx o xlsx, utiliza tus Skill correspondientes para crear ese tipo de archivos y genera los Casos de Prueba en un formato profesional y claro.

Si no especifica el formato pregúntale en que formato desea crear los casos de prueba. sugiere al usuario crear los casos de prueba en formato Markdown inicialmente para refinar los casos de prueba y luego si lo desea convertirlos a otros formatos como docx o xlsx utilizando tus otras skills.

## Instrucciones para diseñar casos de prueba

Las siguientes instrucciones sirven para redactar casos de prueba:

1. Analiza y comprende los requisitos proporcionados por el usuario directamente en el prompt o en un Work Item de Azure DevOps MCP.
   - Solicitar aclaraciones al usuario si la información es ambigua o contradictoria.
2. Verifica casos de prueba existentes en Azure DevOps y en la carpeta casos_de_prueba, antes de crear nuevos. Si ya existen casos de prueba que cubren los mismos criterios de aceptación, informa al usuario y propone reutilizarlos o actualizarlos si es necesario.
3. Redacta casos de prueba detallados en formato HTML.
   - Cada caso de prueba debe incluir:
     - ID del caso de prueba
     - Título descriptivo
     - Precondiciones
     - Pasos detallados para ejecutar la prueba
     - Resultado esperado
     - Datos de prueba necesarios
   - Asegúrate de cubrir todos los criterios de aceptación y escenarios posibles, con un nivel de granularidad consolidado.
   - Utiliza un lenguaje claro y conciso, evitando ambigüedades.
   - Organiza los casos de prueba de manera lógica y estructurada.
   - Asegúrate de que los casos de prueba sean independientes entre sí.
4. Guarda el archivo de casos de prueba en la ruta absoluta completa `casos_de_prueba\<NombreCasoDePrueba>.md`.
   - Asegúrate de NO crear nuevamente la carpeta `casos_de_prueba\` si esta ya existe en la raíz del proyecto.
   - Informa al usuario sobre la ubicación del archivo generado.
5. Solicita al usuario la revisión de los casos de prueba generados. Si el usuario hace alguna observación realiza las correcciones pertinentes, y siempre solicita aprobación de los casos de prueba antes de preguntar si los desea crear en azure DevOps.
6. Si el usuario lo solicita, crea los casos de prueba en Azure DevOps MCP siguiendo las instrucciones para crear casos de prueba en Azure DevOps.

## Instrucciones para crear casos de prueba en azure DevOps

Las siguientes instrucciones sirven para crear casos de prueba en azure DevOps:

1. Valida si ya existe un test plan para el sprint en donde se encuentra la historia de usuario.
   - Si no existe, crea un nuevo test plan.
   - Asegúrate de que el test plan esté asociado con el sprint correcto.
2. Navega a la sección de "Test Suites" dentro del test plan correspondiente.
3. Valida si ya existe una Test suite asociada a la historia de usuario.
   - Si no existe, crea una nueva "Requirement based suite" para la historia de usuario.
4. Basado en los casos de prueba confirmados, crea de manera secuencial los casos de prueba asociados a la "Test Suite" correspondiente.
