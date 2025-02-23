project-root/
├── public_html/                          # Carpeta pública
│   ├── index.html                         # Página pública (MPA)
│   ├── login.html                         # Página de login
│   └── app/                               # SPA (área privada)
│       ├── index.html                     # Entrada SPA
│       └── assets/
│           ├── js/
│           │   ├── main.js
│           │   ├── router.js
│           │   └── components/
│           └── css/
│               └── styles.css
├── api/                                   # Backend (NO accesible públicamente)
│   ├── config/
│   │   ├── database.php                   # Conexión DB
│   │   ├── cors.php                       # Configuración CORS
│   │   └── jwt_config.php                 # Configuración JWT
│   ├── errores/
│   │   └── error_logger.php               # Manejo de errores
│   ├── middlewares/
│   │   └── AuthMiddleware.php             # Verificación JWT
│   ├── controllers/
│   │   ├── AuthController.php             # Lógica de login y tokens
│   │   └── ConexionController.php         # Prueba de conexión
│   └── routes/                            # Rutas expuestas a la web
│       ├── auth.php                       # Endpoint de login
│       └── conexion.php                   # Ruta protegida
├── logs/                                  # Registro de errores
│   └── errores.log
├── vendor/                                # Librerías de Composer
├── composer.json                          # Configuración de dependencias
└── composer.lock                          # Control de versiones


project-root/
├── public_html/                          # Frontend público
│   ├── index.html                         # Página pública (MPA)
│   ├── login.html                         # Página de login (MPA)
│   └── app/                               # Sección privada (SPA)
├── api/                                   # Backend
│   ├── config/
│   │   ├── database.php                   # Conexión a MySQL
│   │   ├── cors.php                       # Configuración CORS
│   │   └── jwt_config.php                 # Configuración de claves JWT
│   ├── errores/
│   │   └── error_logger.php               # Manejo de errores
│   ├── middlewares/
│   │   └── AuthMiddleware.php             # Protección de rutas con JWT
│   ├── controllers/
│   │   ├── AuthController.php             # Controlador de autenticación
│   │   └── ConexionController.php         # Prueba de conexión
│   └── routes/
│       ├── auth.php                       # Endpoints para login/logout
│       └── conexion.php                   # Prueba de conexión
├── sql/                                   # Scripts SQL
│   └── migrations/
├── logs/                                  # Registro de errores
│   └── errores.log
├── vendor/                                # Librerías instaladas por Composer
│   └── autoload.php                       # Carga automática de clases
├── composer.json                          # Configuración de dependencias
└── composer.lock                          # Versiones exactas instaladas
