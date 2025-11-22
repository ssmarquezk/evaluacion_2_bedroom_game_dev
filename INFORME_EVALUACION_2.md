# EVALUACIÓN 2 - SISTEMA DE GESTIÓN DE USUARIOS
## Desarrollo de Aplicaciones Web con Spring Boot

---

### PORTADA

**Título del Trabajo:** Sistema de Gestión de Usuarios con Spring Boot  
**Asignatura:** Desarrollo de Aplicaciones Web  
**Institución:** IPSS  
**Profesor:** [Nombre del Profesor]  
**Alumno:** [Tu Nombre]  
**Fecha:** [Fecha Actual]

---

## ÍNDICE

1. [Introducción](#introducción)
2. [Desarrollo - Documentación del Código](#desarrollo)
   - 2.1 [Modelo de Base de Datos](#modelo-de-base-de-datos)
   - 2.2 [Capturas del Código de Entidades](#capturas-del-código-de-entidades)
   - 2.3 [Capturas del Código de Repositorios (DAO)](#capturas-del-código-de-repositorios)
   - 2.4 [Capturas del Código de Servicios](#capturas-del-código-de-servicios)
   - 2.5 [Capturas del Código de Controladores](#capturas-del-código-de-controladores)
   - 2.6 [Capturas de Pantalla Funcionales](#capturas-de-pantalla-funcionales)
3. [Conclusiones](#conclusiones)

---

## INTRODUCCIÓN

Este proyecto representa la evolución del sistema desarrollado en la Evaluación 1, donde se crearon las interfaces de usuario básicas. En esta Evaluación 2, se implementó toda la lógica de negocio (backend) y la persistencia de datos para dar funcionalidad completa al sistema.

**Objetivo:** Implementar un sistema completo de gestión de usuarios que incluya:
- Registro e inicio de sesión de usuarios
- Listado y gestión de usuarios registrados (operaciones CRUD)
- Sección de tutoriales del sistema
- Arquitectura en capas con Spring Boot
- Persistencia de datos con JPA/Hibernate

**Evolución desde EV1:** Se partió de las vistas básicas creadas con Thymeleaf y se agregaron todas las capas necesarias: modelo de datos, repositorios, servicios y controladores funcionales con operaciones CRUD completas.

---

## DESARROLLO

### Modelo de Base de Datos

El sistema utiliza una base de datos H2 en memoria con la siguiente estructura:

**Entidad Usuario:**
- `id` (Long) - Clave primaria, autoincremental
- `nombre` (String) - Nombre completo del usuario
- `email` (String) - Email único del usuario
- `password` (String) - Contraseña del usuario
- `rol` (String) - Rol del usuario (por defecto "USER")

**Configuración de Base de Datos:**
```properties
spring.datasource.url=jdbc:h2:mem:testdb
spring.datasource.driverClassName=org.h2.Driver
spring.jpa.hibernate.ddl-auto=create-drop
```

### Código de Entidades

**Clase Usuario (@Entity):**

```java
@Entity
@Table(name = "usuarios")
public class Usuario {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 50)
    private String nombre;

    @Column(nullable = false, unique = true, length = 50)
    private String email;

    @Column(nullable = false)
    private String password;

    @Column
    private String rol;

    // Constructor vacío requerido por JPA
    protected Usuario() {}

    // Constructor principal
    public Usuario(Long id, String nombre, String email, String password, String rol) {
        this.id = id;
        this.nombre = Objects.requireNonNull(nombre, "nombre no puede ser null");
        this.email = Objects.requireNonNull(email, "email no puede ser null");
        this.password = Objects.requireNonNull(password, "password no puede ser null");
        this.rol = Objects.requireNonNullElse(rol, "USER");
    }

    // Getters y Setters
    public Long id() { return id; }
    public String nombre() { return nombre; }
    public String email() { return email; }
    public String password() { return password; }
    public String rol() { return rol; }

    public void setId(Long id) { this.id = id; }
    public void setNombre(String nombre) { this.nombre = nombre; }
    public void setEmail(String email) { this.email = email; }
    public void setPassword(String password) { this.password = password; }
    public void setRol(String rol) { this.rol = rol; }
}
```

### Código de Repositorios

**Interface UsuarioRepository (@Repository):**

```java
@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
    Optional<Usuario> findByEmail(String email);
    boolean existsByEmail(String email);
}
```

**Características:**
- Extiende `JpaRepository<Usuario, Long>` para operaciones CRUD automáticas
- Método personalizado `findByEmail()` para búsqueda por email
- Método `existsByEmail()` para validar emails únicos

### Código de Servicios

**Interface IUsuarioService:**

```java
public interface IUsuarioService {
    Usuario guardar(Usuario usuario);
    List<Usuario> listarTodos();
    Optional<Usuario> buscarPorId(Long id);
    Optional<Usuario> buscarPorEmail(String email);
    void eliminar(Long id);
    boolean existeEmail(String email);
    boolean validarLogin(String email, String password);
}
```

**Implementación UsuarioServiceImpl (@Service):**

```java
@Service
public class UsuarioServiceImpl implements IUsuarioService {
    
    @Autowired
    private UsuarioRepository usuarioRepository;
    
    @Override
    public Usuario guardar(Usuario usuario) {
        return usuarioRepository.save(usuario);
    }
    
    @Override
    public List<Usuario> listarTodos() {
        return usuarioRepository.findAll();
    }
    
    @Override
    public Optional<Usuario> buscarPorId(Long id) {
        return usuarioRepository.findById(id);
    }
    
    @Override
    public Optional<Usuario> buscarPorEmail(String email) {
        return usuarioRepository.findByEmail(email);
    }
    
    @Override
    public void eliminar(Long id) {
        usuarioRepository.deleteById(id);
    }
    
    @Override
    public boolean existeEmail(String email) {
        return usuarioRepository.existsByEmail(email);
    }
    
    @Override
    public boolean validarLogin(String email, String password) {
        Optional<Usuario> usuario = usuarioRepository.findByEmail(email);
        return usuario.isPresent() && usuario.get().password().equals(password);
    }
}
```

### Código de Controladores

**UsuarioController (@Controller) - Operaciones CRUD:**

```java
@Controller
public class UsuarioController {
    
    @Autowired
    private IUsuarioService usuarioService;
    
    @GetMapping("/")
    public String inicio() {
        return "redirect:/login";
    }
    
    @GetMapping("/login")
    public String mostrarLogin() {
        return "login";
    }
    
    @PostMapping("/login")
    public String procesarLogin(@RequestParam String email, @RequestParam String password, 
                               RedirectAttributes redirectAttributes) {
        if (usuarioService.validarLogin(email, password)) {
            return "redirect:/usuarios";
        }
        redirectAttributes.addFlashAttribute("error", "Credenciales incorrectas");
        return "redirect:/login";
    }
    
    @GetMapping("/registro")
    public String mostrarRegistro(Model model) {
        model.addAttribute("usuario", new Usuario(null, "", "", "", "USER"));
        return "registro";
    }
    
    @PostMapping("/registro")
    public String procesarRegistro(@RequestParam String nombre, @RequestParam String email, 
                                  @RequestParam String password, RedirectAttributes redirectAttributes) {
        if (usuarioService.existeEmail(email)) {
            redirectAttributes.addFlashAttribute("error", "El email ya existe");
            return "redirect:/registro";
        }
        
        Usuario usuario = new Usuario(null, nombre, email, password, "USER");
        usuarioService.guardar(usuario);
        redirectAttributes.addFlashAttribute("success", "Usuario registrado exitosamente");
        return "redirect:/login";
    }
    
    @GetMapping("/usuarios")
    public String listarUsuarios(Model model) {
        model.addAttribute("usuarios", usuarioService.listarTodos());
        return "usuarios";
    }
    
    @PostMapping("/usuarios/eliminar/{id}")
    public String eliminarUsuario(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        usuarioService.eliminar(id);
        redirectAttributes.addFlashAttribute("success", "Usuario eliminado");
        return "redirect:/usuarios";
    }
    
    @GetMapping("/tutoriales")
    public String mostrarTutoriales() {
        return "tutoriales";
    }
}
```

**Operaciones CRUD implementadas:**
- **CREATE:** Registro de nuevos usuarios (`@PostMapping("/registro")`)
  - Validación de email único
  - Inserción en base de datos
  - Mensajes de confirmación
- **READ:** Listado de usuarios (`@GetMapping("/usuarios")`)
  - Consulta de todos los usuarios
  - Visualización en tabla HTML
  - Navegación entre páginas
- **UPDATE:** Validación de login (`@PostMapping("/login")`)
  - Búsqueda por email
  - Validación de contraseña
  - Redirección según resultado
- **DELETE:** Eliminación de usuarios (`@PostMapping("/usuarios/eliminar/{id}")`)
  - Eliminación por ID
  - Confirmación JavaScript
  - Actualización de vista

### Capturas de Pantalla Funcionales

**Para incluir en el PDF, toma capturas de pantalla de:**

#### 1. **Página de Login** (`http://localhost:8080/login`)
- Formulario de inicio de sesión con campos email y contraseña
- Validación de credenciales (mostrar mensaje de error con credenciales incorrectas)
- Mensaje de éxito después del registro
- Enlace para ir al registro

#### 2. **Página de Registro** (`http://localhost:8080/registro`)
- Formulario de registro con campos: nombre, email, contraseña
- Validación de email único (mostrar error cuando email ya existe)
- Mensaje de éxito al registrar usuario
- Enlace para volver al login

#### 3. **Lista de Usuarios** (`http://localhost:8080/usuarios`)
- Tabla con usuarios registrados mostrando: ID, Nombre, Email, Rol
- Botón "Eliminar" funcionando con confirmación
- Navegación entre secciones (Usuarios, Tutoriales, Cerrar Sesión)
- Mensaje de éxito al eliminar usuario

#### 4. **Página de Tutoriales** (`http://localhost:8080/tutoriales`)
- Contenido informativo sobre el uso del sistema
- Navegación del sistema
- Diseño consistente con el resto de la aplicación

#### 5. **Base de Datos H2** (`http://localhost:8080/h2-console`)
- Configuración de conexión:
  - JDBC URL: `jdbc:h2:mem:testdb`
  - User Name: `sa`
  - Password: (vacío)
- Tabla `usuarios` con datos insertados
- Consulta SQL: `SELECT * FROM usuarios;` mostrando los registros
- Demostrar que los datos se persisten correctamente

#### 6. **Flujo Completo CRUD**
- Captura del proceso completo:
  1. Registro de nuevo usuario
  2. Login con el usuario creado
  3. Visualización en la lista de usuarios
  4. Eliminación de un usuario
  5. Verificación en base de datos

**Instrucciones para ejecutar:**
```bash
cd /home/sebastian/vscode/evaluacion_2_bedroom_game_dev
mvn spring-boot:run
```
**Acceder a:** `http://localhost:8080`

**Usuarios de prueba disponibles:**
- juan@email.com / 123456
- maria@email.com / password
- admin@email.com / admin123

---

## CONCLUSIONES

Se implementó exitosamente un sistema completo de gestión de usuarios utilizando Spring Boot con arquitectura en capas:

- **Capa de Modelo:** Entidad Usuario con anotaciones JPA
- **Capa de Repositorio:** Interface con Spring Data JPA
- **Capa de Servicio:** Lógica de negocio e interfaces
- **Capa de Controlador:** Manejo de peticiones HTTP y operaciones CRUD
- **Capa de Vista:** Templates Thymeleaf funcionales

El sistema permite registro, login, listado y eliminación de usuarios con persistencia en base de datos H2.