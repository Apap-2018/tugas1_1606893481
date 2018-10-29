package com.sipeg.apap.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.annotations.*;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.math.BigInteger;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

/**
 * Created by esak on 10/12/2018.
 */

@Entity
@Table(name = "pegawai")
@DynamicUpdate
public class Pegawai {
    @Id
    @TableGenerator(name = "pegawaiGen", initialValue = 1021)
    @GeneratedValue(strategy = GenerationType.IDENTITY, generator = "pegawaiGen")
    private BigInteger id;

    @NotNull
    @Size(max = 255)
    @Column(name = "nama", nullable = false)
    private String nama;

    @NotNull
    @Size(max = 255)
    @Column(name = "tempat_lahir", nullable = false)
    private String tempatLahir;

    @NotNull
    @Column(name = "tanggal_lahir", nullable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date tanggalLahir;

    @NotNull
    @Size(max = 255)
    @Column(name = "tahun_masuk", nullable = false)
    private String tahunMasuk;

    @OneToMany(mappedBy = "pegawai", cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    private Set<JabatanPegawai> jabatanPegawaiSet;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(foreignKey = @ForeignKey(name = "pegawai_ibfk_1"), name = "id_instansi", referencedColumnName = "id", nullable = false)
    @OnDelete(action = OnDeleteAction.NO_ACTION)
    @JsonIgnore
    private Instansi instansi;

    public Set<JabatanPegawai> getJabatanPegawaiSet() {
        return jabatanPegawaiSet;
    }

    @NotNull
    @Size(max = 255)
    @Column(name = "NIP", nullable = false, unique = true)
    private String nip;

    public BigInteger getId() {
        return id;
    }

    public void setId(BigInteger id) {
        this.id = id;
    }

    public String getNip() {
        return nip;
    }

    public void setNip(String nip) {
        this.nip = nip;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getTempatLahir() {
        return tempatLahir;
    }

    public void setTempatLahir(String tempatLahir) {
        this.tempatLahir = tempatLahir;
    }

    public Date getTanggalLahir() {
        return tanggalLahir;
    }

    public String getStringTanggalLahir() {
        String pattern = "ddMMyy";
        SimpleDateFormat format = new SimpleDateFormat(pattern);
        return format.format(tanggalLahir);
    }

    public void setTanggalLahir(Date tanggalLahir) {
        this.tanggalLahir = tanggalLahir;
    }

    public String getTahunMasuk() {
        return tahunMasuk;
    }

    public void setTahunMasuk(String tahunMasuk) {
        this.tahunMasuk = tahunMasuk;
    }

    public Instansi getInstansi() {
        return instansi;
    }

    public void setInstansi(Instansi instansi) {
        this.instansi = instansi;
    }

    public double getGaji() {
        double gajiPokok = 0;
        double tunjangan = instansi.getProvinsi().getPresentase_tunjangan();

        for (JabatanPegawai sets : jabatanPegawaiSet) {
            if (sets.getJabatan().getGaji_pokok() > gajiPokok)
                gajiPokok = sets.getJabatan().getGaji_pokok();
        }

        double totalGaji = gajiPokok + (gajiPokok * tunjangan / 100);

        return totalGaji;
    }

    public String getGajiString(){
        double gaji = getGaji();
        DecimalFormat formatter = new DecimalFormat("#,###");
        return "Rp" + formatter.format(gaji);
    }

    public List<Jabatan> getJabatan() {
        List<Jabatan> jabatans = new ArrayList<Jabatan>();
        for (JabatanPegawai sets : jabatanPegawaiSet) {
            jabatans.add(sets.getJabatan());
        }
        return jabatans;
    }

}
