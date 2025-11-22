# MODELO DE BASE DE DATOS

## Diagrama Entidad-Relación

```
┌─────────────────────────────────────┐
│              USUARIOS               │
├─────────────────────────────────────┤
│ PK  id          BIGINT (AUTO_INC)   │
│     nombre      VARCHAR(50) NOT NULL│
│ UK  email       VARCHAR(50) NOT NULL│
│     password    VARCHAR(255)NOT NULL│
│     rol         VARCHAR(20)         │
└─────────────────────────────────────┘
```

## Descripción de la Entidad

### Tabla: USUARIOS
- **Propósito**: Almacenar información de usuarios del sistema
- **Tipo**: Entidad principal del dominio

### Atributos:
- **id** (BIGINT, PK, AUTO_INCREMENT)
  - Clave primaria
  - Generada automáticamente
  - Estrategia: IDENTITY

- **nombre** (VARCHAR(50), NOT NULL)
  - Nombre completo del usuario
  - Longitud máxima: 50 caracteres
  - Campo obligatorio

- **email** (VARCHAR(50), UNIQUE, NOT NULL)
  - Correo electrónico del usuario
  - Clave única (no se permiten duplicados)
  - Usado para login
  - Campo obligatorio

- **password** (VARCHAR(255), NOT NULL)
  - Contraseña del usuario
  - Almacenada en texto plano (para propósitos educativos)
  - Campo obligatorio

- **rol** (VARCHAR(20))
  - Rol del usuario en el sistema
  - Valores típicos: "USER", "ADMIN"
  - Valor por defecto: "USER"

## Configuración JPA

### Anotaciones utilizadas:
- `@Entity`: Marca la clase como entidad JPA
- `@Table(name = "usuarios")`: Especifica el nombre de la tabla
- `@Id`: Marca el campo como clave primaria
- `@GeneratedValue(strategy = GenerationType.IDENTITY)`: Generación automática de ID
- `@Column`: Configuración específica de columnas (nullable, unique, length)

### Configuración de Base de Datos:
- **Motor**: H2 Database (en memoria)
- **URL**: `jdbc:h2:mem:testdb`
- **Estrategia DDL**: `create-drop` (recrea tablas en cada ejecución)
- **Datos iniciales**: Cargados desde `data.sql`

## Relaciones
En esta versión del sistema, la entidad Usuario es independiente y no tiene relaciones con otras entidades. El diseño está preparado para futuras expansiones donde se podrían agregar entidades como:
- Libros (si se implementa el sistema de biblioteca)
- Roles (para manejo más complejo de permisos)
- Sesiones (para control de sesiones activas)

## Operaciones CRUD Implementadas
- **CREATE**: Inserción de nuevos usuarios via registro
- **READ**: Consulta de usuarios para login y listado
- **UPDATE**: Implícito en validación de login
- **DELETE**: Eliminación de usuarios por ID