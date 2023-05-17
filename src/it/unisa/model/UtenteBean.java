package it.unisa.model;

public class UtenteBean{
	
	private String email;
	private String nome;
	private String cognome;
	private String numCarta;
	private String dataScad;
	private String cvc;
	private String indirizzo;
	private String citta;
	private String provincia;
	private String cap;
	private String password;
	
	public UtenteBean() {
		
	}
	public void setEmail (String email) {
		this.email=email;
	}
	
	public String getEmail () {
		return email;
	}
	
	public void setNome(String nome) {
		this.nome=nome;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setCognome(String cognome) {
		this.cognome=cognome;
	}
	
	public String getCognome() {
		return cognome;
	}
	
	public String getNumCarta() {
		return numCarta;
	}
	
	public void setNumCarta(String numCarta) {
		this.numCarta = numCarta;
	}
	
	public String getDataScad() {
		return dataScad;
	}
	
	public void setDataScad(String dataScad) {
		this.dataScad = dataScad;
	}
	
	public String getCvc() {
		return cvc;
	}
	
	public void setCvc(String cvc) {
		this.cvc = cvc;
	}
	
	public void setIndirizzo(String indirizzo) {
		this.indirizzo=indirizzo;
	}
	
	public String getIndirizzo() {
		return indirizzo;
	}
	
	public void setCitta(String citta) {
		this.citta=citta;
	}
	
	public String getCitta() {
		return citta;
	}
	
	public void setProvincia(String provincia) {
		this.provincia=provincia;
	}
	
	public String getProvincia() {
		return provincia;
	}
	
	public void setCap(String cap) {
		this.cap=cap;
	}

    public String getCap() {
    	return cap;
    }
    
    public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override 
    public String toString() {
    	return email + "" +nome +""+ cognome+""+ numCarta+""+ dataScad+""+ cvc+""+ indirizzo+""+ citta+""+""+ provincia+""+ cap;
    }
}