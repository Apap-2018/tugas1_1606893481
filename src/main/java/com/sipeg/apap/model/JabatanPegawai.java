package com.sipeg.apap.model;

import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.math.BigInteger;

/**
 * Created by esak on 10/12/2018.
 */

@Entity
@Table(name = "jabatan_pegawai")
@DynamicUpdate
public class JabatanPegawai {
    @Id
    @TableGenerator(name="jabatanPegawaiGen", initialValue = 1234)
    @GeneratedValue(strategy = GenerationType.IDENTITY, generator = "jabatanPegawaiGen")
    private BigInteger id;

    @ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinColumn(name = "id_jabatan")
    private Jabatan jabatan;

    @ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinColumn(name = "id_pegawai")
    private Pegawai pegawai;

    public Jabatan getJabatan() {
        return jabatan;
    }

    public Pegawai getPegawai() {
        return pegawai;
    }

    public void setJabatan(Jabatan jabatan) {
        this.jabatan = jabatan;
    }

    public void setPegawai(Pegawai pegawai) {
        this.pegawai = pegawai;
    }
}
