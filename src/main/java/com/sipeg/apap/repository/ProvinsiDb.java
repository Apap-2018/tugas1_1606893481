package com.sipeg.apap.repository;

import com.sipeg.apap.model.Provinsi;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.List;
import java.util.Optional;

/**
 * Created by esak on 10/15/2018.
 */

@Repository
public interface ProvinsiDb extends JpaRepository<Provinsi, BigInteger> {

    @Override
    List<Provinsi> findAll();

    @Override
    Provinsi getOne(BigInteger id);
}
