# Reporte Técnico de Selección y Justificación Metodológica

**Asignatura:** Ingeniería de Software | **Unidad 1:** Cierre Sumativo  
**Proyecto Final:** Sistema de Control de Gastos Personales  
**Equipo de Desarrollo:** Equipo de tres integrantes | **Fecha:** 22/10/2026

---

## 1. Caracterización del Sistema y Entorno de Proyecto

- **Ámbito de Dominio:** Administración y control de gastos personales.

- **Problema Principal a Resolver:** Nuestro proyecto consiste en desarrollar un sistema que ayude a las personas a llevar un mejor control de su dinero. La idea es que puedan registrar sus ingresos y gastos, consultar sus movimientos y saber en qué están utilizando su dinero. Así podrán tener su información más organizada y evitar llevar todas sus cuentas en notas o apuntes separados.

- **Complejidad Técnica y Criticidad:** Aunque es un proyecto escolar, necesitamos cuidar que los registros se guarden correctamente y que las operaciones y los cálculos sean claros. También debemos considerar la seguridad de la información de cada usuario y evitar errores que puedan mostrar cantidades incorrectas.

- **Perfil de Integrantes y Cliente:** Somos un equipo de tres estudiantes y cada una tiene una responsabilidad dentro del proyecto. Sandra se encarga de organizar las necesidades y prioridades del sistema como Product Owner, Yasmin apoya con la organización del equipo como Scrum Master y Melissa participa en el desarrollo. Como es un proyecto académico, no tenemos un cliente externo confirmado; por eso, tomaremos en cuenta las necesidades que tendría una persona al utilizar un sistema para controlar sus gastos.

## 2. Evaluación Multicriterio de Alternativas Metodológicas

| Criterio de Evaluación | Enfoque Clásico (Cascada/Espiral) | Enfoque Ágil (Scrum/XP) | Enfoque Híbrido Propuesto |
|---|---|---|---|
| Gestión de Cambios | Los cambios pueden ser más complicados cuando una etapa ya terminó. | Permite hacer ajustes durante el desarrollo. | Usaremos una lista de tareas que podamos reorganizar cuando sea necesario, sin perder el control de los cambios. |
| Documentación Exigida | Se prepara documentación detallada en cada etapa. | Se busca tener la documentación necesaria sin hacerla demasiado extensa. | Haremos los documentos que nos pide la materia y los iremos actualizando conforme avance el proyecto. |
| Participación del Cliente | Se revisan los avances en momentos establecidos. | Se recibe retroalimentación con frecuencia. | Revisaremos las historias de usuario y los avances para comprobar que el sistema cumpla con lo que necesitamos. |
| Velocidad de Entrega | El sistema suele completarse después de pasar por varias etapas. | Se trabaja por partes y se muestran avances frecuentes. | Dividiremos el trabajo en Sprints de dos semanas para avanzar poco a poco y revisar cada parte antes de continuar. |

## 3. Justificación Fundada de la Metodología Seleccionada

- **Metodología Seleccionada:** Híbrido Scrum-XP.

Elegimos el enfoque híbrido Scrum-XP porque consideramos que se adapta a nuestro proyecto y a la forma en que trabajamos como equipo. Scrum nos ayuda a organizar las actividades, repartir el trabajo y establecer qué queremos terminar en cada Sprint. Por otro lado, XP nos sirve como referencia para darle importancia a las pruebas, la revisión del código y la corrección de errores durante el desarrollo.

Tomando como referencia el capítulo 2 de Sommerville, entendemos que no todos los proyectos necesitan trabajar de la misma manera. La metodología depende de lo que se quiere desarrollar, los requisitos y la forma de trabajar del equipo.

En nuestro caso, puede que durante el desarrollo encontremos cosas que necesitemos cambiar o mejorar. Por eso, creemos que trabajar por etapas cortas nos permitirá revisar los avances y corregir problemas sin esperar hasta el final. También buscaremos aprovechar mejor el tiempo, mantener organizado el trabajo y entregar un sistema que funcione correctamente.

## 4. Definición del Proceso Adaptado y Artefactos

### ¿Cómo vamos a trabajar?

Organizaremos el proyecto en Sprints de dos semanas. En cada Sprint realizaremos las siguientes actividades:

1. **Revisar las tareas:** veremos qué necesita el sistema y cuáles actividades son más importantes.
2. **Planear el Sprint:** elegiremos las historias de usuario que vamos a trabajar y repartiremos las tareas.
3. **Diseñar:** organizaremos cómo funcionará la parte del sistema que vamos a desarrollar y prepararemos los diagramas necesarios.
4. **Programar:** trabajaremos en las funciones seleccionadas y guardaremos los cambios en GitHub.
5. **Probar y revisar:** comprobaremos que las funciones trabajen correctamente y revisaremos el código antes de integrarlo.
6. **Mostrar los avances:** revisaremos qué se logró terminar y qué cosas todavía necesitan corregirse.
7. **Mejorar para el siguiente Sprint:** hablaremos de lo que funcionó, lo que se nos complicó y qué podemos hacer mejor en el siguiente ciclo.

