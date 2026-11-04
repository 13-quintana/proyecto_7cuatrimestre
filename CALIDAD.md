s# MATRIZ DE ATRIBUTOS DE CALIDAD Y ESTÁNDARES
## SOMMERVILLE CAP. 24

### 1. Mantenibilidad (Maintainability)

- **Métrica Objetivo:** Máximo 15 líneas por función; complejidad ciclomática < 5.
- **Estándar de Codificación:** Cumplimiento del estándar PEP 8 mediante Flake8 con 0 advertencias de sintaxis.
- **Nomenclatura:** Identificadores significativos en español o inglés (variables `snake_case`, clases `PascalCase`).

### 2. Confiabilidad y Seguridad (Dependability & Security)

- **Validación de Entradas:** Manejo explícito de excepciones mediante bloques `try-except`, evitando capturas genéricas.
- **Control de Datos:** Exclusión de credenciales, contraseñas o tokens en el código fuente mediante `.gitignore`.

### 3. Eficiencia (Efficiency)

- **Uso de Memoria:** Liberación explícita de recursos y uso de estructuras de datos adecuadas, considerando el uso de listas y diccionarios según las necesidades del programa.

### 4. Aceptabilidad (Acceptability)

- **Documentación de Funciones:** Todo método público debe incluir un docstring explicativo breve sobre sus parámetros y retornos.

- ### 5. Revisión de calidad

- **Legibilidad:** El código debe mantener una estructura clara y fácil de comprender.
- **Comentarios:** Se deben agregar comentarios únicamente cuando ayuden a explicar partes importantes del código.
- **Revisión:** Antes de integrar cambios a la rama principal, se debe comprobar que el código cumpla con los estándares definidos.
