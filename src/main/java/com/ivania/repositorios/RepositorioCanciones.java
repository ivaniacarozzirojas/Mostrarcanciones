package com.ivania.repositorios;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.ivania.modelos.Cancion;

public interface RepositorioCanciones extends CrudRepository<Cancion, Long> {
    List<Cancion> findAll();
}