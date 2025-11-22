package com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.service;

import com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.model.Tutorial;
import com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.model.Usuario;
import com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.repository.TutorialRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class TutorialServiceImpl implements ITutorialService {
    
    @Autowired
    private TutorialRepository tutorialRepository;
    
    @Override
    public Tutorial guardar(Tutorial tutorial) {
        return tutorialRepository.save(tutorial);
    }
    
    @Override
    public List<Tutorial> listarTodos() {
        return tutorialRepository.findAll();
    }
    
    @Override
    public List<Tutorial> listarPorUsuario(Usuario usuario) {
        return tutorialRepository.findByUsuario(usuario);
    }
    
    @Override
    public List<Tutorial> listarPorUsuarioId(Long usuarioId) {
        return tutorialRepository.findByUsuarioId(usuarioId);
    }
    
    @Override
    public Optional<Tutorial> buscarPorId(Long id) {
        return tutorialRepository.findById(id);
    }
    
    @Override
    public void eliminar(Long id) {
        tutorialRepository.deleteById(id);
    }
}