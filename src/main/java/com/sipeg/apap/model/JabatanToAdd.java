package com.sipeg.apap.model;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by esak on 10/16/2018.
 */
public class JabatanToAdd {
    public List<Jabatan> jabatanList;
    private List<Long> listId;

    public JabatanToAdd() {
        this.jabatanList = new ArrayList<Jabatan>();
        jabatanList.add(new Jabatan());
    }

    public List<Jabatan> getJabatanList() {
        return jabatanList;
    }

}
