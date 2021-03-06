/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.beans;

import cl.entidades.*;
import cl.utils.*;
import directorio.Hash;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Informatica
 */
@Stateless
public class ServicioLocal implements ServicioLocalLocal {
    
    @PersistenceContext(unitName = "TareaJPAPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    @Override
    public List<Perfil> getPerfiles() {
        return em.createQuery("Select p from Perfil p").getResultList();
    }

    @Override
    public List<Producto> getProductos() {
        return em.createQuery("select p from Producto p").getResultList();
    }

    @Override
    public List<Categoria> getCategorias() {
        return em.createQuery("Select c from Categoria c").getResultList();
    }

    @Override
    public Producto buscar(int id) {
        return (Producto) em.createQuery("SELECT p FROM Producto p WHERE p.idProducto = "+id).getResultList();
    }

    @Override
    public Perfil buscarPerfil(int id) {
        return (Perfil) em.createQuery("SELECT p FROM Perfil p WHERE p.idPerfil = "+id).getSingleResult();
    }

    @Override
    public Usuario iniciarSesion(String rut, String clave) {
        try{
            return (Usuario) em.createNamedQuery("Usuario.iniciarSesion", Usuario.class)
                    .setParameter("rutUser", rut)
                    .setParameter("clave", Hash.md5(clave))
                    .getSingleResult();
        }catch(Exception e){
            return null;
        }
        
    }

    @Override
    public Usuario buscarUsuario(String rut) {
        return em.find(Usuario.class, rut);
    }

    @Override
    public void guardar(Object object) {
        em.persist(object);
    }
    
    
    

}
