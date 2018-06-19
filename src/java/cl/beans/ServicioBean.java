
package cl.beans;

import cl.entidades.*;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;


@Stateless
public class ServicioBean implements ServicioBeanLocal {

    @PersistenceContext(unitName = "EjemploJPA2PU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }
    

    @Override
    public List<Perfil> getPerfiles() {
        return em.createQuery("Select p from Perfil p").getResultList();
    }

    @Override
    public List<Producto> getProductos() {
        return em.createQuery("Select p from Producto p").getResultList();
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
        return null;
    }
    
    
}
