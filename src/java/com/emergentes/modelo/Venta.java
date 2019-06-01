package com.emergentes.modelo;

import java.sql.Date;

public class Venta {
    private int id;
    private String cliente_id;
    private String producto_id;
    private Date fecha;
    private String cliente;
    private String producto;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCliente_id() {
        return cliente_id;
    }

    public void setCliente_id(String cliente_id) {
        this.cliente_id = cliente_id;
    }

    public String getProducto_id() {
        return producto_id;
    }

    public void setProducto_id(String producto_id) {
        this.producto_id = producto_id;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }
    
    

    @Override
    public String toString() {
        return "Venta{" + "id=" + id + ", cliente_id=" + cliente_id + ", producto_id=" + producto_id + ", fecha=" + fecha + '}';
    }   
}
