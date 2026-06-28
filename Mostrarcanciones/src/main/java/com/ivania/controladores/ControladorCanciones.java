package com.ivania.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import com.ivania.modelos.Cancion;
import com.ivania.servicios.ServicioCanciones;

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
}