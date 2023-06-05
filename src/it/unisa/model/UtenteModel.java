package it.unisa.model;

import java.sql.SQLException;
import java.util.Collection;

public interface UtenteModel {
	
	public boolean doDelete(String email) throws SQLException;

	public UtenteBean doRetrieveByKey(String email) throws SQLException;
	
	public Collection<UtenteBean> doRetrieveAll(String order) throws SQLException;

	void doSave(UtenteBean utente) throws SQLException;
}
