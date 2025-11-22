package com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.service;

import com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.model.Usuario;
import java.util.List;
import java.util.Optional;

public interface IUsuarioService {
    Usuario guardar(Usuario usuario);
    List<Usuario> listarTodos();
    Optional<Usuario> buscarPorId(Long id);
    Optional<Usuario> buscarPorEmail(String email);
    void eliminar(Long id);
    boolean existeEmail(String email);
    boolean validarLogin(String email, String password);
}