package com.emergentes.dao;

import com.emergentes.modelo.Transaccion;
import java.util.List;

public interface TransaccionDAO {
    public void insert(Transaccion transaccion) throws Exception;
    public void update(Transaccion transaccion) throws Exception;
    public void delete(int id) throws Exception;
    public Transaccion getById(int id) throws Exception;
    public List<Transaccion> getAll() throws Exception;  
}
