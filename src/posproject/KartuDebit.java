/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package posproject;

import java.time.LocalDateTime;

/**
 *
 * @author ASUS
 */
public class KartuDebit implements Pembayaran {
    
    private int id;
    private float totalHarga;
    private LocalDateTime waktuPembayaran;
    private final String bank;
    private final String nomorKartu;
    
    public KartuDebit(String bank, String nomorKartu) {
        this.bank = bank;
        this.nomorKartu = nomorKartu;
    }
    
    @Override
    public float getTotalHarga() {
        return totalHarga;
    }

    @Override
    public void setTotalHarga(float totalHarga) {
        this.totalHarga = totalHarga;
    }

    @Override
    public LocalDateTime getWaktuPembayaran() {
        return waktuPembayaran;
    }

    @Override
    public void setWaktuPembayaran(LocalDateTime waktuPembayaran) {
        this.waktuPembayaran = waktuPembayaran;
    }

    @Override
    public int getIDPembayaran() {
        return id;
    }

    @Override
    public void setIDPembayaran(int IDPembayaran) {
        id = IDPembayaran;
    }

    /**
     * @return the bank
     */
    public String getBank() {
        return bank;
    }

    /**
     * @return the nomorKartu
     */
    public String getNomorKartu() {
        return nomorKartu;
    }
}
