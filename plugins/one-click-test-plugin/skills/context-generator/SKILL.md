---
name: context-generator
description: Instrucción para generar o actualizar el archivo .github\copilot-instructions.md con el contexto del proyecto.
---

# Instrucciones para generar o actualizar el contexto del proyecto

Sigue las siguientes instrucciones cuando el usuario te solicite generar o actualizar el contexto del proyecto.

1. Verifica si ya existe el archivo `.github\copilot-instructions.md` en la carpeta del proyecto actual.
2. Si no existe, informa al usuario que no tienes contexto sobre el proyecto asignado.
3. Solicita los datos necesarios para completar el contexto del proyecto
4. Genera o actualiza el contenido del archivo `.github\copilot-instructions.md` siguiendo el siguiente formato:

   ```md
   ## 🤖 Instrucciones generales para el agente ✨OneClickTest

   ### 🎯 Propósito

   Estas instrucciones definen una base de conocimiento general sobre el proyecto que Copilot debe utilizar para asistir al agente `✨OneClickTest`.

   ### 📖 Contexto del proyecto

   - **Nombre del proyecto:** Ejemplo -> BancoPichincha
   - **Descripción del proyecto:** Ejemplo -> Aplicación web para la simulación de créditos de vivienda Pichincha.
   - **Tecnologías utilizadas:** Ejemplo -> Angular
   - **Url de pruebas:** Ejemplo -> https://brave-mud-0605ba20f.3.azurestaticapps.net/
   - **Organización en Azure DevOps:** Ejemplo -> SWO-QA
   - **Proyecto en Azure DevOps:** Ejemplo -> AgenteCalidad
   ```
