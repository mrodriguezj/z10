project-root/
├── public_html/                          # Archivos públicos accesibles desde el navegador
│   ├── index.html                         # Página de inicio (MPA - pública)
│   ├── about.html                         # Página "Acerca de" (MPA - pública)
│   ├── contact.html                       # Página de contacto (MPA - pública)
│   ├── login.html                         # Página de inicio de sesión (MPA - pública)
│   └── app/                               # Sección privada (SPA - protegida por login)
│       ├── index.html                     # Punto de entrada de la SPA (dashboard)
│       └── assets/
│           ├── js/
│           │   ├── main.js                # Inicialización de la SPA con Vue
│           │   ├── router.js              # Manejo de rutas dentro de la SPA
│           │   ├── store.js               # Gestión de estado (opcional, si se necesita)
│           │   └── components/            # Componentes reutilizables de Vue
│           │       ├── sidebar/           # Menú lateral y navegación
│           │       │   └── Sidebar.vue
│           │       ├── clientes/          # Módulo de clientes
│           │       │   ├── ClientesList.vue
│           │       │   └── ClientesForm.vue
│           │       ├── propiedades/       # Módulo de propiedades
│           │       ├── ventas/            # Módulo de ventas
│           │       ├── pagos/             # Módulo de pagos
│           │       └── reportes/          # Módulo de reportes
│           └── css/
│               └── styles.css             # Estilos globales
├── api/                                   # Backend y API (fuera de public_html por seguridad)
│   ├── config/
│   │   ├── database.php                   # Conexión a la base de datos (PDO)
│   │   └── cors.php                       # Configuración de CORS
│   ├── errores/
│   │   └── error_logger.php               # Manejo y registro de errores
│   ├── middlewares/
│   │   └── AuthMiddleware.php             # Verificación de JWT y protección de rutas
│   ├── controllers/                       # Lógica de negocio
│   │   ├── AuthController.php             # Manejo de autenticación
│   │   ├── ClientesController.php         # Controlador para clientes
│   │   ├── PropiedadesController.php      # Controlador para propiedades
│   │   ├── VentasController.php           # Controlador para ventas
│   │   ├── PagosController.php            # Controlador para pagos
│   │   └── ReportesController.php         # Controlador para reportes
│   └── routes/                            # Definición de endpoints
│       ├── auth.php                       # Rutas de autenticación (login, logout, refresh)
│       ├── clientes.php                   # Endpoints para clientes
│       ├── propiedades.php                # Endpoints para propiedades
│       ├── ventas.php                     # Endpoints para ventas
│       ├── pagos.php                      # Endpoints para pagos
│       └── reportes.php                   # Endpoints para reportes
├── sql/                                   # Scripts relacionados con la base de datos
│   ├── procedures/                        # Procedimientos almacenados
│   └── migrations/                        # Scripts para creación y actualización de tablas
└── logs/                                  # Registro de errores y auditoría
    └── errores.log                        # Archivo centralizado de logs
