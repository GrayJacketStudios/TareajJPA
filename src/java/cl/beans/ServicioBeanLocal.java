/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.beans;

import cl.entidades.*;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Informatica
 */
@Local
public interface ServicioBeanLocal {

    List<Perfil> getPerfiles();

    List<Producto> getProductos();

    List<Categoria> getCategorias();

    Producto buscar(int id);

    Perfil buscarPerfil(int id);
    
}
