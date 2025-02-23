# Z10

## 🔍 **Explicación Detallada por Sección**

### **1. public_html/** - *(Frontend y recursos públicos)*

Esta carpeta contiene todo lo que será visible y accesible desde el navegador.

- **index.html:** Carga la aplicación Vue y define el punto de entrada.
- **assets/css/:** Almacena los estilos personalizados que complementan el diseño.
- **assets/js/:** Contiene la inicialización de Vue y los componentes que interactúan con la API.
- **components/:** Cada módulo tiene su subcarpeta para mantener los componentes separados.
- **views/:** Plantillas HTML que actúan como contenedores de los componentes Vue.

🔑 **Objetivo:** Mantener el frontend modular y organizado para facilitar el mantenimiento y la escalabilidad.

---

### **2. api/** - *(Backend seguro y aislado)*

Esta carpeta maneja toda la lógica del lado servidor y la comunicación con la base de datos.

### 📝 **controllers/** *(Controladores)*

Actúan como puente entre las rutas y los modelos:

- Validan y procesan datos entrantes.
- Llaman a los métodos correspondientes del modelo.
- Devuelven respuestas formateadas.

### 🗃️ **models/** *(Modelos)*

Se encargan de interactuar directamente con la base de datos:

- Ejecutan procedimientos almacenados utilizando PDO.
- Devuelven los resultados al controlador.

### 🛡️ **middlewares/** *(Intermediarios de seguridad)*

- `AuthMiddleware.php`: Verifica que el token JWT sea válido antes de permitir el acceso a las rutas protegidas.

### 🗂️ **routes/** *(Rutas API)*

Define los endpoints de la API por módulo.

Ejemplo:

- **GET** `/api/routes/propiedades.php` → Obtiene todas las propiedades.
- **POST** `/api/routes/propiedades.php` → Crea una nueva propiedad.

### 🛠️ **helpers/** *(Funciones de ayuda)*

- `ResponseHelper.php`: Facilita la devolución de respuestas consistentes en formato JSON.

### ⚙️ **config/** *(Configuraciones globales)*

- `database.php`: Conexión a MySQL usando PDO para prevenir inyecciones SQL.
- `firebase.php`: Manejo de autenticación con Firebase para gestionar los JWT.
- `cors.php`: Permite que solo ciertos orígenes accedan a la API, reforzando la seguridad.

🔑 **Objetivo:** Asegurar que la lógica del backend sea independiente, segura, y fácil de extender.

---

### **3. sql/** - *(Gestión de la base de datos)*

Aunque la estructura no se tocará directamente aquí, es útil tener:

- **procedures/:** Documentación o scripts de respaldo para los procedimientos almacenados.
- **migrations/:** Permite controlar cambios en la base de datos a lo largo del tiempo.

🔑 **Objetivo:** Mantener un control claro y versionado sobre la estructura de datos.

---

### **4. logs/** - *(Monitoreo y auditoría)*

Archivos de registro para:

- Errores del backend.
- Accesos indebidos o fallidos.
- Auditoría de cambios críticos.

🔑 **Objetivo:** Mejorar la trazabilidad y facilitar la detección de problemas.

---

## 🧭 **Flujo de Datos en la Aplicación (Resumen)**

1. **El usuario ingresa desde `index.html`.**
2. **Vue.js** solicita datos a la API usando `fetch` o `axios`, enviando el token JWT si es necesario.
3. **API Gateway (rutas)** recibe la solicitud y pasa por el middleware para validar autenticación.
4. **Controlador** procesa la solicitud, valida datos y llama al **modelo** correspondiente.
5. **Modelo** ejecuta un **procedimiento almacenado** y devuelve los resultados.
6. **Controlador** devuelve la respuesta formateada usando `ResponseHelper.php`.
7. **Frontend** recibe la respuesta en JSON y actualiza la interfaz.

---

## 🧩 **Ventajas de esta Estructura**

✅ Modularidad: Cada módulo es independiente y fácil de mantener.

✅ Seguridad: Uso de JWT, middleware y procedimientos almacenados.

✅ Escalabilidad: La estructura soporta la adición de nuevos módulos fácilmente.

✅ Separación de responsabilidades: Claridad entre frontend, backend y base de datos.

✅ Preparación para el futuro: Código limpio, ordenado y listo para integraciones futuras.

---