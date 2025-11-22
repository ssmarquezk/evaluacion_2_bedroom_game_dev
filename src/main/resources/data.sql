-- Datos de prueba para la aplicación - 50 usuarios y 50 tutoriales
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Juan Pérez', 'juan@email.com', '123456', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('María García', 'maria@email.com', 'password', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Admin Sistema', 'admin@email.com', 'admin123', 'ADMIN');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('ejemplo', 'ejemplo@ejemplo.cl', 'ejemplo', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Carlos López', 'carlos@email.com', 'pass123', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Ana Martínez', 'ana@email.com', 'ana456', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Pedro Sánchez', 'pedro@email.com', 'pedro789', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Laura Rodríguez', 'laura@email.com', 'laura123', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Miguel Torres', 'miguel@email.com', 'miguel456', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Sofia Herrera', 'sofia@email.com', 'sofia789', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Diego Morales', 'diego@email.com', 'diego123', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Valentina Cruz', 'valentina@email.com', 'val456', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Andrés Jiménez', 'andres@email.com', 'andres789', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Camila Vargas', 'camila@email.com', 'camila123', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Sebastián Ruiz', 'sebastian@email.com', 'seb456', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Isabella Mendoza', 'isabella@email.com', 'isa789', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Mateo Castillo', 'mateo@email.com', 'mateo123', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Lucía Ortega', 'lucia@email.com', 'lucia456', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Nicolás Ramos', 'nicolas@email.com', 'nico789', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Martina Silva', 'martina@email.com', 'martina123', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Joaquín Flores', 'joaquin@email.com', 'joaquin456', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Emilia Castro', 'emilia@email.com', 'emilia789', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Tomás Guerrero', 'tomas@email.com', 'tomas123', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Renata Peña', 'renata@email.com', 'renata456', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Maximiliano Vega', 'max@email.com', 'max789', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Antonella Romero', 'antonella@email.com', 'anto123', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Benjamín Aguilar', 'benjamin@email.com', 'ben456', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Julieta Medina', 'julieta@email.com', 'juli789', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Ignacio Paredes', 'ignacio@email.com', 'nacho123', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Florencia Soto', 'florencia@email.com', 'flor456', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Facundo Núñez', 'facundo@email.com', 'facu789', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Delfina Moreno', 'delfina@email.com', 'delfi123', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Thiago Cabrera', 'thiago@email.com', 'thiago456', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Amparo Delgado', 'amparo@email.com', 'amparo789', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Lautaro Herrera', 'lautaro@email.com', 'lauta123', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Pilar Contreras', 'pilar@email.com', 'pilar456', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Agustín Molina', 'agustin@email.com', 'agus789', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Catalina Espinoza', 'catalina@email.com', 'cata123', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Bruno Valdés', 'bruno@email.com', 'bruno456', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Maite Fuentes', 'maite@email.com', 'maite789', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Gael Sandoval', 'gael@email.com', 'gael123', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Alma Ibarra', 'alma@email.com', 'alma456', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Ian Cortés', 'ian@email.com', 'ian789', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Zoe Palacios', 'zoe@email.com', 'zoe123', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Dante Rojas', 'dante@email.com', 'dante456', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Mía Campos', 'mia@email.com', 'mia789', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('León Navarro', 'leon@email.com', 'leon123', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Emma Reyes', 'emma@email.com', 'emma456', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Enzo Figueroa', 'enzo@email.com', 'enzo789', 'USER');
INSERT INTO usuarios (nombre, email, password, rol) VALUES ('Olivia Carrasco', 'olivia@email.com', 'olivia123', 'USER');

-- 50 Tutoriales con imágenes relacionadas
INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Introducción a Unity 3D', 'https://logos-world.net/wp-content/uploads/2023/01/Unity-Logo.png', 'Unity es uno de los motores de juegos más populares del mundo. En este tutorial aprenderás los conceptos básicos para empezar a desarrollar videojuegos.

Primeros pasos:
1. Descargar Unity Hub desde el sitio oficial
2. Instalar una versión LTS (Long Term Support)
3. Crear un nuevo proyecto 3D
4. Familiarizarse con la interfaz principal

Componentes básicos de Unity:
- Scene: La escena donde colocas todos los objetos del juego
- Hierarchy: Muestra todos los objetos en la escena actual
- Inspector: Permite modificar las propiedades de los objetos seleccionados
- Project: Contiene todos los archivos y assets del proyecto
- Console: Muestra mensajes, errores y warnings

Conceptos fundamentales:
- GameObjects: Contenedores básicos para todos los elementos del juego
- Components: Scripts y funcionalidades que se añaden a los GameObjects
- Prefabs: Plantillas reutilizables de GameObjects
- Assets: Recursos como modelos, texturas, sonidos y scripts

Script básico de movimiento:
using UnityEngine;

public class PlayerController : MonoBehaviour {
    public float speed = 5f;
    
    void Update() {
        float horizontal = Input.GetAxis("Horizontal");
        float vertical = Input.GetAxis("Vertical");
        
        Vector3 direction = new Vector3(horizontal, 0, vertical);
        transform.Translate(direction * speed * Time.deltaTime);
    }
}', 'Aprende Unity desde cero', 1);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Programación en C# para Juegos', 'https://upload.wikimedia.org/wikipedia/commons/4/4f/Csharp_Logo.png', 'C# es el lenguaje principal para programar en Unity. Aprende los fundamentos de programación orientada a objetos aplicados al desarrollo de videojuegos.

Conceptos fundamentales de C#:
- Variables y tipos de datos (int, float, string, bool)
- Estructuras de control (if, for, while, switch)
- Funciones y métodos
- Clases y objetos
- Herencia y polimorfismo
- Interfaces y clases abstractas

Ejemplo de clase Player completa:
public class Player : MonoBehaviour {
    [Header("Configuración del Jugador")]
    public float speed = 5f;
    public int health = 100;
    public int maxHealth = 100;
    
    [Header("Referencias")]
    public Transform groundCheck;
    public LayerMask groundLayer;
    
    private Rigidbody2D rb;
    private bool isGrounded;
    
    void Start() {
        rb = GetComponent<Rigidbody2D>();
        Debug.Log("Jugador iniciado con " + health + " puntos de vida");
    }
    
    void Update() {
        HandleMovement();
        CheckGrounded();
        
        if (Input.GetKeyDown(KeyCode.Space) && isGrounded) {
            Jump();
        }
    }
    
    void HandleMovement() {
        float horizontal = Input.GetAxis("Horizontal");
        rb.velocity = new Vector2(horizontal * speed, rb.velocity.y);
        
        if (horizontal != 0) {
            transform.localScale = new Vector3(Mathf.Sign(horizontal), 1, 1);
        }
    }
    
    void Jump() {
        rb.velocity = new Vector2(rb.velocity.x, 10f);
    }
    
    void CheckGrounded() {
        isGrounded = Physics2D.OverlapCircle(groundCheck.position, 0.2f, groundLayer);
    }
    
    public void TakeDamage(int damage) {
        health -= damage;
        if (health <= 0) {
            Die();
        }
    }
    
    void Die() {
        Debug.Log("El jugador ha muerto");
        // Lógica de muerte
    }
}', 'Domina C# para juegos', 2);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Diseño de Niveles', 'https://cdn.pixabay.com/photo/2016/11/19/14/00/code-1839406_960_720.jpg', 'El diseño de niveles es crucial para la experiencia del jugador. Aprende técnicas y herramientas para crear niveles atractivos y funcionales.

Principios básicos del diseño de niveles:
1. Flujo del jugador: Guía al jugador de forma natural
2. Dificultad progresiva: Aumenta gradualmente el desafío
3. Puntos de interés: Crea áreas que llamen la atención
4. Navegación clara: El jugador debe saber hacia dónde ir
5. Ritmo y pacing: Alterna momentos de tensión y descanso

Herramientas en Unity:
- ProBuilder: Para crear geometría básica rápidamente
- Terrain: Sistema de terrenos para paisajes naturales
- Prefabs: Objetos reutilizables como plataformas y obstáculos
- Lighting: Iluminación para crear atmósfera
- Post-processing: Efectos visuales para mejorar la estética

Proceso de diseño recomendado:
1. Greyboxing: Crear el nivel con formas básicas grises
2. Testeo temprano: Probar la jugabilidad sin arte final
3. Iteración: Refinar basado en feedback
4. Arte final: Añadir texturas, modelos y efectos
5. Pulido: Detalles finales y optimización

Tips importantes:
- Usa la regla de los tercios para composición visual
- Considera la posición de la cámara en todo momento
- Crea landmarks visuales para orientación
- Optimiza el rendimiento eliminando geometría no visible
- Testea con jugadores reales para obtener feedback objetivo', 'Crea niveles increíbles', 3);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Pixel Art para Videojuegos', 'https://cdn.pixabay.com/photo/2017/06/10/07/18/list-2389219_960_720.png', 'El pixel art es un estilo artístico popular en juegos indie. Aprende técnicas básicas y herramientas para crear sprites únicos.

Herramientas recomendadas:
- Aseprite (pago): La herramienta más popular para pixel art
- GIMP (gratis): Alternativa gratuita con funciones básicas
- Piskel (online): Editor web gratuito
- GraphicsGale: Herramienta japonesa especializada
- Photoshop: Con configuración adecuada para pixel art

Técnicas fundamentales:
1. Paleta de colores limitada: Usa pocos colores para cohesión
2. Aliasing controlado: Evita suavizado automático
3. Dithering: Técnica para crear gradientes con pocos colores
4. Animación frame por frame: Cada frame dibujado manualmente
5. Pixel perfect: Cada pixel colocado intencionalmente

Resoluciones comunes:
- 16x16: Íconos y objetos pequeños
- 32x32: Personajes básicos
- 64x64: Personajes detallados
- 128x128: Retratos y arte conceptual

Tips para principiantes:
- Empieza con formas simples y geométricas
- Usa referencias de juegos clásicos
- Practica con paletas de colores existentes
- Estudia cómo los maestros usan la luz y sombra
- No tengas miedo de copiar para aprender

Animación básica:
- Caminar: 4-6 frames con ciclo continuo
- Saltar: 3-4 frames (impulso, vuelo, aterrizaje)
- Idle: 2-4 frames sutiles para dar vida
- Atacar: 3-5 frames con anticipación y recuperación

Exportación para Unity:
- Usa PNG sin compresión
- Configura Filter Mode en Point
- Ajusta Pixels Per Unit según tu escala
- Usa Sprite Atlas para optimizar rendimiento', 'Crea arte pixel perfecto', 4);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Godot Engine Básico', 'https://godotengine.org/assets/press/logo_vertical_color_dark.png', 'Godot es un motor de juegos gratuito y open source. Aprende los fundamentos para crear tu primer juego.

Ventajas de Godot:
- Completamente gratuito y open source
- Ligero y rápido (menos de 50MB)
- Soporte nativo para 2D y 3D
- Lenguaje GDScript fácil de aprender
- Sistema de nodos flexible
- Exportación a múltiples plataformas

Estructura básica de Godot:
- Nodos: Elementos fundamentales del juego
- Escenas: Colección de nodos organizados
- Scripts: Lógica del juego en GDScript, C# o C++
- Recursos: Assets como texturas, sonidos y modelos

Tipos de nodos principales:
- Node2D: Nodo base para juegos 2D
- Spatial: Nodo base para juegos 3D
- Control: Nodos para interfaz de usuario
- RigidBody: Física dinámica
- KinematicBody: Física controlada por script

Script básico en GDScript:
extends KinematicBody2D

var speed = 200
var velocity = Vector2()

func _ready():
    print("Jugador listo")

func _physics_process(delta):
    velocity = Vector2()
    
    if Input.is_action_pressed("ui_right"):
        velocity.x += speed
    if Input.is_action_pressed("ui_left"):
        velocity.x -= speed
    if Input.is_action_pressed("ui_down"):
        velocity.y += speed
    if Input.is_action_pressed("ui_up"):
        velocity.y -= speed
    
    velocity = move_and_slide(velocity)

Primer proyecto paso a paso:
1. Crear nueva escena
2. Añadir nodo KinematicBody2D
3. Añadir Sprite como hijo
4. Añadir CollisionShape2D
5. Asignar textura al Sprite
6. Configurar forma de colisión
7. Adjuntar script de movimiento
8. Configurar Input Map
9. Probar el juego', 'Motor gratuito para todos', 5);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Animación 2D en Unity', 'https://cdn.pixabay.com/photo/2016/11/30/20/58/programming-1873854_960_720.png', 'La animación 2D da vida a tus personajes. Aprende a usar el sistema de animación de Unity para sprites.

Herramientas principales:
- Animator Controller: Máquina de estados para controlar animaciones
- Animation Window: Editor para crear clips de animación
- Sprite Renderer: Componente para mostrar sprites
- 2D Animation Package: Herramientas avanzadas de rigging

Pasos básicos:
1. Importar sprite sheet y cortarlo en frames individuales
2. Crear Animation Clip arrastrando sprites
3. Configurar Animator Controller con estados
4. Añadir transiciones entre animaciones
5. Usar parámetros para controlar transiciones

Ejemplo de script de control:
public class PlayerAnimator : MonoBehaviour {
    private Animator animator;
    private Rigidbody2D rb;
    
    void Start() {
        animator = GetComponent<Animator>();
        rb = GetComponent<Rigidbody2D>();
    }
    
    void Update() {
        animator.SetFloat("Speed", Mathf.Abs(rb.velocity.x));
        animator.SetBool("IsGrounded", isGrounded);
        
        if (Input.GetKeyDown(KeyCode.Space)) {
            animator.SetTrigger("Jump");
        }
    }
}', 'Anima personajes 2D', 6);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Sistema de Partículas', 'https://cdn.pixabay.com/photo/2018/05/18/15/30/web-design-3411373_960_720.jpg', 'Los sistemas de partículas crean efectos visuales impactantes como fuego, humo y explosiones.

Efectos comunes:
- Fuego y humo
- Explosiones y chispas
- Magia y hechizos
- Lluvia y nieve
- Sangre y daño
- Polvo y escombros

Módulos importantes:
- Emission: Controla cuántas partículas se generan
- Shape: Define la forma de emisión
- Velocity over Lifetime: Cambia la velocidad con el tiempo
- Color over Lifetime: Gradientes de color
- Size over Lifetime: Cambia el tamaño
- Rotation over Lifetime: Rotación de partículas

Tips de optimización:
- Usa texturas pequeñas y simples
- Limita el número máximo de partículas
- Usa culling para partículas fuera de pantalla
- Considera usar GPU particles para efectos complejos

Script para controlar partículas:
public class ParticleController : MonoBehaviour {
    public ParticleSystem fireEffect;
    public ParticleSystem smokeEffect;
    
    public void PlayExplosion() {
        fireEffect.Play();
        smokeEffect.Play();
    }
    
    public void StopEffects() {
        fireEffect.Stop();
        smokeEffect.Stop();
    }
}', 'Efectos visuales espectaculares', 7);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Blender para Game Assets', 'https://download.blender.org/branding/community/blender_community_badge_white.svg', 'Blender es una herramienta gratuita para crear modelos 3D. Aprende el flujo de trabajo para videojuegos.

Flujo de trabajo básico:
1. Modelado: Crear la forma básica del objeto
2. UV Mapping: Desenvolver el modelo en 2D
3. Texturizado: Aplicar materiales y texturas
4. Rigging: Crear esqueleto para animación
5. Animación: Crear movimientos
6. Exportación: Formato compatible con Unity (FBX)

Tips para game assets:
- Mantén el poly count bajo (low poly)
- Usa texturas de potencias de 2 (256x256, 512x512)
- Optimiza UV maps para minimizar desperdicio
- Usa modificadores no destructivos cuando sea posible
- Considera la escala final en el juego

Herramientas útiles:
- Loop Cut: Para añadir geometría
- Extrude: Para crear volumen
- Inset: Para crear detalles
- Bevel: Para suavizar bordes
- Subdivision Surface: Para suavizar modelos

Exportación a Unity:
1. Seleccionar objeto
2. File > Export > FBX
3. Configurar escala (1.0 para Unity)
4. Incluir animaciones si las hay
5. Aplicar transformaciones
6. Exportar con texturas embebidas', 'Modela assets 3D gratis', 8);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Shaders Básicos', 'https://cdn.pixabay.com/photo/2015/09/17/17/25/code-944499_960_720.jpg', 'Los shaders controlan cómo se renderizan los materiales. Aprende a crear efectos visuales personalizados.

Tipos de shaders:
- Surface Shader: Más fácil de usar, Unity maneja la iluminación
- Vertex/Fragment: Control total sobre el renderizado
- Compute Shader: Cálculos paralelos en GPU
- Shader Graph: Editor visual para shaders

Shader básico (Surface):
Shader "Custom/BasicColor" {
    Properties {
        _MainTex ("Texture", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        _Glossiness ("Smoothness", Range(0,1)) = 0.5
    }
    SubShader {
        Tags { "RenderType"="Opaque" }
        CGPROGRAM
        #pragma surface surf Standard
        
        sampler2D _MainTex;
        fixed4 _Color;
        half _Glossiness;
        
        struct Input {
            float2 uv_MainTex;
        };
        
        void surf (Input IN, inout SurfaceOutputStandard o) {
            fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;
            o.Albedo = c.rgb;
            o.Smoothness = _Glossiness;
        }
        ENDCG
    }
}

Efectos comunes:
- Dissolve: Efecto de desintegración
- Fresnel: Bordes brillantes
- Scrolling: Texturas en movimiento
- Vertex displacement: Deformación de geometría', 'Efectos visuales únicos', 9);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Game Design Document', 'https://cdn.pixabay.com/photo/2016/11/29/06/15/plans-1867745_960_720.jpg', 'El GDD es la biblia de tu videojuego. Aprende a planificar y documentar tu proyecto correctamente.

Secciones principales:
1. Concepto del juego: Idea central y visión
2. Mecánicas principales: Cómo se juega
3. Historia y personajes: Narrativa del juego
4. Arte y audio: Estilo visual y sonoro
5. Interfaz de usuario: Diseño de menús y HUD
6. Monetización: Cómo generar ingresos
7. Plataformas objetivo: Dónde se publicará
8. Cronograma: Fechas y milestones

Estructura recomendada:
- Resumen ejecutivo (1 página)
- Gameplay core loop: Ciclo básico de juego
- Progresión del jugador: Cómo avanza
- Sistemas de juego: Mecánicas detalladas
- Especificaciones técnicas: Requerimientos
- Análisis de mercado: Competencia y audiencia

Tips importantes:
- Mantén el documento vivo y actualizado
- Sé específico pero flexible
- Incluye mockups y diagramas
- Revisa regularmente con el equipo
- Versiona los cambios importantes
- Usa herramientas colaborativas como Google Docs

Plantilla básica:
1. Título y concepto
2. Género y plataforma
3. Público objetivo
4. Mecánicas core
5. Historia (si aplica)
6. Arte y estética
7. Audio y música
8. Interfaz de usuario
9. Monetización
10. Marketing y distribución', 'Planifica tu juego', 10);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Optimización Móvil', 'https://cdn.pixabay.com/photo/2014/05/02/21/50/home-office-336378_960_720.jpg', 'Los juegos móviles requieren optimización especial. Aprende técnicas para mejorar el rendimiento.

Áreas clave de optimización:
1. Rendimiento de CPU: Reducir cálculos complejos
2. Uso de memoria: Gestionar RAM limitada
3. Batería: Minimizar consumo energético
4. Almacenamiento: Reducir tamaño de descarga
5. Ancho de banda: Optimizar datos de red

Técnicas en Unity:
- Object Pooling: Reutilizar objetos en lugar de crear/destruir
- LOD (Level of Detail): Modelos simples a distancia
- Texture Compression: Formatos optimizados por plataforma
- Batching: Combinar draw calls
- Culling: No renderizar objetos fuera de vista
- Audio Compression: Formatos eficientes

Ejemplo Object Pool:
public class BulletPool : MonoBehaviour {
    public GameObject bulletPrefab;
    public int poolSize = 20;
    private Queue<GameObject> bulletPool;
    
    void Start() {
        bulletPool = new Queue<GameObject>();
        for(int i = 0; i < poolSize; i++) {
            GameObject bullet = Instantiate(bulletPrefab);
            bullet.SetActive(false);
            bulletPool.Enqueue(bullet);
        }
    }
    
    public GameObject GetBullet() {
        if(bulletPool.Count > 0) {
            GameObject bullet = bulletPool.Dequeue();
            bullet.SetActive(true);
            return bullet;
        }
        return Instantiate(bulletPrefab);
    }
    
    public void ReturnBullet(GameObject bullet) {
        bullet.SetActive(false);
        bulletPool.Enqueue(bullet);
    }
}

Configuraciones importantes:
- Target Frame Rate: 30 FPS para móviles
- Quality Settings: Perfiles por dispositivo
- Texture Quality: Reducir resolución en dispositivos lentos', 'Juegos móviles eficientes', 11);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('IA para NPCs', 'https://cdn.pixabay.com/photo/2017/05/10/15/47/robot-2301646_960_720.jpg', 'Crea NPCs inteligentes usando máquinas de estado finito y pathfinding básico.

Tipos de IA en juegos:
1. Finite State Machines (FSM): Estados y transiciones
2. Behavior Trees: Árboles de decisiones
3. Pathfinding (A*): Navegación inteligente
4. Flocking: Comportamiento de grupo
5. Goal-Oriented Action Planning: Planificación de acciones

Ejemplo FSM básico:
public enum EnemyState {
    Patrol,
    Chase,
    Attack,
    Dead
}

public class EnemyAI : MonoBehaviour {
    public EnemyState currentState;
    public Transform player;
    public float detectionRange = 5f;
    public float attackRange = 2f;
    public float speed = 3f;
    
    private NavMeshAgent agent;
    private Transform[] patrolPoints;
    private int currentPatrolIndex;
    
    void Start() {
        agent = GetComponent<NavMeshAgent>();
        patrolPoints = GetPatrolPoints();
        currentState = EnemyState.Patrol;
    }
    
    void Update() {
        switch(currentState) {
            case EnemyState.Patrol:
                PatrolBehavior();
                break;
            case EnemyState.Chase:
                ChaseBehavior();
                break;
            case EnemyState.Attack:
                AttackBehavior();
                break;
        }
    }
    
    void PatrolBehavior() {
        if(!agent.pathPending && agent.remainingDistance < 0.5f) {
            GoToNextPatrolPoint();
        }
        
        float distanceToPlayer = Vector3.Distance(transform.position, player.position);
        if(distanceToPlayer < detectionRange) {
            currentState = EnemyState.Chase;
        }
    }
    
    void ChaseBehavior() {
        agent.SetDestination(player.position);
        
        float distanceToPlayer = Vector3.Distance(transform.position, player.position);
        if(distanceToPlayer < attackRange) {
            currentState = EnemyState.Attack;
        } else if(distanceToPlayer > detectionRange * 2) {
            currentState = EnemyState.Patrol;
        }
    }
    
    void AttackBehavior() {
        agent.SetDestination(transform.position);
        // Lógica de ataque
        
        float distanceToPlayer = Vector3.Distance(transform.position, player.position);
        if(distanceToPlayer > attackRange) {
            currentState = EnemyState.Chase;
        }
    }
}', 'NPCs inteligentes', 12);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Audio en Videojuegos', 'https://cdn.pixabay.com/photo/2016/11/29/09/32/concept-1868728_960_720.jpg', 'El audio es crucial para la inmersión. Aprende a implementar música y efectos de sonido.

Tipos de audio en juegos:
1. Música: Ambiente y emoción
2. SFX: Efectos de sonido para acciones
3. Voces: Diálogos y narración
4. Audio ambiental: Sonidos del entorno
5. Audio UI: Sonidos de interfaz

Herramientas y formatos:
- WAV: Alta calidad, sin compresión
- OGG: Buena compresión, calidad decente
- MP3: Compresión alta, menor calidad
- Audacity: Editor gratuito
- FMOD/Wwise: Middleware profesional

Componentes de Unity:
- AudioSource: Reproduce sonidos
- AudioListener: "Oídos" del jugador
- AudioMixer: Control de volumen y efectos
- AudioClip: Archivo de audio

Script de AudioManager:
public class AudioManager : MonoBehaviour {
    public static AudioManager instance;
    
    [Header("Audio Sources")]
    public AudioSource musicSource;
    public AudioSource sfxSource;
    
    [Header("Audio Clips")]
    public AudioClip backgroundMusic;
    public AudioClip jumpSound;
    public AudioClip collectSound;
    public AudioClip damageSound;
    
    void Awake() {
        if(instance == null) {
            instance = this;
            DontDestroyOnLoad(gameObject);
        } else {
            Destroy(gameObject);
        }
    }
    
    void Start() {
        PlayMusic(backgroundMusic);
    }
    
    public void PlayMusic(AudioClip clip) {
        musicSource.clip = clip;
        musicSource.Play();
    }
    
    public void PlaySFX(AudioClip clip) {
        sfxSource.PlayOneShot(clip);
    }
    
    public void SetMusicVolume(float volume) {
        musicSource.volume = volume;
    }
    
    public void SetSFXVolume(float volume) {
        sfxSource.volume = volume;
    }
}

Tips de implementación:
- Usa audio 3D para efectos posicionales
- Implementa sistema de configuración de volumen
- Considera la compresión por plataforma
- Usa loops seamless para música de fondo', 'Audio profesional', 13);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Networking Multijugador', 'https://cdn.pixabay.com/photo/2018/03/22/02/37/email-3249062_960_720.png', 'Crea juegos multijugador usando Mirror Networking para Unity.

Conceptos clave:
- Server: Autoridad del juego, toma decisiones
- Client: Jugadores conectados, envían input
- NetworkBehaviour: Scripts que se sincronizan
- NetworkIdentity: Identifica objetos de red
- Commands: Mensajes de cliente a servidor
- ClientRpc: Mensajes de servidor a clientes
- SyncVars: Variables sincronizadas automáticamente

Instalación de Mirror:
1. Abrir Package Manager
2. Añadir por URL: https://github.com/vis2k/Mirror.git
3. Importar Mirror
4. Configurar NetworkManager

Ejemplo de movimiento en red:
using Mirror;

public class NetworkPlayerController : NetworkBehaviour {
    public float speed = 5f;
    
    void Update() {
        if (!isLocalPlayer) return;
        
        float horizontal = Input.GetAxis("Horizontal");
        float vertical = Input.GetAxis("Vertical");
        
        Vector3 movement = new Vector3(horizontal, 0, vertical);
        CmdMove(movement);
    }
    
    [Command]
    void CmdMove(Vector3 movement) {
        transform.Translate(movement * speed * Time.deltaTime);
    }
    
    [ClientRpc]
    void RpcPlayEffect() {
        // Reproducir efecto en todos los clientes
    }
}

Tipos de arquitectura:
- Listen Server: Un jugador es el servidor
- Dedicated Server: Servidor separado
- P2P: Conexión directa entre jugadores

Consideraciones importantes:
- Lag compensation
- Interpolación y extrapolación
- Validación del servidor
- Manejo de desconexiones
- Sincronización de estado', 'Juegos en línea', 14);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Procedural Generation', 'https://cdn.pixabay.com/photo/2017/08/10/08/47/laptop-2620118_960_720.jpg', 'La generación procedural crea contenido automáticamente usando algoritmos.

Tipos de generación:
- Terrenos: Mapas y paisajes infinitos
- Dungeons: Mazmorras y niveles aleatorios
- Ciudades: Edificios y calles
- Texturas: Patrones y materiales únicos
- Misiones: Objetivos dinámicos
- Loot: Objetos y recompensas

Algoritmos comunes:
- Perlin Noise: Terrenos naturales
- Cellular Automata: Cuevas y estructuras orgánicas
- Wave Function Collapse: Patrones complejos
- L-Systems: Plantas y fractales
- Voronoi Diagrams: Divisiones territoriales

Ejemplo de terreno con Perlin Noise:
public class TerrainGenerator : MonoBehaviour {
    public int width = 256;
    public int height = 256;
    public float scale = 20f;
    public float heightMultiplier = 10f;
    
    void Start() {
        GenerateTerrain();
    }
    
    void GenerateTerrain() {
        Terrain terrain = GetComponent<Terrain>();
        TerrainData terrainData = terrain.terrainData;
        
        terrainData.heightmapResolution = width + 1;
        terrainData.size = new Vector3(width, heightMultiplier, height);
        
        float[,] heights = new float[width, height];
        
        for(int x = 0; x < width; x++) {
            for(int y = 0; y < height; y++) {
                float xCoord = (float)x / width * scale;
                float yCoord = (float)y / height * scale;
                heights[x, y] = Mathf.PerlinNoise(xCoord, yCoord);
            }
        }
        
        terrainData.SetHeights(0, 0, heights);
    }
}

Generación de dungeons:
1. Crear habitaciones aleatorias
2. Conectar con pasillos
3. Añadir puertas y obstáculos
4. Colocar enemigos y tesoros
5. Validar que sea completable

Ventajas:
- Contenido infinito
- Rejugabilidad alta
- Menor trabajo manual
- Experiencias únicas

Desventajas:
- Difícil de controlar calidad
- Puede ser repetitivo
- Requiere mucho testing
- Balanceo complejo', 'Mundos infinitos', 15);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('UI/UX para Videojuegos', 'https://cdn.pixabay.com/photo/2016/03/27/18/54/technology-1283624_960_720.jpg', 'Una buena interfaz mejora la experiencia del jugador. Aprende principios de diseño.', 'Interfaces intuitivas', 16);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Monetización Móvil', 'https://cdn.pixabay.com/photo/2016/11/27/21/42/stock-1863880_960_720.jpg', 'Estrategias para generar ingresos con tu juego móvil usando ads y compras.', 'Genera ingresos', 17);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Testing y Debugging', 'https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_960_720.jpg', 'Encuentra y corrige errores en tu juego eficientemente usando herramientas de Unity.', 'Elimina bugs rápido', 18);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Publicación en Steam', 'https://cdn.pixabay.com/photo/2018/05/08/08/44/artificial-intelligence-3382507_960_720.jpg', 'Guía completa para publicar tu juego en la plataforma Steam.', 'Lleva tu juego a Steam', 19);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Física en Unity', 'https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569_960_720.jpg', 'Aprende a usar el sistema de física de Unity para crear interacciones realistas.', 'Física realista', 20);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Scripting Avanzado C#', 'https://cdn.pixabay.com/photo/2016/11/19/14/00/code-1839406_960_720.jpg', 'Técnicas avanzadas de programación en C# para Unity incluyendo patrones de diseño.', 'Programación profesional', 21);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Iluminación en Unity', 'https://cdn.pixabay.com/photo/2017/01/18/16/46/hong-kong-1990268_960_720.jpg', 'La iluminación crea atmósfera en tu juego. Aprende técnicas de lighting.', 'Iluminación profesional', 22);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Cinemachine Cameras', 'https://cdn.pixabay.com/photo/2016/11/29/06/15/plans-1867745_960_720.jpg', 'Cinemachine facilita el control de cámaras en Unity para crear tomas cinematográficas.', 'Cámaras cinematográficas', 23);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Timeline y Cutscenes', 'https://cdn.pixabay.com/photo/2018/05/18/15/30/web-design-3411373_960_720.jpg', 'Crea secuencias cinematográficas usando Timeline de Unity.', 'Cutscenes profesionales', 24);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Addressables System', 'https://cdn.pixabay.com/photo/2015/09/17/17/25/code-944499_960_720.jpg', 'Gestiona assets de forma eficiente usando el sistema Addressables.', 'Gestión de assets', 25);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Visual Scripting', 'https://cdn.pixabay.com/photo/2017/05/10/15/47/robot-2301646_960_720.jpg', 'Crea lógica de juego sin programar usando Visual Scripting de Unity.', 'Programación visual', 26);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('ProBuilder Modeling', 'https://cdn.pixabay.com/photo/2016/11/29/09/32/concept-1868728_960_720.jpg', 'ProBuilder permite crear geometría básica directamente en Unity.', 'Modelado en Unity', 27);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Terrain System', 'https://cdn.pixabay.com/photo/2018/03/22/02/37/email-3249062_960_720.png', 'Crea paisajes naturales usando el sistema de terrenos de Unity.', 'Paisajes naturales', 28);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Input System', 'https://cdn.pixabay.com/photo/2017/08/10/08/47/laptop-2620118_960_720.jpg', 'El nuevo Input System de Unity ofrece mayor flexibilidad para controles.', 'Controles modernos', 29);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Universal Render Pipeline', 'https://cdn.pixabay.com/photo/2016/03/27/18/54/technology-1283624_960_720.jpg', 'URP optimiza el renderizado para múltiples plataformas.', 'Renderizado optimizado', 30);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Scriptable Objects', 'https://cdn.pixabay.com/photo/2016/11/27/21/42/stock-1863880_960_720.jpg', 'Los Scriptable Objects permiten crear data containers reutilizables.', 'Datos reutilizables', 31);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Object Pooling', 'https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_960_720.jpg', 'Optimiza el rendimiento reutilizando objetos en lugar de crearlos constantemente.', 'Optimización avanzada', 32);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Localization', 'https://cdn.pixabay.com/photo/2018/05/08/08/44/artificial-intelligence-3382507_960_720.jpg', 'Traduce tu juego a múltiples idiomas usando el sistema de localización.', 'Juegos multiidioma', 33);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Analytics Integration', 'https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569_960_720.jpg', 'Integra analytics para entender el comportamiento de los jugadores.', 'Analiza a tus jugadores', 34);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Cloud Build', 'https://cdn.pixabay.com/photo/2016/11/19/14/00/code-1839406_960_720.jpg', 'Automatiza la compilación de tu juego usando Unity Cloud Build.', 'Builds automáticos', 35);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Version Control', 'https://cdn.pixabay.com/photo/2017/01/18/16/46/hong-kong-1990268_960_720.jpg', 'Usa Git y Unity Collaborate para trabajar en equipo eficientemente.', 'Trabajo en equipo', 36);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Performance Profiling', 'https://cdn.pixabay.com/photo/2016/11/29/06/15/plans-1867745_960_720.jpg', 'Identifica cuellos de botella usando el Profiler de Unity.', 'Optimiza el rendimiento', 37);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Custom Editors', 'https://cdn.pixabay.com/photo/2018/05/18/15/30/web-design-3411373_960_720.jpg', 'Crea herramientas personalizadas para el editor de Unity.', 'Herramientas personalizadas', 38);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Coroutines y Async', 'https://cdn.pixabay.com/photo/2015/09/17/17/25/code-944499_960_720.jpg', 'Maneja operaciones asíncronas usando Coroutines y async/await.', 'Programación asíncrona', 39);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Mobile Optimization', 'https://cdn.pixabay.com/photo/2017/05/10/15/47/robot-2301646_960_720.jpg', 'Técnicas específicas para optimizar juegos en dispositivos móviles.', 'Móviles optimizados', 40);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('AR Foundation', 'https://cdn.pixabay.com/photo/2016/11/29/09/32/concept-1868728_960_720.jpg', 'Crea experiencias de realidad aumentada usando AR Foundation.', 'Realidad aumentada', 41);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('XR Interaction', 'https://cdn.pixabay.com/photo/2018/03/22/02/37/email-3249062_960_720.png', 'Desarrolla para VR/AR usando XR Interaction Toolkit.', 'Realidad virtual', 42);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Machine Learning', 'https://cdn.pixabay.com/photo/2017/08/10/08/47/laptop-2620118_960_720.jpg', 'Integra ML-Agents para crear IA que aprende jugando.', 'IA que aprende', 43);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Burst Compiler', 'https://cdn.pixabay.com/photo/2016/03/27/18/54/technology-1283624_960_720.jpg', 'Acelera tu código C# usando el Burst Compiler.', 'Código ultra rápido', 44);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Job System', 'https://cdn.pixabay.com/photo/2016/11/27/21/42/stock-1863880_960_720.jpg', 'Paraleliza tareas usando el Job System para mejor rendimiento.', 'Procesamiento paralelo', 45);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('ECS Architecture', 'https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_960_720.jpg', 'Entity Component System para juegos de alto rendimiento.', 'Arquitectura moderna', 46);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Shader Graph', 'https://cdn.pixabay.com/photo/2018/05/08/08/44/artificial-intelligence-3382507_960_720.jpg', 'Crea shaders visualmente usando Shader Graph.', 'Shaders visuales', 47);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('2D Tilemap', 'https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569_960_720.jpg', 'Crea mundos 2D eficientemente usando el sistema Tilemap.', 'Mundos 2D eficientes', 48);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('Package Manager', 'https://cdn.pixabay.com/photo/2016/11/19/14/00/code-1839406_960_720.jpg', 'Gestiona dependencias y crea paquetes personalizados.', 'Gestión de paquetes', 49);

INSERT INTO tutoriales (titulo, imagen, cuerpo, descripcion, usuario_id) VALUES 
('WebGL Deployment', 'https://cdn.pixabay.com/photo/2017/01/18/16/46/hong-kong-1990268_960_720.jpg', 'Publica tu juego en la web usando WebGL con optimizaciones.', 'Juegos web optimizados', 50);