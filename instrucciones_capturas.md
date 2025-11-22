# INSTRUCCIONES PARA CAPTURAS DE PANTALLA

## Pasos para obtener las capturas necesarias para el informe:

### 1. Ejecutar la aplicación
```bash
cd /home/sebastian/vscode/evaluacion_2_bedroom_game_dev
mvn spring-boot:run
```

### 2. Tomar capturas de las siguientes páginas:

#### A) Página de Login (http://localhost:8080/login)
- Captura del formulario vacío
- Captura con mensaje de error (credenciales incorrectas)
- Captura con mensaje de éxito (después del registro)

#### B) Página de Registro (http://localhost:8080/registro)
- Captura del formulario de registro
- Captura con mensaje de error (email duplicado)

#### C) Lista de Usuarios (http://localhost:8080/usuarios)
- Captura de la tabla con usuarios registrados
- Captura del proceso de eliminación (confirmación)

#### D) Página de Tutoriales (http://localhost:8080/tutoriales)
- Captura de la página completa con navegación

#### E) Consola H2 (http://localhost:8080/h2-console)
- Configuración de conexión:
  - JDBC URL: jdbc:h2:mem:testdb
  - User Name: sa
  - Password: (vacío)
- Captura de la tabla usuarios con datos
- Captura de una consulta SQL: `SELECT * FROM usuarios;`

### 3. Capturas del código (desde el IDE):
- Usuario.java (entidad completa)
- UsuarioRepository.java (interface completa)
- IUsuarioService.java (interface)
- UsuarioServiceImpl.java (implementación)
- UsuarioController.java (controlador completo)
- application.properties (configuración de BD)

### 4. Flujo de prueba sugerido:
1. Acceder a /login
2. Ir a registro y crear un usuario
3. Hacer login con el usuario creado
4. Ver la lista de usuarios
5. Crear otro usuario desde registro
6. Eliminar un usuario desde la lista
7. Verificar en H2 console los datos

### 5. Para el PDF:
- Usar el archivo INFORME_EVALUACION_2.md como base
- Insertar las capturas en las secciones correspondientes
- Convertir a PDF manteniendo el formato