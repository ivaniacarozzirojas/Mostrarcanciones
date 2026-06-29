package com.ivania.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import com.ivania.modelos.Artista;
import com.ivania.servicios.ServicioArtistas;
import jakarta.validation.Valid;

@Controller
public class ControladorArtistas {

    @Autowired
    private ServicioArtistas servicioArtistas;

    @GetMapping("/artistas")
    public String desplegarArtistas(Model modelo) {
        modelo.addAttribute("listaArtistas", servicioArtistas.obtenerTodosLosArtistas());
        return "artistas";
    }

    @GetMapping("/artistas/detalle/{idArtista}")
    public String desplegarDetalleArtista(@PathVariable Long idArtista, Model modelo) {
        Artista artista = servicioArtistas.obtenerArtistaPorId(idArtista);
        modelo.addAttribute("artista", artista);
        return "detalleArtista";
    }

    @GetMapping("/artistas/formulario/agregar/{idArtista}")
    public String formularioAgregarArtista(Model modelo) {
        modelo.addAttribute("artista", new Artista());
        return "agregarArtista";
    }

    @PostMapping("/artistas/procesa/agregar")
    public String procesarAgregarArtista(
            @Valid Artista artista,
            BindingResult resultado) {
        if (resultado.hasErrors()) {
            return "agregarArtista";
        }
        servicioArtistas.agregarArtista(artista);
        return "redirect:/artistas";
    }
}