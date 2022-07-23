package tiantian.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import tiantian.demo.service.CitTrainingService;

/**
 * @author davine
 * @date 2022/7/23
 */
@Controller
@RequestMapping("/test")
public class MyTestController {

    @Autowired
    private CitTrainingService citTrainingService;

    @RequestMapping("/name")
    public String test2(Model model) {
        model.addAttribute("name", "x");
        return "test";
    }

    @RequestMapping("/age")
    public String test1(Model model) {
        return "test1";
    }
}
