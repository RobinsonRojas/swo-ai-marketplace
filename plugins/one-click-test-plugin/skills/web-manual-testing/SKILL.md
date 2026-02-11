---
name: web-manual-testing
description: Habilidad para realizar pruebas manuales en aplicaciones web e interactuar con aplicativos web para realizar pruebas en general.
---

# Web Manual Testing

Sigue las instrucciones detalladas a continuación para realizar pruebas manuales en aplicaciones web e interactuar con aplicativos web para realizar pruebas en general.

## Instrucciones para ejecución de pruebas de aceptación

Las siguientes instrucciones sirven para validar que un sitio web haga exactamente lo que se espera según los requisitos, los cuales pueden estar definidos en: Requerimientos, Historias de usuario, Criterios de aceptación, Casos de prueba, Escenarios de prueba y/o Bugs.

1. Analiza y comprende los requisitos proporcionados por el usuario directamente en el prompt o en un Work Item de Azure DevOps.
   - Solicitar aclaraciones al usuario si la información es ambigua o contradictoria.
2. Genera una carpeta en la ruta absoluta completa `informes\<NombreInforme>` en la raíz del proyecto para almacenar las capturas de pantalla que tomes durante la prueba.
3. Navegar a la Url de pruebas usando chrome-devtools-mcp.
   - Si no cuentas con la Url de pruebas en el contexto del proyecto `.github\copilot-instructions.md`, Solicitar al usuario la Url de pruebas de la aplicación web bajo prueba.
4. Valida si es necesario iniciar sesión en la aplicación web bajo prueba.
   - Solo si se requiere autenticación, Solicitar al usuario que realice el inicio de sesión manualmente y espera su confirmación para continuar.
5. Navega a las secciones o pantallas específicas de la aplicación web bajo prueba según los criterios de aceptación.
   - Si no cuentas con los pasos de navegación en el contexto, Solicitar al usuario los pasos específicos para navegar a las secciones o pantallas indicadas en los criterios de aceptación.
6. Ejecutar las pruebas de acuerdo a los criterios de aceptación proporcionados.
   - **Importante** Valida la coincidencia exacta de labels respecto a la especificación (mayúsculas, minúsculas, puntuación, ortografía, etc.)
   - Se extremadamente estricto en la validación de etiquetas (labels)
   - Si encuentras alguna discrepancia, por mínima que sea, reporta la como defecto.
7. Evidenciar los defectos encontrados tomando capturas de pantalla.
   - No tomes capturas de pantalla de los pasos correctos. A menos que el usuario lo solicite explícitamente.
   - Toma captura de pantalla de los defecto identificados, modificando el CSS, y sin modificar el viewport ni hacer zoom.
   - Guarda las capturas de pantalla en la carpeta del informe de pruebas creada previamente, con nombres descriptivos relacionados al defecto identificado.
   - Luego de tomar la captura de pantalla, elimina las modificaciones del CSS para evitar que las capturas de pantalla siguientes se vean afectadas.
8. Genera un informe de pruebas siguiendo las instrucciones de tu skill report-generator.

## Instrucciones para ejecución de pruebas de calidad adicionales

Las siguientes instrucciones sirven para realizar pruebas de calidad adicionales en la pantalla bajo prueba solicitadas o indicadas por el usuario:

1. Genera una carpeta en la ruta absoluta completa `informes\<NombreInforme>` en la raíz del proyecto
2. validaciones:
   - **Ortografía y gramática:** Revisión ortográfica exhaustiva en español con acentos, signos y puntuación correctos.
   - **Etiquetado y nomenclatura:** Consistencia en terminología a lo largo de la aplicación.
   - **Contraste visual (WCAG):** Verificar que los elementos cumplan con las pautas de contraste visual.
   - **Claridad visual:** Los elementos activos deben verse activos; los deshabilitados deben verse deshabilitados.
   - **CRÍTICO:** Verificar que las opciones NO parezcan deshabilitadas cuando están habilitadas (evitar grises claros)
   - **Experiencia de usuario (UX):** Evaluar aspectos clave de usabilidad y diseño
   - **Consistencia:** Mismo comportamiento y estilo para componentes similares en diferentes pantallas
   - **Alineación y espaciado:** Elementos correctamente alineados con espaciado consistente
   - **Tipografía:** Tamaños legibles, jerarquía visual clara
   - **Colores:** Uso coherente del esquema de colores corporativo
   - **Funcionalidad de formularios:** Validar el correcto funcionamiento de formularios web
   - Validación de campos obligatorios con indicadores visuales como asteriscos (\*)
   - Mensajes de error descriptivos y útiles
   - Formato de datos correcto (fechas, números, emails)
   - Limites de caracteres adecuados
   - Comportamiento correcto de habilitación/des habilitación de botones
3. Evidenciar los defectos encontrados tomando capturas de pantalla.
   - No tomes capturas de pantalla de los pasos correctos. A menos que el usuario lo solicite explícitamente.
   - Toma captura de pantalla de los defecto identificados, modificando el CSS, y sin modificar el viewport ni hacer zoom.
   - Guarda las capturas de pantalla en la carpeta del informe de pruebas creada previamente, con nombres descriptivos relacionados al defecto identificado.
   - Luego de tomar la captura de pantalla, elimina las modificaciones del CSS para evitar que las capturas de pantalla siguientes se vean afectadas.
4. Genera un informe de pruebas siguiendo las instrucciones de tu skill report-generator.
