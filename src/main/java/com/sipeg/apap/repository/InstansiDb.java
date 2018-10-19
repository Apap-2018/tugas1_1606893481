package com.sipeg.apap.repository;

import com.sipeg.apap.model.Instansi;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.List;
import java.util.Optional;

/**
 * Created by esak on 10/16/2018.
 */

@Repository
public interface InstansiDb extends JpaRepository<Instansi,BigInteger>{
    @Override
    List<Instansi> findAll();

    Instansi findInstansiById(BigInteger bigInteger);

}