### Documentos y herramientas que utilizaremos

Para mantener organizado el proyecto, trabajaremos con los siguientes elementos:

- **SRS o documento de requisitos:** nos ayudará a explicar qué debe hacer el sistema, tomando como referencia la estructura de IEEE 830.
- **Diagramas UML:** utilizaremos diagramas, como los de casos de uso, clases y secuencia, para representar cómo funcionará el sistema.
- **Historias de usuario y Product Backlog:** nos permitirán organizar las funciones que queremos desarrollar y decidir cuáles son más importantes.
- **Sprint Planning:** nos servirá para registrar las actividades que seleccionamos para cada Sprint.
- **Código fuente y pruebas:** aquí estará el desarrollo del sistema y las comprobaciones que hagamos para encontrar errores.
- **Manuales:** prepararemos instrucciones para explicar cómo utilizar el sistema y cómo está organizado.
- **Documentación de metodología y calidad:** mantendremos los documentos necesarios para explicar cómo trabajamos y qué reglas seguiremos para cuidar el código.

### Responsabilidades del equipo

| Rol | Integrante | ¿Qué hará? |
|---|---|---|
| Product Owner | Sandra Martinez Salinas | Organizar las necesidades del sistema, decidir qué tareas son más importantes y revisar que las funciones cumplan con lo esperado. |
| Scrum Master | Yasmin Guadalupe Quintana Rojas | Ayudar a organizar el trabajo, revisar los avances y apoyar cuando surjan dificultades. |
| Developer | Melissa Midori Quintana Mendoza | Participar en la programación, las pruebas y la documentación del sistema. |
| QA (calidad) | Las tres integrantes | Apoyarnos para probar las funciones, encontrar errores y revisar que el sistema cumpla con los requisitos. Los cambios de código deberán ser revisados por otra integrante antes de integrarse. |

## 5. Compromiso de Calidad y Gobernanza de Código

Como equipo, queremos que nuestro sistema sea fácil de entender, que funcione correctamente y que podamos modificarlo sin tantos problemas si después necesitamos agregar algo. Para lograrlo, seguiremos las reglas que definamos en los documentos `PARADIGMA.md` y `CALIDAD.md`, manteniéndolos relacionados con la manera en que trabajaremos.

### Reglas que seguiremos en GitHub

- Trabajaremos en ramas diferentes para separar las actividades y los cambios.
- Evitaremos modificar directamente la rama `main`.
- Pondremos mensajes claros en los commits para saber qué cambios hicimos.
- Subiremos los cambios mediante Pull Requests.
- Pediremos a otra integrante que revise el código antes de combinarlo con `main`.
- Comprobaremos que los cambios funcionen y cumplan con lo solicitado antes de aprobarlos.
- Actualizaremos la documentación cuando hagamos cambios importantes en el sistema.

### ¿Cómo cuidaremos la calidad del sistema?

Tomaremos como referencia la norma ISO/IEC 25010 para considerar diferentes aspectos de calidad:

- **Funcionalidad:** que el sistema permita registrar y consultar ingresos y gastos como esperamos.
- **Fiabilidad:** que los datos se guarden correctamente y los cálculos sean consistentes.
- **Usabilidad:** que las opciones sean fáciles de entender y utilizar.
- **Seguridad:** que la información de los usuarios esté protegida de acuerdo con el alcance del proyecto.
- **Mantenibilidad:** que el código esté ordenado y sea entendible para poder corregirlo o mejorarlo después.

También utilizaremos pruebas para comprobar las funciones y, cuando definamos las herramientas necesarias, podremos apoyarnos en programas que revisen el estilo y algunos errores del código.

### ¿Qué haremos cuando haya cambios?

Si encontramos una función que necesita modificarse o queremos agregar algo nuevo, registraremos la tarea en GitHub y revisaremos su importancia. Después, decidiremos cuándo trabajarla según las demás actividades pendientes. Antes de integrar los cambios a `main`, otra integrante deberá revisar el Pull Request para ayudarnos a detectar errores y mantener un registro de lo que se ha modificado.

## Conclusión

Elegimos trabajar con un enfoque híbrido Scrum-XP porque nos permite organizarnos mejor, dividir el proyecto en partes y revisar nuestros avances constantemente. Sabemos que durante el desarrollo pueden surgir dificultades o nuevas ideas, por lo que trabajar en Sprints nos ayudará a hacer ajustes y aprender de cada etapa. Además, con las pruebas, la documentación y las revisiones en GitHub buscaremos que nuestro Sistema de Control de Gastos Personales sea claro, útil y funcione correctamente.