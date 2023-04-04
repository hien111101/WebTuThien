package edu.poly.AdminController;

import edu.poly.Service.ParamService;
import edu.poly.Service.SessionService;
import edu.poly.dao.*;
import edu.poly.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
public class AdminHomeController {
    @Autowired
    ProductDAO productDAO;

    @Autowired
    AccountDAO accountdao;

  @Autowired
    SessionService session;
  @Autowired
    ParamService paramService;
    @RequestMapping("/Admin/Views")
    public String Home(Model model){
        //Hien thi don hang


     //Thong ke User hien tai
     List<Account> accounts = accountdao.findAll();
     long count = 0;
     for (Account ac : accounts) {
            count++;
            model.addAttribute("count", count);
     }


        return "layoutChangeAdmin/bodyadmin";
    }


    @RequestMapping("/Admin/Account")
    public String Account(Model model , @RequestParam("p") Optional<Integer> p){
        Account item = new Account();
        model.addAttribute("item", item);
        Pageable pageable = PageRequest.of(p.orElse(0), 5);
        Page<Account> page = accountdao.findAll(pageable);
        model.addAttribute("page", page)    ;
        return "layoutChangeAdmin/AdminAccount";
    }
    @RequestMapping("/Admin/Account/Save")
    public String Save(@Validated @ModelAttribute("item")  Account item, BindingResult errors , Model model , @RequestParam("image") MultipartFile multipartFile, @RequestParam("p") Optional<Integer> p, RedirectAttributes prams) throws IOException {
        Pageable pageable = PageRequest.of(p.orElse(0), 5);
        Page<Account> page = accountdao.findAll(pageable);
        model.addAttribute("page", page)   ;
        if(errors.hasErrors()){
            model.addAttribute("message","Some field are not valid . Please fix them");
        }else {
            String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
            String uploadDir = "static/upload";
            item.setPhoto(fileName);
            accountdao.save(item);
            model.addAttribute("mess", "Edit Success");
            paramService.save(multipartFile, uploadDir);
            model.addAttribute("item", new Product());
        }
        return "layoutChangeAdmin/AdminAccount";
    }
    @RequestMapping("/Admin/account/search-and-page")
    public String searchAndPage(Account item,Model model, @RequestParam("keywords") Optional<String> kw, @RequestParam("p") Optional<Integer> p) {
        model.addAttribute("item",item);
        String kwords = kw.orElse(session.get("keywords"));
        session.set("keywords", kwords);
        Pageable pageable = PageRequest.of(p.orElse(0), 5);
        Page<Account> page = accountdao.findByUsernameLike("%"+kwords+"%", pageable);
        model.addAttribute("page", page);
        return "layoutChangeAdmin/AdminAccount";
    }
    @RequestMapping("/Admin/Account/Edit/{id}")
    public String Edit(Model model, @PathVariable("id") Long id){
        Account item = accountdao.findById(id);
        model.addAttribute("item", item);
        List<Account> items = accountdao.findAll();
        model.addAttribute("items", items);
        return "layoutChangeAdmin/AdminAccount";
    }
     @RequestMapping("/Admin/Statistics/Revenue ")
     public String Revenue(Model model){
//        List<Order> orderList = orderdao.findAllPriceWithYear();
//        model.addAttribute("orderList",orderList);
        return"";
    }
    @RequestMapping("/Admin/Statistics/User ")
    public String StatisticsUser(Model model) {


        return "layoutChangeAdmin/bodyadmin";
    }




}
