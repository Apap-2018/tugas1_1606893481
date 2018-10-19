package com.sipeg.apap.service;

import com.sipeg.apap.model.Jabatan;
import com.sipeg.apap.model.JabatanPegawai;
import com.sipeg.apap.model.Pegawai;

import java.math.BigInteger;
import java.util.List;

/**
 * Created by esak on 10/14/2018.
 */
public interface JabatanPegawaiService {
    void addJabatanPegawai(Pegawai pegawai, Jabatan jabatan);

    void clearByPegawai(Pegawai pegawai);

    List<JabatanPegawai> findAll();

    List<JabatanPegawai> findByFilter(BigInteger idProvinsi, BigInteger idInstansi, BigInteger idJabatan);

    Integer countByJabatan(BigInteger idJabatan);
}
