package com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.repository;

import com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.model.Tutorial;
import com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface TutorialRepository extends JpaRepository<Tutorial, Long> {
    List<Tutorial> findByUsuario(Usuario usuario);
    List<Tutorial> findByUsuarioId(Long usuarioId);
}