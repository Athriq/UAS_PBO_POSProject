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
public class QRIS implements Pembayaran {
    
    private int id;
    private float totalHarga;
    private LocalDateTime waktuPembayaran;
    private String konten;
    private final LocalDateTime requestDate;
    private String invoiceID;
    
    public QRIS(LocalDateTime requestDate) {
        String himpunanKarakter = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        int counter = 0;
        konten = "";
        while (counter < 100) {
            konten += himpunanKarakter.charAt((int)Math.floor(Math.random() * himpunanKarakter.length()));
            counter++;
        }
        
        this.requestDate = requestDate;
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
        invoiceID = Integer.toString(id);
    }

    /**
     * @return the konten
     */
    public String getKonten() {
        return konten;
    }

    /**
     * @return the invoiceID
     */
    public String getInvoiceID() {
        return invoiceID;
    }

    /**
     * @return the requestDate
     */
    public LocalDateTime getRequestDate() {
        return requestDate;
    }
}
