# MODELO DE BASE DE DATOS ACTUALIZADO

## Diagrama Entidad-Relación

```
┌─────────────────────────────────────┐       ┌─────────────────────────────────────┐
│              USUARIOS               │       │             TUTORIALES              │
├─────────────────────────────────────┤       ├─────────────────────────────────────┤
│ PK  id          BIGINT (AUTO_INC)   │<------|│ PK  id          BIGINT (AUTO_INC)   │
│     nombre      VARCHAR(50) NOT NULL│    1:N│     titulo      VARCHAR(100)NOT NULL│
│ UK  email       VARCHAR(50) NOT NULL│       │     imagen      VARCHAR(255)        │
│     password    VARCHAR(255)NOT NULL│       │     cuerpo      TEXT NOT NULL       │
│     rol         VARCHAR(20)         │       │     descripcion VARCHAR(500)        │
└─────────────────────────────────────┘       │ FK  usuario_id  BIGINT NOT NULL     │
                                              └─────────────────────────────────────┘
```

## Descripción de las Entidades

### Tabla: USUARIOS
- **Propósito**: Almacenar información de usuarios del sistema
- **Tipo**: Entidad principal del dominio

### Atributos Usuario:
- **id** (BIGINT, PK, AUTO_INCREMENT) - Clave primaria
- **nombre** (VARCHAR(50), NOT NULL) - Nombre completo del usuario
- **email** (VARCHAR(50), UNIQUE, NOT NULL) - Email único para login
- **password** (VARCHAR(255), NOT NULL) - Contraseña del usuario
- **rol** (VARCHAR(20)) - Rol del usuario (USER/ADMIN)
- **tutoriales** (List<Tutorial>) - Relación OneToMany con tutoriales

### Tabla: TUTORIALES
- **Propósito**: Almacenar tutoriales creados por usuarios
- **Tipo**: Entidad dependiente de Usuario

### Atributos Tutorial:
- **id** (BIGINT, PK, AUTO_INCREMENT) - Clave primaria
- **titulo** (VARCHAR(100), NOT NULL) - Título del tutorial
- **imagen** (VARCHAR(255)) - URL de imagen del tutorial
- **cuerpo** (TEXT, NOT NULL) - Contenido completo del tutorial
- **descripcion** (VARCHAR(500)) - Descripción breve del tutorial
- **usuario_id** (BIGINT, FK, NOT NULL) - Clave foránea hacia Usuario
- **usuario** (Usuario) - Relación ManyToOne con usuario creador

## Relaciones

### Relación Usuario - Tutorial (Uno a Muchos)
- **Usuario** puede crear **muchos Tutoriales**
- **Tutorial** pertenece a **un Usuario**
- Implementada con anotaciones JPA:
  - `@OneToMany(mappedBy = "usuario", cascade = CascadeType.ALL)` en Usuario
  - `@ManyToOne` y `@JoinColumn(name = "usuario_id")` en Tutorial
- Cascada configurada para eliminar tutoriales al eliminar usuario

## Configuración JPA

### Anotaciones utilizadas:
- `@Entity`: Marca las clases como entidades JPA
- `@Table`: Especifica nombres de tablas
- `@Id`: Marca campos como claves primarias
- `@GeneratedValue(strategy = GenerationType.IDENTITY)`: Generación automática de ID
- `@Column`: Configuración específica de columnas
- `@OneToMany` / `@ManyToOne`: Relaciones entre entidades
- `@JoinColumn`: Especifica columna de unión para FK

### Configuración de Base de Datos:
- **Motor**: H2 Database (en memoria)
- **URL**: `jdbc:h2:mem:testdb`
- **Estrategia DDL**: `create-drop`
- **Datos iniciales**: Cargados desde `data.sql`

## Operaciones CRUD Implementadas

### Para Usuarios:
- **CREATE**: Registro de nuevos usuarios
- **READ**: Login y listado de usuarios
- **UPDATE**: Validación de credenciales
- **DELETE**: Eliminación de usuarios por ID

### Para Tutoriales:
- **CREATE**: Creación de nuevos tutoriales por usuario
- **READ**: Listado de todos los tutoriales y por usuario específico
- **UPDATE**: Edición de tutoriales existentes
- **DELETE**: Eliminación de tutoriales por ID

## Funcionalidades del Sistema

### Gestión de Usuarios:
- Registro e inicio de sesión
- Listado de usuarios registrados
- Eliminación de usuarios

### Gestión de Tutoriales:
- Crear tutoriales con título, imagen, descripción y contenido
- Listar tutoriales propios del usuario
- Editar tutoriales existentes
- Eliminar tutoriales
- Ver todos los tutoriales públicos del sistema

### Navegación:
- Dashboard personal de tutoriales después del login
- Vista pública de todos los tutoriales
- Gestión administrativa de usuarios