package com.sipeg.apap.repository;

import com.sipeg.apap.model.Jabatan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.List;
import java.util.Optional;

/**
 * Created by esak on 10/16/2018.
 */

@Repository
public interface JabatanDb extends JpaRepository<Jabatan,BigInteger>{
    @Override
    List<Jabatan> findAll();

    @Override
    Jabatan save(Jabatan jabatan);

    Jabatan findJabatanById(BigInteger bigInteger);

    @Override
    void deleteById(BigInteger bigInteger);
}
