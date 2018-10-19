package com.sipeg.apap.service;

import com.sipeg.apap.model.Jabatan;

import java.math.BigInteger;
import java.util.List;

/**
 * Created by esak on 10/16/2018.
 */
public interface JabatanService {
    List<Jabatan> findAll();

    Jabatan save(Jabatan jabatan);

    Jabatan findById(BigInteger id);

    void deleteById(BigInteger id);
}
