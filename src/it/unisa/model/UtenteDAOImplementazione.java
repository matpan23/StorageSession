package it.unisa.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UtenteDAOImplementazione implements UtenteDAO {
	
	private static final String TABLE = "Utente";
    
	@Override
	public int saveUser(UtenteBean user) throws SQLException {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        int result;

        String insertSQL = "INSERT INTO " + UtenteDAOImplementazione.TABLE
                           + " (email, nome, cognome, indirizzo, citta, provincia, cap, password) "
                           + " VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try {
            connection = DriverManagerConnectionPool.getConnection();
            
            preparedStatement = connection.prepareStatement(insertSQL);
            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getNome());
            preparedStatement.setString(3, user.getCognome());
            preparedStatement.setString(4, user.getIndirizzo());
            preparedStatement.setString(5, user.getCitta());
            preparedStatement.setString(6, user.getProvincia());
            preparedStatement.setString(7, user.getCap());
            preparedStatement.setString(8, user.getPassword());
            
            result = preparedStatement.executeUpdate();
            
            connection.commit();

        } finally {
            try {
                if (preparedStatement != null)
                    preparedStatement.close();
                
            } finally {
                
            	DriverManagerConnectionPool.releaseConnection(connection);
            }
        }
        
        return result;
	}


	@Override
	public int deleteUser(UtenteBean user) throws SQLException {
		
		
		Connection connection = null;
        PreparedStatement preparedStatement = null;
        
        String selectSQL = "DELETE * FROM " + TABLE + " WHERE email = ?";
        
        int result;
        
        try
        {
        	connection = DriverManagerConnectionPool.getConnection();
            preparedStatement = connection.prepareStatement(selectSQL);
            
            preparedStatement.setString(1, user.getEmail());
  
            result = preparedStatement.executeUpdate();   
            
            connection.commit();
        	
        } finally {
            try {
                if (preparedStatement != null)
                    preparedStatement.close();
            } finally {
            	
               DriverManagerConnectionPool.releaseConnection(connection);
            }
        }
        
        return result;
	}

	@Override
	public UtenteBean findByCred(String email, String password) throws SQLException {	
		Connection connection = null;
        PreparedStatement preparedStatement = null;

        String selectSQL = "SELECT * FROM " + TABLE + " WHERE email = ? AND password = ?";
        UtenteBean user = null;

        try {
        	connection = DriverManagerConnectionPool.getConnection();
            preparedStatement = connection.prepareStatement(selectSQL);
            
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            ResultSet rs = preparedStatement.executeQuery();
            if(!rs.isBeforeFirst()) return null;
            
            user = new UtenteBean();
           
           while (rs.next()) {

                user.setEmail(rs.getString("email"));
                user.setNome(rs.getString("nome"));
                user.setCognome(rs.getString("cognome"));
                user.setIndirizzo(rs.getString("indirizzo"));
                user.setCitta(rs.getString("citta"));
                user.setProvincia(rs.getString("provincia"));
                user.setCap(rs.getString("cap"));
                user.setPassword(rs.getString("psw"));
            }
            
        } finally {
            try {
                if (preparedStatement != null)
                    preparedStatement.close();
            } finally {
                DriverManagerConnectionPool.releaseConnection(connection);
            }
        }
        
        return user;
	}

}