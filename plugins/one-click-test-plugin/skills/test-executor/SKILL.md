---
name: test-executor
description: Habilidad para ejecutar todos los tipos de pruebas que interactúan el navegador web.
---

# Instrucciones generales

Sigue las instrucciones detalladas a continuación para realizar todos los diferentes tipos de pruebas manuales en aplicaciones web.

1. Si el tipo de prueba no es claro en la solicitud, pregunta al usuario qué tipo de pruebas desea realizar:
   - Pruebas con contexto de requisitos
   - Pruebas sin contexto de requisitos
   - Pruebas exploratorias
2. Obtener la ruta absoluta actual del proyecto donde te estas ejecutando
3. Crea una carpeta en la ruta absoluta completa `reportes\<NombreReporte>` en la raíz del proyecto para almacenar las capturas de pantalla que tomes durante las pruebas.
4. Para interactuar con el navegador web, utiliza `playwright-mcp` y si tienes dificultades para interactuar con algún elemento de la aplicación web puedes utiliza `chrome-devtools-mcp`

## Instrucciones para ejecución de pruebas con contexto de requisitos

Las siguientes pruebas sirven para validar que un sitio web haga exactamente lo que se espera según los requisitos

0. Solicita los requisitos si el usuario no los proporciona, los cuales pueden estar definidos en:
   - Casos de prueba: (Recomendado) Mejor insumo para ejecutar las pruebas.
   - Bugs: El bug debe contar con los pasos para reproducirlo y el resultado esperado.
   - [Historia de usuario, Criterios de aceptación, Requerimientos]:
     - Recomienda al usuario mejor crear primero los casos de prueba con tu skill test-case-generator para luego ejecutar las pruebas con mayor claridad y contexto.
     - Si el usuario quiere ejecutar las pruebas recuerda le que serán pruebas de smoke ya que no se cuenta con casos de prueba detallados.
1. Analiza los requisitos.
   - Pregunta le al usuario aclaraciones si la información es ambigua o contradictoria.
2. Navegar a la URL de pruebas.
3. Si es necesario iniciar sesión en la aplicación web, solicitar al usuario que realice el inicio de sesión manualmente y espera su confirmación para continuar.
4. Navega a las secciones o pantallas específicas de la aplicación web bajo prueba según los requisitos.
5. Ejecutar las pruebas de acuerdo a los requisitos proporcionados.
   - **Importante** Valida la coincidencia exacta de labels respecto a la especificación (mayúsculas, minúsculas, puntuación, ortografía, etc.)
   - Se extremadamente estricto en la validación de etiquetas (labels)
   - Si encuentras alguna discrepancia, por mínima que sea, reporta la como defecto.
6. Evidenciar los defectos encontrados tomando capturas de pantalla.
   - Modificando el CSS para resaltar los defectos, sin modificar el viewport ni hacer zoom.
   - Guarda las capturas de pantalla en la carpeta del informe de pruebas creada previamente en el `reportes\<NombreReporte>`, con nombres descriptivos relacionados al defecto identificado.
   - Luego de tomar la captura de pantalla, elimina las modificaciones del CSS para evitar que las capturas de pantalla siguientes se vean afectadas.
7. Cierra el navegador al finalizar la ejecución de las pruebas.
8. Genera un informe de pruebas siguiendo las instrucciones de tu skill report-generator.

## Instrucciones para ejecución de pruebas sin contexto de requisitos

Las siguientes pruebas sirven para validar calidad general en la pantalla solicitada, sin tener un contexto de los requisitos

1. Realiza validaciones de calidad general en la pantalla solicitada :
   - **Ortografía y gramática:** Revisión ortográfica exhaustiva en español con acentos, signos y puntuación correctos.
   - **Etiquetado y nomenclatura:** Consistencia en terminología a lo largo de la aplicación.
   - **Contraste visual (WCAG):** Verificar que los elementos cumplan con las pautas de contraste visual.
   - **Claridad visual:** Los elementos activos deben verse activos; los deshabilitados deben verse deshabilitados. Verificar que las opciones NO parezcan deshabilitadas cuando están habilitadas (evitar grises claros)
   - **Experiencia de usuario (UX):** Evaluar aspectos clave de usabilidad y experiencia de usuario.
   - **Alineación y espaciado:** Elementos correctamente alineados con espaciado consistente.
   - **Tipografía:** Tamaños legibles, jerarquía visual clara.
   - **Colores:** Uso coherente del esquema de colores corporativo.
   - **Funcionalidad de formularios:** Validar el correcto funcionamiento de formularios web.
   - Validación de campos obligatorios con indicadores visuales como asteriscos (\*).
   - Mensajes de error descriptivos y útiles.
   - Formato de datos correcto (fechas, números, emails).
   - Limites de caracteres adecuados.
   - Comportamiento correcto de habilitación/des habilitación de botones.
2. Evidenciar los defectos encontrados tomando capturas de pantalla.
   - Modificando el CSS para resaltar los defectos, sin modificar el viewport ni hacer zoom.
   - Guarda las capturas de pantalla en la carpeta del informe de pruebas creada previamente en el `reportes\<NombreReporte>`, con nombres descriptivos relacionados al defecto identificado.
   - Luego de tomar la captura de pantalla, elimina las modificaciones del CSS para evitar que las capturas de pantalla siguientes se vean afectadas.
3. Cierra el navegador al finalizar la ejecución de las pruebas.
4. Genera un informe de pruebas siguiendo las instrucciones de tu skill report-generator.

## Instrucciones para ejecución de pruebas exploratorias

Las siguientes pruebas sirven para obtener contexto general de la aplicación web y poder redactar casos de prueba detallados posteriormente con tu skill test-case-generator

1. Navega de forma guiada el usuario por la aplicación web para obtener contexto general de su funcionamiento.
2. No realices pruebas formales ni exhaustivas, el objetivo es obtener un entendimiento general de la aplicación web.
