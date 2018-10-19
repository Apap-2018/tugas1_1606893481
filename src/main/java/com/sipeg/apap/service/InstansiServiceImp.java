package com.sipeg.apap.service;

import com.sipeg.apap.model.Instansi;
import com.sipeg.apap.repository.InstansiDb;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.math.BigInteger;
import java.util.List;

/**
 * Created by esak on 10/16/2018.
 */

@Service
@Transactional
public class InstansiServiceImp implements InstansiService {
    @Autowired
    InstansiDb instansiDb;

    @Override
    public List<Instansi> findAll() {
        return instansiDb.findAll();
    }

    @Override
    public Instansi findById(BigInteger id) {
        return instansiDb.findInstansiById(id);
    }
}
