package com.ivania.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import com.ivania.modelos.Cancion;
import com.ivania.servicios.ServicioCanciones;
import jakarta.validation.Valid;

@Controller
public class ControladorCanciones {

    private final ServicioCanciones servicioCanciones;

    ControladorCanciones(ServicioCanciones servicioCanciones) {
        this.servicioCanciones = servicioCanciones;
    }

    @GetMapping("/canciones")
    public String desplegarCanciones(Model modelo) {
        modelo.addAttribute("listaCanciones", servicioCanciones.obtenerTodasLasCanciones());
        return "canciones";
    }

    @GetMapping("/canciones/detalle/{idCancion}")
    public String desplegarDetalleCancion(@PathVariable Long idCancion, Model modelo) {
        Cancion cancion = servicioCanciones.obtenerCancionPorId(idCancion);
        modelo.addAttribute("cancion", cancion);
        return "detalleCancion";
    }

    @GetMapping("/canciones/formulario/agregar/{idCancion}")
    public String formularioAgregarCancion(Model modelo) {
        modelo.addAttribute("cancion", new Cancion());
        return "agregarCancion";
    }

    @PostMapping("/canciones/procesa/agregar")
    public String procesarAgregarCancion(
            @Valid Cancion cancion,
            BindingResult resultado,
            Model modelo) {
        if (resultado.hasErrors()) {
            return "agregarCancion";
        }
        servicioCanciones.agregarCancion(cancion);
        return "redirect:/canciones";
    }
}