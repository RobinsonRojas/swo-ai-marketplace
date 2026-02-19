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

- Utiliza playwright-mcp para realizar el flujo indicado por el usuario en el script de pruebas E2E.

4. Ejecuta el comando `npx playwright test` para verificar que el script de pruebas E2E se ejecute correctamente.
5. Configura el archivo `playwright.config.ts` para incluir la siguiente configuracion:
   ```typescript
   reporter: [
    ['html'],
    ['junit', { outputFile: 'test-results/e2e-junit-results.xml' }]
   ],
   ```
6. Crea el archivo que tienes en - **examples/** - (`azure-pipelines.yml`) - Para ejecutar las pruebas en el pipeline de Azure DevOps.
7. Indica le al usuario que el script de automatización de pruebas web ha sido creado exitosamente.
8. pregúntale al usuario si desea subir el proyecto a un repositorio de Git en Azure DevOps, si la respuesta es afirmativa, sigue las siguientes instrucciones:
   1. Crea consulta los repositorios de Git disponibles utilizando azure-devops-mcp
   2. inicializa un nuevo repositorio Git en la carpeta `automate_testing` utilizando el comando `git init`.
   3. Agrega todos los archivos al repositorio utilizando el comando `git add .`
   4. Realiza un commit inicial utilizando el comando `git commit -m "Initial commit"`
   5. Push an existing repository from command line
      ```Git
      git remote add origin https://SWO-QA@dev.azure.com/SWO-QA/BancoPichinchaDemo/\_git/automate_testing
      git push -u origin --all
      Push an existing repository from command line
      ```
9. Indica al usuario que el proyecto de automatización de pruebas web ha sido subido exitosamente al repositorio de Git en Azure DevOps.

## Adición o actualización de scripts de automatización de pruebas web

Si el usuario te solicita agregar o actualizar scripts de automatización de pruebas web, sigue las siguientes instrucciones:

1. Solicita al usuario el nombre del script de automatización de pruebas web que desea crear o actualizar.
2. Verifica si el script ya existe en la carpeta `automate_testing\tests`.
3. Edita el archivo `<NombrePrueba>.spec.ts` existente o crea uno nuevo si no existe, siguiendo la estructura y sintaxis de Playwright.
4. Utiliza playwright-mcp para realizar el flujo indicado por el usuario en el script de pruebas E2E.
5. Ejecuta el comando `npx playwright test` para verificar que el script de pruebas E2E se ejecute correctamente.
6. Indica le al usuario que el script de automatización de pruebas web ha sido creado o actualizado exitosamente.
