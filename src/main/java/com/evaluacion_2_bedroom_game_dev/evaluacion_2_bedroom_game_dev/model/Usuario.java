package com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.model;

import jakarta.persistence.*;
import java.util.Objects;
import java.util.List;
import java.util.ArrayList;

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

    @OneToMany(mappedBy = "usuario", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Tutorial> tutoriales = new ArrayList<>();



     // Constructor vacío requerido por JPA
    protected Usuario() {}

    // Constructor principal (usado por ti)
    public Usuario(Long id, String nombre, String email, String password, String rol) {
        this.id = id;
        this.nombre = Objects.requireNonNull(nombre, "nombre no puede ser null");
        this.email = Objects.requireNonNull(email, "email no puede ser null");
        this.password = Objects.requireNonNull(password, "password no puede ser null");
        this.rol = Objects.requireNonNullElse(rol, "USER");
    }

    // Getters (Java 25: no setters → inmutabilidad parcial, o setters solo para JPA)
    public Long id() { return id; }
    public String nombre() { return nombre; }
    public String email() { return email; }
    public String password() { return password; }
    public String rol() { return rol; }
    public List<Tutorial> tutoriales() { return tutoriales; }


    // Setters necesarios para JPA
    public void setId(Long id) { this.id = id; }
    public void setNombre(String nombre) { this.nombre = nombre; }
    public void setEmail(String email) { this.email = email; }
    public void setPassword(String password) { this.password = password; }
    public void setRol(String rol) { this.rol = rol; }
    public void setTutoriales(List<Tutorial> tutoriales) { this.tutoriales = tutoriales; }


    // hashCode/equals con Objects.hash (mejorado en Java 21+)
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Usuario u)) return false;
        return Objects.equals(id, u.id) && Objects.equals(email, u.email);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, email);
    }

    @Override
    public String toString() {
        return "Usuario{id=%d, nombre='%s', email='%s'}".formatted(id, nombre, email);
    }


}
