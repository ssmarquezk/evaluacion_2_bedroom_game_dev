package com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.Controller;

import com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.model.Tutorial;
import com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.model.Usuario;
import com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.service.ITutorialService;
import com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.service.IUsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/mis-tutoriales")
public class TutorialController {
    
    @Autowired
    private ITutorialService tutorialService;
    
    @Autowired
    private IUsuarioService usuarioService;
    
    @GetMapping("/{usuarioId}")
    public String misTutoriales(@PathVariable Long usuarioId, HttpSession session, Model model) {
        Usuario usuarioSesion = (Usuario) session.getAttribute("usuarioLogueado");
        Usuario usuario = usuarioService.buscarPorId(usuarioId).orElse(null);
        
        if (usuario == null) {
            return "redirect:/login";
        }
        
        // Verificar que el usuario de la sesión coincida con el solicitado (seguridad básica)
        if (usuarioSesion != null && !usuarioSesion.id().equals(usuarioId)) {
            // Si no coincide, redirigir a sus propios tutoriales
            return "redirect:/mis-tutoriales/" + usuarioSesion.id();
        }
        
        model.addAttribute("usuario", usuario);
        model.addAttribute("tutoriales", tutorialService.listarPorUsuarioId(usuarioId));
        model.addAttribute("nuevoTutorial", new Tutorial(null, "", "", "", "", usuario));
        return "mis-tutoriales";
    }
    
    @PostMapping("/{usuarioId}/crear")
    public String crearTutorial(@PathVariable Long usuarioId,
                               @RequestParam String titulo,
                               @RequestParam String imagen,
                               @RequestParam String cuerpo,
                               @RequestParam String descripcion,
                               RedirectAttributes redirectAttributes) {
        
        Usuario usuario = usuarioService.buscarPorId(usuarioId).orElse(null);
        if (usuario == null) {
            return "redirect:/login";
        }
        
        // Validar longitud de imagen
        if (imagen != null && imagen.length() > 500) {
            redirectAttributes.addFlashAttribute("error", "La URL de imagen es demasiado larga (máximo 500 caracteres)");
            return "redirect:/mis-tutoriales/" + usuarioId;
        }
        
        Tutorial tutorial = new Tutorial(null, titulo, imagen, cuerpo, descripcion, usuario);
        tutorialService.guardar(tutorial);
        redirectAttributes.addFlashAttribute("success", "Tutorial creado exitosamente");
        return "redirect:/mis-tutoriales/" + usuarioId;
    }
    
    @PostMapping("/{usuarioId}/eliminar/{tutorialId}")
    public String eliminarTutorial(@PathVariable Long usuarioId, @PathVariable Long tutorialId,
                                  RedirectAttributes redirectAttributes) {
        tutorialService.eliminar(tutorialId);
        redirectAttributes.addFlashAttribute("success", "Tutorial eliminado");
        return "redirect:/mis-tutoriales/" + usuarioId;
    }
    
    @GetMapping("/{usuarioId}/editar/{tutorialId}")
    public String editarTutorial(@PathVariable Long usuarioId, @PathVariable Long tutorialId, Model model) {
        Tutorial tutorial = tutorialService.buscarPorId(tutorialId).orElse(null);
        Usuario usuario = usuarioService.buscarPorId(usuarioId).orElse(null);
        
        if (tutorial == null || usuario == null) {
            return "redirect:/mis-tutoriales/" + usuarioId;
        }
        
        model.addAttribute("tutorial", tutorial);
        model.addAttribute("usuario", usuario);
        return "editar-tutorial";
    }
    
    @PostMapping("/{usuarioId}/actualizar/{tutorialId}")
    public String actualizarTutorial(@PathVariable Long usuarioId, @PathVariable Long tutorialId,
                                    @RequestParam String titulo,
                                    @RequestParam String imagen,
                                    @RequestParam String cuerpo,
                                    @RequestParam String descripcion,
                                    RedirectAttributes redirectAttributes) {
        
        Tutorial tutorial = tutorialService.buscarPorId(tutorialId).orElse(null);
        if (tutorial != null) {
            // Validar longitud de imagen
            if (imagen != null && imagen.length() > 500) {
                redirectAttributes.addFlashAttribute("error", "La URL de imagen es demasiado larga (máximo 500 caracteres)");
                return "redirect:/mis-tutoriales/" + usuarioId;
            }
            
            tutorial.setTitulo(titulo);
            tutorial.setImagen(imagen);
            tutorial.setCuerpo(cuerpo);
            tutorial.setDescripcion(descripcion);
            tutorialService.guardar(tutorial);
            redirectAttributes.addFlashAttribute("success", "Tutorial actualizado");
        }
        
        return "redirect:/mis-tutoriales/" + usuarioId;
    }
}