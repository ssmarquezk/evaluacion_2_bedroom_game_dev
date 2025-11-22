package com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.service;

import com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.model.Tutorial;
import com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.model.Usuario;
import java.util.List;
import java.util.Optional;

public interface ITutorialService {
    Tutorial guardar(Tutorial tutorial);
    List<Tutorial> listarTodos();
    List<Tutorial> listarPorUsuario(Usuario usuario);
    List<Tutorial> listarPorUsuarioId(Long usuarioId);
    Optional<Tutorial> buscarPorId(Long id);
    void eliminar(Long id);
}