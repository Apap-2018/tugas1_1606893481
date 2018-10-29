package com.sipeg.apap.controller;

import com.sipeg.apap.model.*;
import com.sipeg.apap.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by esak on 10/12/2018.
 */

@Controller
public class PegawaiController {
    @Autowired
    private PegawaiService pegawaiService;

    @Autowired
    private JabatanPegawaiService jabatanPegawaiService;

    @Autowired
    private ProvinsiService provinsiService;

    @Autowired
    private InstansiService instansiService;

    @Autowired
    private JabatanService jabatanService;

    @RequestMapping(value = "/")
    private String home(Model model) {
        model.addAttribute("jabatans", jabatanService.findAll());
        model.addAttribute("instansis", instansiService.findAll());
        return "home";
    }

    @RequestMapping(value = "/pegawai", method = RequestMethod.GET)
    private String viewPegawai(@RequestParam("nip") String nip, Model model) {
        Pegawai pegawai = pegawaiService.getDataByNIP(nip);
        model.addAttribute("pegawai", pegawai);
        model.addAttribute("gaji", pegawai.getGajiString());
        model.addAttribute("jabatan", pegawai.getJabatan());

        model.addAttribute("tanggal", pegawai.getTanggalLahir());
        return "view-pegawai";
    }

    @RequestMapping(value = "/pegawai/termuda-tertua", method = RequestMethod.GET)
    private String viewPegawaiTermudaTertua(@RequestParam("idInstansi") BigInteger id, Model model) {
        Instansi instansi = instansiService.findById(id);

        Pegawai tertua = pegawaiService.findOldestById(id);
        Pegawai termuda = pegawaiService.findYoungestById(id);

        model.addAttribute("instansi",instansi);
        model.addAttribute("tertua",tertua);
        model.addAttribute("jabatanTertua",tertua.getJabatan());
        model.addAttribute("jabatanTermuda",termuda.getJabatan());
        model.addAttribute("termuda",termuda);

        return "view-termuda-tertua";
    }

    @RequestMapping(value = "/pegawai/tambah", method = RequestMethod.GET)
    private String buatPegawai(Model model) {
        List<Provinsi> provinsi = provinsiService.findAll();
        List<Instansi> instansis = instansiService.findAll();
        List<Jabatan> jabatans = jabatanService.findAll();

        Pegawai pegawai = new Pegawai();

        JabatanToAdd jabatanToAdd = new JabatanToAdd();
        model.addAttribute("jabatanToAdd", jabatanToAdd);
        model.addAttribute("provinsi", provinsi);
        model.addAttribute("pegawai", pegawai);
        model.addAttribute("instansis", instansis);
        model.addAttribute("jabatans", jabatans);

        return "tambah-pegawai";
    }

    @RequestMapping(value = "/pegawai/ubah", method = RequestMethod.GET)
    private String buatPegawai(@RequestParam("nip") String nip, Model model) {
        List<Provinsi> provinsi = provinsiService.findAll();
        List<Instansi> instansis = instansiService.findAll();
        List<Jabatan> jabatans = jabatanService.findAll();

        Pegawai pegawai = pegawaiService.getDataByNIP(nip);

        JabatanToAdd jabatanToAdd = new JabatanToAdd();
        jabatanToAdd.getJabatanList().clear();

        for (Jabatan jabatanExisted : pegawai.getJabatan())
            jabatanToAdd.getJabatanList().add(jabatanExisted);

        model.addAttribute("jabatanToAdd", jabatanToAdd);
        model.addAttribute("provinsi", provinsi);
        model.addAttribute("pegawai", pegawai);
        model.addAttribute("instansis", instansis);
        model.addAttribute("jabatans", jabatans);

        return "update-pegawai";
    }

    @RequestMapping(value = "/pegawai/tambah", method = RequestMethod.POST)
    private String tambahPegawai(@ModelAttribute JabatanToAdd jabatanToAdd, @ModelAttribute Pegawai pegawai, Model model) {
        Pegawai pegawaiAdded = pegawaiService.addPegawai(pegawai);

        for (Jabatan jabatan : jabatanToAdd.getJabatanList())
            jabatanPegawaiService.addJabatanPegawai(pegawaiAdded, jabatan);

        model.addAttribute("pegawai", pegawai);

        return "tambah-pegawai-berhasil";
    }

