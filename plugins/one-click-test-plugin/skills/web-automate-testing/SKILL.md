---
name: web-automate-testing
description: Habilidad para crear o actualizar proyectos de automatización E2E de pruebas web utilizando Playwright.
---

# Web automate testing

Sigue las instrucciones detalladas a continuación para crear o actualizar scripts de automatización de pruebas web utilizando Playwright.

## Creación del proyecto

Si el usuario te solicita crear un nuevo proyecto de automatización de pruebas, sigue las siguientes instrucciones:

1. Crea una nueva carpeta en la raíz del proyecto con el nombre `automate_testing`.
2. Dentro de la carpeta `automate_testing`, crea un nuevo proyecto de Playwright utilizando el comando `npm init playwright@latest` y responde a las preguntas que se te presenten de la siguiente manera:
   √ Do you want to use TypeScript or JavaScript? · TypeScript
   √ Where to put your end-to-end tests? · tests
   √ Add a GitHub Actions workflow? (Y/n) · false
   √ Install Playwright browsers (can be done manually via 'npx playwright install')? (Y/n) · true
3. Crea dentro de la carpeta `tests` un archivo `<NombrePrueba>.spec.ts` con el script de pruebas E2E solicitado por el usuario, siguiendo la estructura y sintaxis de Playwright.

- Utiliza playwright-mcp para relizar el flujo indicado por el usuario en el script de pruebas E2E.

4. Ejecuta el comando `npx playwright test` para verificar que el script de pruebas E2E se ejecute correctamente.
5. Indicale al usuario que el script de automatización de pruebas web ha sido creado exitosamente.

## Adición o actualización de scripts de automatización de pruebas web

Si el usuario te solicita agregar o actualizar scripts de automatización de pruebas web, sigue las siguientes instrucciones:

1. Solicita al usuario el nombre del script de automatización de pruebas web que desea crear o actualizar.
2. Verifica si el script ya existe en la carpeta `automate_testing\tests`.
3. Edita el archivo `<NombrePrueba>.spec.ts` existente o crea uno nuevo si no existe, siguiendo la estructura y sintaxis de Playwright.
4. Utiliza playwright-mcp para relizar el flujo indicado por el usuario en el script de pruebas E2E.
5. Ejecuta el comando `npx playwright test` para verificar que el script de pruebas E2E se ejecute correctamente.
6. Indicale al usuario que el script de automatización de pruebas web ha sido creado o actualizado exitosamente.
