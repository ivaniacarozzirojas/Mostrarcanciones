package com.ivania.servicios;

import java.util.List;
import org.springframework.stereotype.Service;
import com.ivania.modelos.Cancion;
import com.ivania.repositorios.RepositorioCanciones;

@Service
public class ServicioCanciones {

    private final RepositorioCanciones repositorioCanciones;

    ServicioCanciones(RepositorioCanciones repositorioCanciones) {
        this.repositorioCanciones = repositorioCanciones;
    }

    public List<Cancion> obtenerTodasLasCanciones() {
        return repositorioCanciones.findAll();
    }

    public Cancion obtenerCancionPorId(Long id) {
        return repositorioCanciones.findById(id).orElse(null);
    }
    public Cancion agregarCancion(Cancion cancion) {
        return repositorioCanciones.save(cancion);
    }
}