package com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.Controller;

import com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.model.Usuario;
import com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.model.Tutorial;
import com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.service.IUsuarioService;
import com.evaluacion_2_bedroom_game_dev.evaluacion_2_bedroom_game_dev.service.ITutorialService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.ResponseBody;
import jakarta.servlet.http.HttpSession;
import java.util.Map;
import java.util.HashMap;
import java.util.Optional;

@Controller
public class UsuarioController {

    @Autowired
    private IUsuarioService usuarioService;
    
    @Autowired
    private ITutorialService tutorialService;
    


    @GetMapping("/")
    public String inicio() {
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String mostrarLogin() {
        return "login";
    }

    @PostMapping("/login")
    public String procesarLogin(@RequestParam String email, @RequestParam String password,
            HttpSession session, RedirectAttributes redirectAttributes) {
        if (usuarioService.validarLogin(email, password)) {
            Usuario usuario = usuarioService.buscarPorEmail(email).orElse(null);
            if (usuario != null) {
                session.setAttribute("usuarioLogueado", usuario);
                return "redirect:/tutoriales";
            }
        }
        redirectAttributes.addFlashAttribute("error", "Credenciales incorrectas");
        return "redirect:/login";
    }

    @GetMapping("/registro")
    public String mostrarRegistro(Model model) {
        model.addAttribute("usuario", new Usuario(null, "", "", "", "USER"));
        return "registro";
    }

    @PostMapping("/registro")
    public String procesarRegistro(@RequestParam String nombre, @RequestParam String email,
            @RequestParam String password, RedirectAttributes redirectAttributes) {
        if (usuarioService.existeEmail(email)) {
            redirectAttributes.addFlashAttribute("error", "El email ya existe");
            return "redirect:/registro";
        }

        Usuario usuario = new Usuario(null, nombre, email, password, "USER");
        usuarioService.guardar(usuario);
        redirectAttributes.addFlashAttribute("success", "Usuario registrado exitosamente");
        return "redirect:/login";
    }

    @GetMapping("/usuarios")
    public String listarUsuarios(Model model) {
        model.addAttribute("usuarios", usuarioService.listarTodos());
        return "usuarios";
    }

    @GetMapping("/tutoriales")
    public String mostrarTutoriales(Model model) {
        model.addAttribute("tutoriales", tutorialService.listarTodos());
        return "tutoriales";
    }
    
    @GetMapping("/acceso-rapido")
    public String accesoRapido() {
        return "acceso-rapido";
    }
    
    @GetMapping("/mis-tutoriales")
    public String misTutorialesAuto(HttpSession session) {
        Usuario usuario = (Usuario) session.getAttribute("usuarioLogueado");
        if (usuario != null) {
            return "redirect:/mis-tutoriales/" + usuario.id();
        }
        return "redirect:/acceso-rapido";
    }
    

    @GetMapping("/tutorial/{id}")
    public String verTutorial(@PathVariable Long id, Model model) {
        Tutorial tutorial = tutorialService.buscarPorId(id).orElse(null);
        if (tutorial == null) {
            return "redirect:/tutoriales";
        }
        model.addAttribute("tutorial", tutorial);
        return "ver-tutorial";
    }
    
    @GetMapping("/tutoriales-usuario/{usuarioId}")
    public String tutorialesDeUsuario(@PathVariable Long usuarioId, Model model) {
        Usuario usuario = usuarioService.buscarPorId(usuarioId).orElse(null);
        if (usuario == null) {
            return "redirect:/usuarios";
        }
        
        model.addAttribute("usuario", usuario);
        model.addAttribute("tutoriales", tutorialService.listarPorUsuarioId(usuarioId));
        return "tutoriales-usuario";
    }

    @PostMapping("/usuarios/eliminar/{id}")
    public String eliminarUsuario(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        usuarioService.eliminar(id);
        redirectAttributes.addFlashAttribute("success", "Usuario eliminado");
        return "redirect:/usuarios";
    }
    
    @GetMapping("/api/usuario-por-email")
    @ResponseBody
    public Map<String, Object> buscarUsuarioPorEmail(@RequestParam String email) {
        Map<String, Object> response = new HashMap<>();
        Optional<Usuario> usuario = usuarioService.buscarPorEmail(email);
        if (usuario.isPresent()) {
            response.put("id", usuario.get().id());
            response.put("nombre", usuario.get().nombre());
        }
        return response;
    }
}