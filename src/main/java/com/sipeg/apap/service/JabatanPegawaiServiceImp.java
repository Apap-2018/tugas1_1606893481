package com.sipeg.apap.service;

import com.sipeg.apap.model.Jabatan;
import com.sipeg.apap.model.JabatanPegawai;
import com.sipeg.apap.model.Pegawai;
import com.sipeg.apap.repository.JabatanPegawaiDb;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.math.BigInteger;
import java.util.List;

/**
 * Created by esak on 10/14/2018.
 */

@Service
@Transactional
public class JabatanPegawaiServiceImp implements JabatanPegawaiService {
    @Autowired
    private JabatanPegawaiDb jabatanPegawaiDb;

    @Override
    public void addJabatanPegawai(Pegawai pegawai, Jabatan jabatan) {
        JabatanPegawai jabatanPegawai = new JabatanPegawai();
        jabatanPegawai.setJabatan(jabatan);
        jabatanPegawai.setPegawai(pegawai);

        jabatanPegawaiDb.save(jabatanPegawai);
    }

    @Override
    public void clearByPegawai(Pegawai pegawai) {
        List<JabatanPegawai> toRemove = jabatanPegawaiDb.findAllByPegawai(pegawai);

        for (JabatanPegawai jabatanPegawai : toRemove )
            jabatanPegawaiDb.delete(jabatanPegawai);

    }

    @Override
    public List<JabatanPegawai> findAll() {
        return jabatanPegawaiDb.findAll();
    }

    @Override
    public List<JabatanPegawai> findByFilter(BigInteger idProvinsi, BigInteger idInstansi, BigInteger idJabatan) {
        if(idProvinsi != null) {
            if (idInstansi != null) {
                if (idJabatan != null) {
                    return jabatanPegawaiDb.findByPegawaiInstansiProvinsiIdAndPegawaiInstansiIdAndJabatanId(idProvinsi,idInstansi,idJabatan);
                }
                return jabatanPegawaiDb.findByPegawaiInstansiProvinsiIdAndPegawaiInstansiId(idProvinsi,idInstansi);
            } else if (idJabatan != null){
                return jabatanPegawaiDb.findByPegawaiInstansiIdAndJabatanId(idProvinsi, idJabatan);
            } else {
                return jabatanPegawaiDb.findByPegawaiInstansiProvinsiId(idProvinsi);
            }
        } else if (idInstansi != null) {
            if(idJabatan != null){
                return jabatanPegawaiDb.findByPegawaiInstansiIdAndJabatanId(idInstansi,idJabatan);
            }
            return jabatanPegawaiDb.findByPegawaiInstansiId(idInstansi);
        }
        else if (idJabatan != null)
            return jabatanPegawaiDb.findByJabatanId(idJabatan);

        return findAll();
    }

    @Override
    public Integer countByJabatan(BigInteger idJabatan) {
        return jabatanPegawaiDb.countByJabatanId(idJabatan);
    }


}
