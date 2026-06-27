package com.clases;

import java.util.ArrayList;

public class TiendaElectronica {

    private ArrayList<ProductoElectrodomestico> listaDeProductos;

    public TiendaElectronica() {
        listaDeProductos = new ArrayList<>();
    }

    public void agregarProducto(
            ProductoElectrodomestico producto) {

        listaDeProductos.add(producto);

        System.out.println(
                producto.getNombre()
                + " agregado al inventario");
    }

    public void mostrarProductos() {

        System.out.println("\nINVENTARIO");

        for (ProductoElectrodomestico p : listaDeProductos) {

            p.mostrarInformacion();
        }
    }

    public ProductoElectrodomestico buscarProducto(
            String nombre) {

        for (ProductoElectrodomestico p : listaDeProductos) {

            if (p.getNombre()
                    .equalsIgnoreCase(nombre)) {

                return p;
            }
        }

        return null;
    }

    public void realizarVenta(String nombre) {

        ProductoElectrodomestico producto =
                buscarProducto(nombre);

        if (producto != null) {

            if (producto.getCantidadDisponible() > 0) {

                producto.setCantidadDisponible(
                        producto.getCantidadDisponible() - 1);

                System.out.println(
                        "Venta realizada de: "
                        + producto.getNombre());

            } else {

                System.out.println(
                        "Producto agotado");
            }

        } else {

            System.out.println(
                    "Producto no encontrado");
        }
    }
}
