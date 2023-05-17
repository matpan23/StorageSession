package it.unisa.model;

import java.sql.SQLException;

public interface UtenteDAO {

    public int saveUser(UtenteBean user) throws SQLException; // salva utente

    public int deleteUser(UtenteBean user) throws SQLException; // delete utente

    public UtenteBean findByCred(String email, String password) throws SQLException; // utente con le credenziali
    
    public UtenteBean findByEmail(String email) throws SQLException;

}