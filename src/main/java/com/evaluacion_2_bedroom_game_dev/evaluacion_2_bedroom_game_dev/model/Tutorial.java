package com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.model;

import jakarta.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "tutoriales")
public class Tutorial {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 100)
    private String titulo;

    @Column(length = 500)
    private String imagen;

    @Column(nullable = false, columnDefinition = "TEXT")
    private String cuerpo;

    @Column(length = 500)
    private String descripcion;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "usuario_id", nullable = false)
    private Usuario usuario;

    // Constructor vacío para JPA
    protected Tutorial() {}

    // Constructor principal
    public Tutorial(Long id, String titulo, String imagen, String cuerpo, String descripcion, Usuario usuario) {
        this.id = id;
        this.titulo = Objects.requireNonNull(titulo, "titulo no puede ser null");
        this.imagen = imagen;
        this.cuerpo = Objects.requireNonNull(cuerpo, "cuerpo no puede ser null");
        this.descripcion = descripcion;
        this.usuario = Objects.requireNonNull(usuario, "usuario no puede ser null");
    }

    // Getters
    public Long id() { return id; }
    public String titulo() { return titulo; }
    public String imagen() { return imagen; }
    public String cuerpo() { return cuerpo; }
    public String descripcion() { return descripcion; }
    public Usuario usuario() { return usuario; }

    // Setters para JPA
    public void setId(Long id) { this.id = id; }
    public void setTitulo(String titulo) { this.titulo = titulo; }
    public void setImagen(String imagen) { this.imagen = imagen; }
    public void setCuerpo(String cuerpo) { this.cuerpo = cuerpo; }
    public void setDescripcion(String descripcion) { this.descripcion = descripcion; }
    public void setUsuario(Usuario usuario) { this.usuario = usuario; }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Tutorial t)) return false;
        return Objects.equals(id, t.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public String toString() {
        return "Tutorial{id=%d, titulo='%s', usuario='%s'}".formatted(id, titulo, usuario.nombre());
    }
}