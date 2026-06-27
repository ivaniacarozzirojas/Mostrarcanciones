package com;

import com.clases.*;

public class Aplicacion {

    public static void main(String[] args) {

        TiendaElectronica tienda =
                new TiendaElectronica();

        Televisor tv =
                new Televisor(
                        "Samsung",
                        500000,
                        2,
                        55,
                        "4K");

        ComputadoraPortatil pc =
                new ComputadoraPortatil(
                        "Notebook Gamer",
                        900000,
                        1,
                        "Lenovo",
                        16,
                        "ABC123");

        tienda.agregarProducto(tv);
        tienda.agregarProducto(pc);

        tienda.realizarVenta("Samsung");
        tienda.realizarVenta("Samsung");
        tienda.realizarVenta("Samsung");

        tienda.realizarVenta("Notebook Gamer");

        tienda.mostrarProductos();
    }
}