    @RequestMapping(value = "/pegawai/ubah", method = RequestMethod.POST)
    private String tambahPegawai(@ModelAttribute JabatanToAdd jabatanToAdd, @RequestParam("nip") String nip,
                                 @ModelAttribute Pegawai pegawai, Model model) {
        Pegawai pegawaiAdded = pegawaiService.updatePegawai(pegawai);

        jabatanPegawaiService.clearByPegawai(pegawaiAdded);

        for (Jabatan jabatan : jabatanToAdd.getJabatanList())
            jabatanPegawaiService.addJabatanPegawai(pegawaiAdded, jabatan);

        model.addAttribute("pegawai", pegawai);

        return "update-pegawai-berhasil";
    }

    @RequestMapping(value = "/pegawai/tambah", params = {"addJabatan"})
    public String addJabatan(@ModelAttribute JabatanToAdd jabatanToAdd, @ModelAttribute Pegawai pegawai, Model model) {
        jabatanToAdd.getJabatanList().add(new Jabatan());
        model.addAttribute("jabatanToAdd", jabatanToAdd);
        model.addAttribute("pegawai", pegawai);
        model.addAttribute("provinsi", provinsiService.findAll());
        model.addAttribute("instansis", instansiService.findAll());
        model.addAttribute("jabatans", jabatanService.findAll());
        return "tambah-pegawai";
    }

    @RequestMapping(value = "/pegawai/ubah", params = {"addJabatan"})
    public String addJabatan(@RequestParam("nip") String nip, @ModelAttribute JabatanToAdd jabatanToAdd, @ModelAttribute Pegawai pegawai, Model model) {
        jabatanToAdd.getJabatanList().add(new Jabatan());
        model.addAttribute("jabatanToAdd", jabatanToAdd);
        model.addAttribute("pegawai", pegawai);
        model.addAttribute("provinsi", provinsiService.findAll());
        model.addAttribute("instansis", instansiService.findAll());
        model.addAttribute("jabatans", jabatanService.findAll());
        return "update-pegawai";
    }

    @RequestMapping(value = "/pegawai/tambah", params = {"removeJabatan"})
    public String removeJabatan(@ModelAttribute JabatanToAdd jabatanToAdd, @ModelAttribute Pegawai pegawai, Model model,
                                final HttpServletRequest req) {
        final Integer rowId = Integer.valueOf(req.getParameter("removeJabatan"));
        jabatanToAdd.getJabatanList().remove(rowId.intValue());

        model.addAttribute("jabatanToAdd", jabatanToAdd);
        model.addAttribute("pegawai", pegawai);
        model.addAttribute("provinsi", provinsiService.findAll());
        model.addAttribute("instansis", instansiService.findAll());
        model.addAttribute("jabatans", jabatanService.findAll());

        return "tambah-pegawai";
    }

    @RequestMapping(value = "/pegawai/ubah", params = {"removeJabatan"})
    public String removeJabatan(@RequestParam("nip") String nip, @ModelAttribute JabatanToAdd jabatanToAdd, @ModelAttribute Pegawai pegawai, Model model,
                                final HttpServletRequest req) {
        final Integer rowId = Integer.valueOf(req.getParameter("removeJabatan"));
        jabatanToAdd.getJabatanList().remove(rowId.intValue());

        model.addAttribute("jabatanToAdd", jabatanToAdd);
        model.addAttribute("pegawai", pegawai);
        model.addAttribute("provinsi", provinsiService.findAll());
        model.addAttribute("instansis", instansiService.findAll());
        model.addAttribute("jabatans", jabatanService.findAll());

        return "update-pegawai";
    }

    @RequestMapping(value = "/pegawai/cari", method = RequestMethod.GET)
    public String findPegawai(Model model) {
        model.addAttribute("provinsis", provinsiService.findAll());
        model.addAttribute("instansis", instansiService.findAll());
        model.addAttribute("jabatans", jabatanService.findAll());
        model.addAttribute("jabatanpegawais", jabatanPegawaiService.findAll());

        model.addAttribute("pegawaiToSearch", new PegawaiToSearch());

        return "cari-pegawai";
    }

    @RequestMapping(value = "pegawai/cari", params = {"idProvinsi", "idInstansi", "idJabatan"})
    public String filterPegawai(@RequestParam(value = "idProvinsi", required = false) BigInteger idProvinsi,
                                @RequestParam(value = "idInstansi", required = false) BigInteger idInstansi,
                                @RequestParam(value = "idJabatan", required = false) BigInteger idJabatan,
                                Model model) {
        List<JabatanPegawai> result = jabatanPegawaiService.findByFilter(idProvinsi,idInstansi,idJabatan);
        model.addAttribute("jabatanpegawais", result);

        model.addAttribute("provinsis", provinsiService.findAll());
        model.addAttribute("instansis", instansiService.findAll());
        model.addAttribute("jabatans", jabatanService.findAll());

        return "cari-pegawai";
    }
}
