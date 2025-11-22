# GUÍA PARA CAPTURAS DEL INFORME PDF

## INSTRUCCIONES PASO A PASO

### 1. PREPARACIÓN
```bash
cd /home/sebastian/vscode/evaluacion_2_bedroom_game_dev
mvn spring-boot:run
```
Esperar a que aparezca: "Started Evaluacion2BedroomGameDevApplication"

### 2. CAPTURAS DEL CÓDIGO (desde el IDE)

#### A) Captura de Entidad (@Entity)
- Abrir: `src/main/java/.../model/Usuario.java`
- Capturar código completo mostrando:
  - Anotaciones JPA (@Entity, @Table, @Id, @GeneratedValue, @Column)
  - Atributos de la clase
  - Constructores
  - Getters y Setters

#### B) Captura de Repositorio (@Repository)
- Abrir: `src/main/java/.../repository/UsuarioRepository.java`
- Capturar código completo mostrando:
  - Anotación @Repository
  - Extensión de JpaRepository
  - Métodos personalizados (findByEmail, existsByEmail)

#### C) Capturas de Servicios
**Interface:**
- Abrir: `src/main/java/.../service/IUsuarioService.java`
- Capturar métodos de la interface

**Implementación:**
- Abrir: `src/main/java/.../service/UsuarioServiceImpl.java`
- Capturar código completo mostrando:
  - Anotación @Service
  - Inyección @Autowired
  - Implementación de métodos CRUD

#### D) Captura de Controlador (@Controller)
- Abrir: `src/main/java/.../Controller/UsuarioController.java`
- Capturar código completo mostrando:
  - Anotación @Controller
  - Métodos @GetMapping y @PostMapping
  - Lógica CRUD completa

#### E) Configuración de Base de Datos
- Abrir: `src/main/resources/application.properties`
- Capturar configuración H2 y JPA

### 3. CAPTURAS FUNCIONALES (desde el navegador)

#### A) Página de Login
1. Ir a: `http://localhost:8080/login`
2. Capturar formulario vacío
3. Ingresar credenciales incorrectas → Capturar mensaje de error
4. Capturar enlace "¿No tienes cuenta? Regístrate"

#### B) Página de Registro
1. Ir a: `http://localhost:8080/registro`
2. Capturar formulario de registro
3. Intentar registrar con email existente → Capturar error
4. Registrar usuario nuevo → Capturar mensaje de éxito

#### C) Lista de Usuarios
1. Hacer login con: `juan@email.com` / `123456`
2. Capturar tabla con usuarios
3. Capturar navegación (Usuarios, Tutoriales, Cerrar Sesión)
4. Eliminar un usuario → Capturar confirmación y resultado

#### D) Página de Tutoriales
1. Ir a: `http://localhost:8080/tutoriales`
2. Capturar contenido completo
3. Mostrar navegación funcionando

#### E) Base de Datos H2
1. Ir a: `http://localhost:8080/h2-console`
2. Configurar conexión:
   - JDBC URL: `jdbc:h2:mem:testdb`
   - User Name: `sa`
   - Password: (vacío)
3. Capturar pantalla de conexión
4. Ejecutar: `SELECT * FROM usuarios;`
5. Capturar resultados de la consulta

### 4. FLUJO COMPLETO CRUD
1. **CREATE**: Registrar usuario "Test User" / "test@email.com" / "123"
2. **READ**: Ver usuario en lista
3. **LOGIN**: Hacer login con usuario creado
4. **DELETE**: Eliminar usuario desde la lista
5. **VERIFY**: Verificar eliminación en H2 console

### 5. ESTRUCTURA DEL PDF

#### Portada
- Título: "Sistema de Gestión de Usuarios con Spring Boot"
- Asignatura: "Desarrollo de Aplicaciones Web"
- Logo IPSS
- Nombre del profesor
- Tu nombre
- Fecha

#### Secciones con capturas:
1. **Introducción** (texto del INFORME_EVALUACION_2.md)
2. **Modelo de Base de Datos** (descripción + diagrama simple)
3. **Código de Entidades** (captura Usuario.java)
4. **Código de Repositorios** (captura UsuarioRepository.java)
5. **Código de Servicios** (capturas IUsuarioService + UsuarioServiceImpl)
6. **Código de Controladores** (captura UsuarioController.java)
7. **Capturas Funcionales** (todas las capturas del navegador)
8. **Conclusiones** (texto del INFORME_EVALUACION_2.md)

### 6. DATOS DE PRUEBA DISPONIBLES
```sql
-- Usuarios precargados en data.sql
juan@email.com / 123456
maria@email.com / password  
admin@email.com / admin123
```

### 7. VERIFICACIÓN FINAL
- ✅ Todas las operaciones CRUD funcionan
- ✅ Validaciones de formularios operativas
- ✅ Navegación entre páginas correcta
- ✅ Datos persisten en base de datos
- ✅ Mensajes de error/éxito se muestran
- ✅ Diseño visual consistente