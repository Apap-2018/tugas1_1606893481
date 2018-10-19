package com.sipeg.apap.service;

import com.sipeg.apap.model.Jabatan;
import com.sipeg.apap.model.Pegawai;

import java.math.BigInteger;
import java.util.List;

/**
 * Created by esak on 10/12/2018.
 */
public interface PegawaiService {
    Pegawai getDataByNIP(String nip);

    Pegawai addPegawai(Pegawai pegawai);

    Pegawai updatePegawai(Pegawai pegawai);

    List<Pegawai> getAllPegawai();

    Pegawai findOldestById(BigInteger id);

    Pegawai findYoungestById(BigInteger id);


}
