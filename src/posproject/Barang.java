/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package posproject;

import java.util.ArrayList;
import java.sql.Statement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.Date;
import java.util.Calendar;

/**
 *
 * @author ASUS
 */
class Barang {
    public String kode;
    public Float harga;    
    public String nama;
}

class Makanan extends Barang {
    private LocalDate kadaluarsa = LocalDate.now();
    static ArrayList<Makanan> daftarMakanan;
    public static void loadMakananFromDB() {
        daftarMakanan = new ArrayList<Makanan>();
        Makanan makanan;
        
        try {
            Statement stmt = DBConnector.connection.createStatement();
            String sql = "SELECT * FROM barang";
        
            ResultSet rs = stmt.executeQuery(sql);
            
            while (rs.next())
            {
                makanan = new Makanan();
                makanan.kode = Integer.toString(rs.getInt("kode"));
                makanan.nama = rs.getString("nama");
                makanan.harga = rs.getFloat("harga");
                daftarMakanan.add(makanan);
            }
        }
        catch (Exception e)
        {
            System.out.println(e);
        }
    }
    
    public static Makanan getMakanan(String kode) {
        for (int i = 0; i < daftarMakanan.size(); i++) {
            var makanan = daftarMakanan.get(i);
            
            if (makanan.kode.equals(kode)) {
                return makanan;
            }
        }
        
        return null;
    }

    /**
     * @return the kadaluarsa
     */
    public LocalDate getKadaluarsa() {
        return kadaluarsa;
    }

    /**
     * @param kadaluarsa the kadaluarsa to set
     */
    public void setKadaluarsa(LocalDate kadaluarsa) {
        this.kadaluarsa = kadaluarsa;
    }
}

class Pulsa extends Barang {
    private String operator;
    private String noTelp;
    private float nominal;
    
    static ArrayList<Pulsa> daftarPulsa;
    public static void loadPulsaFromDB() {
        daftarPulsa = new ArrayList<Pulsa>();
        Pulsa pulsa;     
        
        try {
            Statement stmt = DBConnector.connection.createStatement();
            String sql = "SELECT * FROM pulsa";
        
            ResultSet rs = stmt.executeQuery(sql);
            
            while (rs.next())
            {
                pulsa = new Pulsa();
                pulsa.kode = Integer.toString(rs.getInt("kode"));
                pulsa.setOperator(rs.getString("operator"));
                pulsa.setNominal(rs.getFloat("nominal"));
                daftarPulsa.add(pulsa);
            }
        }
        catch (Exception e)
        {
            System.out.println(e);
        }
    }
    
    public static Pulsa getPulsa(String kode) {
        for (int i = 0; i < daftarPulsa.size(); i++) {
            var pulsa = daftarPulsa.get(i);
            
            if (pulsa.kode.equals(kode)) {
                return pulsa;
            }
        }
        
        return null;
    }

    /**
     * @return the operator
     */
    public String getOperator() {
        return operator;
    }

    /**
     * @param operator the operator to set
     */
    public void setOperator(String operator) {
        this.operator = operator;
    }

    /**
     * @return the noTelp
     */
    public String getNoTelp() {
        return noTelp;
    }

    /**
     * @param noTelp the noTelp to set
     */
    public void setNoTelp(String noTelp) {
        this.noTelp = noTelp;
    }

    /**
     * @return the nominal
     */
    public float getNominal() {
        return nominal;
    }

    /**
     * @param nominal the nominal to set
     */
    public void setNominal(float nominal) {
        this.nominal = nominal;
    }
}

class Token extends Barang {

    /**
     * @return the noMeteran
     */
    public String getNoMeteran() {
        return noMeteran;
    }

    /**
     * @param noMeteran the noMeteran to set
     */
    public void setNoMeteran(String noMeteran) {
        this.noMeteran = noMeteran;
    }

    /**
     * @return the nominal
     */
    public float getNominal() {
        return nominal;
    }

    /**
     * @param nominal the nominal to set
     */
    public void setNominal(float nominal) {
        this.nominal = nominal;
    }

    /**
     * @return the token
     */
    public long getToken() {
        return token;
    }

    /**
     * @param token the token to set
     */
    public void setToken(long token) {
        this.token = token;
    }
    private String noMeteran;
    private float nominal;
    private long token;
    static ArrayList<Token> daftarToken;
    public static void loadTokenFromDB() {
        daftarToken = new ArrayList<Token>();
        Token token;     
        
        try {
            Statement stmt = DBConnector.connection.createStatement();
            String sql = "SELECT * FROM pln   ";
        
            ResultSet rs = stmt.executeQuery(sql);
            
            while (rs.next())
            {
                token= new Token();
                token.kode = Integer.toString(rs.getInt("kode"));
                token.nama = rs.getString("nama");
                token.setNominal(rs.getFloat("nominal"));
                daftarToken.add(token);
            }
        }
        catch (Exception e)
        {
            System.out.println(e);
        }
    }
    
    public static Token getToken(String kode) {
        for (int i = 0; i < daftarToken.size(); i++) {
            var token = daftarToken.get(i);
            
            if (token.kode.equals(kode)) {
                return token;
            }
        }
        
        return null;
    }

}

