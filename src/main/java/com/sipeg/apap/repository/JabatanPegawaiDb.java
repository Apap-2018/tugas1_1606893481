package com.sipeg.apap.repository;

import com.sipeg.apap.model.Jabatan;
import com.sipeg.apap.model.JabatanPegawai;
import com.sipeg.apap.model.Pegawai;
import org.springframework.data.domain.Example;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.math.BigInteger;
import java.util.List;

/**
 * Created by esak on 10/14/2018.
 */

@Repository
public interface JabatanPegawaiDb extends JpaRepository<JabatanPegawai, Long>{
    Jabatan getJabatanByPegawai(Pegawai pegawai);

    @Override
    JabatanPegawai save(JabatanPegawai jabatanPegawai);

    List<JabatanPegawai> findAllByPegawai(Pegawai pegawai);

    @Override
    List<JabatanPegawai> findAll();

    List<JabatanPegawai> findByPegawaiInstansiProvinsiIdAndPegawaiInstansiIdAndJabatanId(BigInteger idProvinsi, BigInteger idInstansi, BigInteger idJabatan);

    List<JabatanPegawai> findByPegawaiInstansiProvinsiId(BigInteger idProvinsi);

    List<JabatanPegawai> findByPegawaiInstansiId(BigInteger idInstansi);

    List<JabatanPegawai> findByJabatanId(BigInteger idJabatan);

    List<JabatanPegawai> findByPegawaiInstansiIdAndJabatanId(BigInteger idInstansi, BigInteger idJabatan);

    List<JabatanPegawai> findByPegawaiInstansiProvinsiIdAndPegawaiInstansiId(BigInteger idProvinsi, BigInteger idInstansi);

    List<JabatanPegawai> findByPegawaiInstansiProvinsiIdAndJabatanId(BigInteger idProvinsi, BigInteger idJabatan);



}
