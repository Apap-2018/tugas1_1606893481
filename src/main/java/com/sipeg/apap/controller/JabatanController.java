package com.sipeg.apap.controller;

import com.sipeg.apap.model.Jabatan;
import com.sipeg.apap.service.JabatanPegawaiService;
import com.sipeg.apap.service.JabatanService;
import org.hibernate.annotations.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by esak on 10/19/2018.
 */

@Controller
public class JabatanController {
    @Autowired
    JabatanService jabatanService;

    @Autowired
    JabatanPegawaiService jabatanPegawaiService;

    @RequestMapping(value="/jabatan/tambah",method = RequestMethod.GET)
    String addJabatan(Model model){
        Jabatan jabatan =new Jabatan();
        model.addAttribute("jabatan", jabatan);

        return "tambah-jabatan";
    }

    @RequestMapping(value="/jabatan/tambah", method = RequestMethod.POST)
    String submitJabatan(@ModelAttribute Jabatan jabatan, Model model){
        Jabatan added = jabatanService.save(jabatan);
        model.addAttribute("jabatan",added);

        return "tambah-jabatan-berhasil";
    }

    @RequestMapping(value = "/jabatan/view", method = RequestMethod.GET)
    private String viewPegawai(@RequestParam("idJabatan") BigInteger idJabatan, Model model) {
        Jabatan jabatan = jabatanService.findById(idJabatan);

        model.addAttribute("jabatan", jabatan);

        return "view-jabatan";
    }

    @RequestMapping(value="/jabatan/ubah", method = RequestMethod.GET)
    String updateJabatan(@RequestParam(value="idJabatan") BigInteger idJabatan, Model model){
        Jabatan jabatan = jabatanService.findById(idJabatan);
        model.addAttribute("jabatan", jabatan);

        return "update-jabatan";
    }

    @RequestMapping(value="/jabatan/ubah/", method=RequestMethod.POST)
    String updateJabatanSubmit(@ModelAttribute Jabatan jabatan, Model model) {
        Jabatan updated = jabatanService.save(jabatan);
        model.addAttribute("jabatan", updated);

        return "update-jabatan-berhasil";
    }

    @RequestMapping(value="/jabatan/hapus", method = RequestMethod.POST)
    String deleteJabatan(@ModelAttribute Jabatan jabatan, Model model){
        Jabatan deleted = jabatanService.findById(jabatan.getId());
        model.addAttribute("deleted", deleted);
        if (deleted.getJabatanPegawaiSet().isEmpty()) {
            jabatanService.deleteById(deleted.getId());
            return "delete-jabatan-berhasil";
        } else {
         return "delete-jabatan-gagal";
        }
    }

    @RequestMapping(value="/jabatan/viewall", method = RequestMethod.GET)
    String viewAllJabatan(Model model) {
        List<Jabatan> jabatans = jabatanService.findAll();
        model.addAttribute("jabatans", jabatans);

        Map<BigInteger,Integer> result = new HashMap<>();

        for (Jabatan jabatan : jabatans)
            result.put(jabatan.getId(),jabatanPegawaiService.countByJabatan(jabatan.getId()));

        model.addAttribute("count", result);
        return "view-all-jabatan";
    }

}
