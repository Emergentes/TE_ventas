/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.emergentes.dao;

import com.emergentes.modelo.Producto;
import com.emergentes.utiles.ConexionDB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ProductoDAOimpl extends ConexionDB implements ProductoDAO{

    @Override
    public void insert(Producto producto) throws Exception {
        try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("INSERT into productos (nombre, descripcion, pricio) values (?, ?, ?)");
            ps.setString(1, producto.getNombre());
            ps.setString(2, producto.getDescripcion());
            ps.setFloat(3, producto.getPrecio());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }        
    }

    @Override
    public void update(Producto producto) throws Exception {
        try{
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("UPDATE productos set nombre = ?, descripcion = ?, precio = ? where id = ?");
            ps.setString(1, producto.getNombre());
            ps.setString(2, producto.getDescripcion());            
            ps.setFloat(3, producto.getPrecio());            
            ps.setInt(4,producto.getId());
            ps.executeUpdate();
        }catch(Exception e){
            throw e;
        }finally{
            this.desconectar();
        }        
    }

    @Override
    public void delete(int id) throws Exception {
        try{
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("DELETE FROM productos WHERE id = ?");
            ps.setInt(1,id);
            ps.executeUpdate();
        }catch(Exception e){
            throw e;
        }finally{
            this.desconectar();
        }        
    }

    @Override
    public Producto getById(int id) throws Exception {
        Producto cli = new Producto();
        try {

            this.conectar();

            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM productos WHERE id = ? limit 1");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                cli.setId(rs.getInt("id"));
                cli.setNombre(rs.getString("nombre"));
                cli.setDescripcion(rs.getString("descripcion"));
                cli.setPrecio(rs.getFloat("precio"));
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return cli;        
    }

    @Override
    public List<Producto> getAll() throws Exception {
        List<Producto> lista = null;
        try{
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM productos");
            ResultSet rs = ps.executeQuery();
            
            lista = new ArrayList<Producto>();
            while(rs.next()){
                Producto cli = new Producto();
                System.out.println("Fila ...");
                cli.setId(rs.getInt("id"));
                cli.setNombre(rs.getString("nombre"));
                cli.setDescripcion(rs.getString("descripcion"));
                cli.setPrecio(rs.getFloat("precio"));
                lista.add(cli);
            }
            rs.close();
            ps.close();
        }catch(Exception e){
            throw e;
        }finally{
            this.desconectar();
        }  
        return lista;        
    }
}
