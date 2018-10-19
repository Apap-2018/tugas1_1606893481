package com.sipeg.apap.service;

import com.sipeg.apap.model.Instansi;

import java.math.BigInteger;
import java.util.List;

/**
 * Created by esak on 10/16/2018.
 */

public interface InstansiService {
    List<Instansi> findAll();

    Instansi findById(BigInteger id);
}
