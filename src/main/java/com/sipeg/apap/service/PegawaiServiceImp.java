package com.sipeg.apap.service;

import com.sipeg.apap.model.Pegawai;
import com.sipeg.apap.repository.PegawaiDb;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.math.BigInteger;
import java.util.List;

/**
 * Created by esak on 10/12/2018.
 */
@Service
@Transactional
public class PegawaiServiceImp implements PegawaiService {
    @Autowired
    private PegawaiDb pegawaiDb;

    @Override
    public Pegawai getDataByNIP(String nip) {
        return pegawaiDb.findByNip(nip);
    }

    @Override
    public Pegawai addPegawai(Pegawai pegawai) {
        String prefix = "";
        prefix += pegawai.getInstansi().getId();
        prefix += pegawai.getStringTanggalLahir();
        prefix += pegawai.getTahunMasuk();

        List<String> nipLain = pegawaiDb.findUsersWithPartOfNip(prefix);
        String nipAkhir = String.format("%02d", nipLain.size()+1);
        pegawai.setNip(prefix+nipAkhir);

        return pegawaiDb.save(pegawai);
    }

    @Override
    public Pegawai updatePegawai(Pegawai pegawai) {
        String prefix = "";
        prefix += pegawai.getInstansi().getId();
        prefix += pegawai.getStringTanggalLahir();
        prefix += pegawai.getTahunMasuk();

        if(!prefix.equals(pegawai.getNip().substring(0,14))) {
            List<String> nipLain = pegawaiDb.findUsersWithPartOfNip(prefix);
            String nipAkhir = String.format("%02d", nipLain.size()+1);
            pegawai.setNip(prefix+nipAkhir);
        }

        return pegawaiDb.save(pegawai);
    }

    @Override
    public List<Pegawai> getAllPegawai() {
        return pegawaiDb.findAll();
    }

    @Override
    public Pegawai findOldestById(BigInteger id) {
        return pegawaiDb.findFirstByInstansiIdOrderByTanggalLahirAsc(id);
    }

    @Override
    public Pegawai findYoungestById(BigInteger id) {
        return pegawaiDb.findFirstByInstansiIdOrderByTanggalLahirDesc(id);
    }


}
