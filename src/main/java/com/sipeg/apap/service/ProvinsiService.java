package com.sipeg.apap.service;

import com.sipeg.apap.model.Provinsi;

import java.math.BigInteger;
import java.util.List;

/**
 * Created by esak on 10/15/2018.
 */
public interface ProvinsiService {
    List<Provinsi> findAll();

    Provinsi findById(BigInteger id);
}
