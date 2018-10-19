package com.sipeg.apap.service;

import com.sipeg.apap.model.Jabatan;
import com.sipeg.apap.repository.JabatanDb;
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
public class JabatanServiceImpl implements JabatanService{
    @Autowired
    JabatanDb jabatanDb;

    @Override
    public List<Jabatan> findAll() {
        return jabatanDb.findAll();
    }

    @Override
    public Jabatan save(Jabatan jabatan) {
        return jabatanDb.save(jabatan);
    }

    @Override
    public Jabatan findById(BigInteger id) {
        return jabatanDb.findJabatanById(id);
    }

    @Override
    public void deleteById(BigInteger id) {
        jabatanDb.deleteById(id);
    }

}
