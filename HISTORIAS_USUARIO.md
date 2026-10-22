# Inventario de Historias de Usuario - Proyecto Final

# Historia de Usuario HU-01: Registro de usuarios
- **ID:** HU-01
- **Nombre:** Registro de usuarios
- **Como:** Persona que desea llevar un control de sus gastos personales.
- **Quiero:** Crear una cuenta con mis datos personales y una contraseña.
- **Para:** Tener un espacio propio donde pueda registrar y consultar mis movimientos financieros.
- **Estimación (Story Points):** 3
- **Prioridad:** Alta
- **Criterios de Aceptación (Gherkin):**
  - **Escenario 1 (Registro exitoso):** **Dado que** una persona se encuentra en el formulario de registro y proporciona los datos requeridos, **Cuando** confirma el registro con información válida, **Entonces** el sistema crea su cuenta y muestra un mensaje de confirmación.
  - **Escenario 2 (Datos incompletos):** **Dado que** una persona se encuentra en el formulario de registro, **Cuando** intenta crear su cuenta sin completar los campos obligatorios, **Entonces** el sistema indica qué información necesita completar.

# Historia de Usuario HU-02: Inicio de sesión
- **ID:** HU-02
- **Nombre:** Inicio de sesión
- **Como:** Usuario registrado.
- **Quiero:** Iniciar sesión con mi correo electrónico y contraseña.
- **Para:** Acceder de forma segura a mi información financiera.
- **Estimación (Story Points):** 3
- **Prioridad:** Alta
- **Criterios de Aceptación (Gherkin):**
  - **Escenario 1 (Acceso exitoso):** **Dado que** tengo una cuenta registrada, **Cuando** ingreso mis credenciales correctas, **Entonces** el sistema me permite acceder a mi cuenta.
  - **Escenario 2 (Credenciales incorrectas):** **Dado que** estoy en la pantalla de inicio de sesión, **Cuando** ingreso un correo o contraseña incorrectos, **Entonces** el sistema rechaza el acceso y muestra un mensaje de error.

# Historia de Usuario HU-03: Registro de gastos personales
- **ID:** HU-03
- **Nombre:** Registro de gastos personales
- **Como:** Usuario del sistema.
- **Quiero:** Registrar mis gastos indicando el monto, la fecha, la categoría y una descripción.
- **Para:** Llevar un control de en qué estoy utilizando mi dinero.
- **Estimación (Story Points):** 5
- **Prioridad:** Alta
- **Criterios de Aceptación (Gherkin):**
  - **Escenario 1 (Gasto registrado):** **Dado que** inicié sesión y estoy en el formulario de gastos, **Cuando** ingreso un monto válido, una fecha, una categoría y una descripción, **Entonces** el sistema guarda el gasto y lo muestra en mi historial.
  - **Escenario 2 (Monto inválido):** **Dado que** estoy registrando un gasto, **Cuando** ingreso un monto igual o menor que cero o dejo vacío el campo del monto, **Entonces** el sistema no guarda el movimiento y me indica que debo ingresar un monto válido.

# Historia de Usuario HU-04: Registro de ingresos
- **ID:** HU-04
- **Nombre:** Registro de ingresos personales
- **Como:** Usuario del sistema.
- **Quiero:** Registrar mis ingresos indicando el monto, la fecha, la categoría y una descripción.
- **Para:** Saber cuánto dinero recibo y tener un registro de mis entradas de dinero.
- **Estimación (Story Points):** 3
- **Prioridad:** Alta
- **Criterios de Aceptación (Gherkin):**
  - **Escenario 1 (Ingreso registrado):** **Dado que** inicié sesión y estoy en el formulario de ingresos, **Cuando** ingreso los datos requeridos con un monto válido, **Entonces** el sistema guarda el ingreso y lo agrega a mi historial.
  - **Escenario 2 (Datos inválidos):** **Dado que** estoy registrando un ingreso, **Cuando** dejo vacío el monto o ingreso un valor igual o menor que cero, **Entonces** el sistema impide guardar el registro y muestra un mensaje para corregirlo.

# Historia de Usuario HU-05: Resumen financiero
- **ID:** HU-05
- **Nombre:** Consulta del resumen financiero
- **Como:** Usuario del sistema.
- **Quiero:** Consultar un resumen de mis ingresos, gastos y saldo disponible.
- **Para:** Entender cómo están mis finanzas y tomar mejores decisiones sobre mi dinero.
- **Estimación (Story Points):** 5
- **Prioridad:** Alta
- **Criterios de Aceptación (Gherkin):**
  - **Escenario 1 (Resumen con movimientos):** **Dado que** tengo ingresos y gastos registrados, **Cuando** abro el resumen financiero, **Entonces** el sistema muestra el total de ingresos, el total de gastos y el saldo calculado con base en esos movimientos.
  - **Escenario 2 (Sin movimientos):** **Dado que** todavía no he registrado ingresos ni gastos, **Cuando** consulto el resumen financiero, **Entonces** el sistema muestra los valores en cero y no presenta errores.

# Historia de Usuario HU-06: Historial de movimientos
- **ID:** HU-06
- **Nombre:** Consulta y filtrado del historial de movimientos
- **Como:** Usuario del sistema.
- **Quiero:** Consultar mis ingresos y gastos anteriores y filtrarlos por fecha o categoría.
- **Para:** Encontrar movimientos específicos y revisar cómo he utilizado mi dinero.
- **Estimación (Story Points):** 3
- **Prioridad:** Media
- **Criterios de Aceptación (Gherkin):**
  - **Escenario 1 (Consulta con resultados):** **Dado que** tengo movimientos financieros registrados, **Cuando** consulto el historial y selecciono un periodo o categoría, **Entonces** el sistema muestra los movimientos que coinciden con los filtros seleccionados.
  - **Escenario 2 (Sin resultados):** **Dado que** selecciono un periodo o categoría sin movimientos registrados, **Cuando** aplico el filtro, **Entonces** el sistema muestra un mensaje indicando que no se encontraron movimientos.

