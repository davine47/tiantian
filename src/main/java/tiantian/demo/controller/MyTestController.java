package tiantian.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import tiantian.demo.service.CitTrainingService;

@Controller
@RequestMapping("/test")
public class MyTestController {

    @Autowired
    private CitTrainingService citTrainingService;

    @RequestMapping("/mainPage")
    public String test(Model model) {
        model.addAttribute("mainPage", "x");
        return "mainPage";
    }
    @RequestMapping("/davine")
    public String test0(Model model) {
        return "davine";
    }
    @RequestMapping("/age")
    public String test1(Model model) {
        return "age";
    }

    @RequestMapping("/distance")
    public String test2(Model model) {
        return "distance";
    }

    @RequestMapping("/time")
    public String test3(Model model) {
        return "time";
    }

}
