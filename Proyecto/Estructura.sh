/project-root
├── public_html/                     # Carpeta pública accesible desde el navegador.
│   ├── index.html                   # Página principal que carga la aplicación Vue.js.
│   ├── assets/                      # Recursos estáticos: CSS, JS, imágenes.
│   │   ├── css/                     # Archivos de estilos personalizados.
│   │   └── js/                      # Lógica de la aplicación (Vue, llamadas API).
│   │       ├── main.js              # Punto de entrada de Vue. Inicializa la app, monta componentes.
│   │       └── components/          # Componentes Vue organizados por módulos.
│   │           ├── propiedades/     # Componentes relacionados con Propiedades.
│   │           │   ├── PropiedadesList.vue    # Componente que muestra la lista de propiedades.
│   │           │   └── PropiedadesForm.vue    # Formulario para agregar/editar propiedades.
│   │           ├── clientes/        # Componentes para la gestión de clientes.
│   │           ├── ventas/          # Componentes para el módulo de ventas.
│   │           ├── calendario/      # Componentes para calendario de pagos.
│   │           ├── pagos/           # Componentes para registro de pagos.
│   │           └── reportes/        # Componentes para visualización de reportes.
│   └── views/                       # Plantillas HTML para las diferentes vistas.
│       ├── login.html               # Página de inicio de sesión.
│       ├── dashboard.html           # Vista principal después del login.
│       └── modules/                 # Subvistas organizadas por módulos.
│
├── api/                             # Carpeta del backend (fuera del public_html por seguridad).
│   ├── controllers/                 # Controladores que manejan la lógica de negocio.
│   │   ├── PropiedadesController.php # Controla las acciones relacionadas con propiedades.
│   │   ├── ClientesController.php    # Controlador para clientes.
│   │   ├── VentasController.php      # Controlador para ventas.
│   │   ├── PagosController.php       # Controlador para pagos.
│   │   └── ReportesController.php    # Controlador para reportes.
│   │
│   ├── models/                      # Modelos que interactúan directamente con la base de datos.
│   │   ├── PropiedadesModel.php      # Llama a procedimientos almacenados relacionados con propiedades.
│   │   ├── ClientesModel.php         # Modelo para operaciones con clientes.
│   │   ├── VentasModel.php           # Modelo para operaciones con ventas.
│   │   ├── PagosModel.php            # Modelo para operaciones con pagos.
│   │   └── ReportesModel.php         # Modelo para la generación de reportes.
│   │
│   ├── middlewares/                 # Archivos que se ejecutan antes de las rutas para validación.
│   │   └── AuthMiddleware.php        # Middleware que valida el token JWT para proteger rutas.
│   │
│   ├── routes/                      # Definición de rutas API por módulo.
│   │   ├── propiedades.php           # Rutas relacionadas con las propiedades.
│   │   ├── clientes.php              # Rutas para la gestión de clientes.
│   │   ├── ventas.php                # Rutas para el módulo de ventas.
│   │   ├── pagos.php                 # Rutas para registro y gestión de pagos.
│   │   └── reportes.php              # Rutas para generar reportes.
│   │
│   ├── helpers/                     # Funciones auxiliares reutilizables.
│   │   └── ResponseHelper.php        # Facilita la respuesta en formato JSON.
│   │
│   └── config/                      # Archivos de configuración global.
│       ├── database.php              # Configuración de la conexión a la base de datos (PDO).
│       ├── firebase.php              # Configuración de Firebase para JWT.
│       └── cors.php                  # Manejo de CORS para permitir el acceso desde el frontend.
│
├── sql/                             # Archivos relacionados con la base de datos.
│   ├── procedures/                  # Carpeta con procedimientos almacenados (si se necesita documentación).
│   └── migrations/                  # Scripts para crear/actualizar la estructura de la base de datos.
│
└── logs/                            # Registro de errores, accesos, y auditorías.
