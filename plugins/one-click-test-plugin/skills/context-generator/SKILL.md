---
name: context-generator
description: Habilidad para generar o actualizar el archivo .github\copilot-instructions.md con el contexto del proyecto.
---

# Context Generator Skill

## 🎯 Objetivo

Generar o actualizar el archivo de instrucciones del proyecto `.github\copilot-instructions.md` mediante datos solicitados al usuario, recopilando información esencial del proyecto para que el agente ✨OneClickTest pueda operar más eficientemente.

## 📋 Flujo de Trabajo

### Paso 1: Detección del estado actual

1. Verifica si existe el archivo `.github\copilot-instructions.md` en el workspace actual.
2. Determina la acción a realizar:
   - **Si NO existe**: Procede a crear uno nuevo recopilando toda la información (ve al Paso 2).
   - **Si existe**: Pregunta al usuario si desea actualizarlo. Si acepta, muestra el contenido actual y pregunta qué campos desea modificar.

### Paso 2: Recopilación de información

Solicita los siguientes datos **uno por uno** en orden secuencial. Si es una actualización, solo pregunta por los campos que el usuario quiera modificar.

#### Datos obligatorios:

1. **Nombre del proyecto**: Identificador del proyecto.
2. **Descripción del proyecto**: Breve descripción del propósito y funcionalidad principal.
3. **Tecnologías utilizadas**: Stack tecnológico (frameworks, lenguajes, etc.).
4. **URL del ambiente de pruebas**: URL donde se despliega el ambiente de testing.

#### Datos condicionales (Azure DevOps):

5. **¿Utiliza Azure DevOps?**: Pregunta si el proyecto usa Azure DevOps como herramienta de gestión.
   - **Si la respuesta es NO**: Omite los siguientes campos y ve al Paso 3.
   - **Si la respuesta es SÍ**: Solicita:
     - **Organización en Azure DevOps**: Nombre de la organización.
     - **Proyecto en Azure DevOps**: Nombre del proyecto dentro de la organización.

### Paso 3: Confirmación

1. Muestra un resumen de todos los datos recopilados en formato de lista.
2. Pregunta: "¿Confirmas que estos datos son correctos?"
3. Si el usuario confirma, procede al Paso 4.
4. Si el usuario indica cambios, permite editar los campos necesarios.

### Paso 4: Generación/Actualización

1. **Si se recopilaron datos de Azure DevOps**:
   - Crea o actualiza la variable de entorno del usuario con el comando:
     ```powershell
     [Environment]::SetEnvironmentVariable("AZURE_DEVOPS_PROJECT", "<organizacion>", "User")
     ```
     _(Reemplaza `<organizacion>` con el valor proporcionado)_

2. **Crea o actualiza el archivo** `.github\copilot-instructions.md` con el siguiente formato:

```markdown
# 🤖 Contexto e instrucciones generales para el agente ✨OneClickTest

## 🎯 Propósito

Estas instrucciones definen una base de conocimiento general sobre el proyecto que el agente `✨OneClickTest` va a trabajar y pueda operar más eficientemente.

### 📖 Contexto del proyecto

- **Nombre del proyecto**: <nombre-del-proyecto>
- **Descripción del proyecto**: <descripcion>
- **Tecnologías utilizadas**: <tecnologias>
- **URL del ambiente de pruebas**: <url>
- **Organización en Azure DevOps**: <organizacion> _(solo si aplica)_
- **Proyecto en Azure DevOps**: <proyecto-azure> _(solo si aplica)_
```

3. **Confirma la operación**: Informa al usuario que el archivo fue creado/actualizado exitosamente.
