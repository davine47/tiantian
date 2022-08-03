package tiantian.demo.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import tiantian.demo.reppository.CitTrainingMapper;
import tiantian.demo.reppository.model.CitTrainingModel;
import tiantian.demo.service.CitTrainingService;

import java.util.ArrayList;
import java.util.List;

/**
 * @author davine
 * @date 2022/8/2
 */
@RestController
@RequestMapping("/data")
public class ReqController {

    @Autowired
    private CitTrainingService services;

    @RequestMapping("/all")
    public ApiResp all(@RequestParam(value = "page") Integer page,
                      @RequestParam(value = "limit") Integer limit) {
        System.out.println("page" + page + "limit" + limit);
        List<CitTrainingModel> back = new ArrayList();
        CitTrainingModel model = new CitTrainingModel();
        model.setId(1);
        model.setSex((byte) 1);
        model.setTotalMile(123);
        model.setYear(12);
        model.setTotalTime(1234);
        back.add(model);

        return ApiResp.buildSuccess(back);
    }

    @RequestMapping("/getYear")
    public ApiResp year(@RequestParam(value = "page") Integer page,
                        @RequestParam(value = "limit") Integer limit,
                        @RequestParam(value = "yearMin") Integer yearMin,
                       @RequestParam(value = "yearMax") Integer yearMax) {
        //System.out.println("page" + yearMin + "limit" + yearMax);
        Page<CitTrainingModel> pages = new Page<>(page,limit);
        IPage iPage = services.selectYear(pages, yearMin, yearMax);
        return ApiResp.buildSuccess(iPage.getRecords());
    }
    @RequestMapping("/getTime")
    public ApiResp time(@RequestParam(value = "page") Integer page,
                        @RequestParam(value = "limit") Integer limit,
                        @RequestParam(value = "timeMin") Integer timeMin,
                        @RequestParam(value = "timeMax") Integer timeMax) {
        Page<CitTrainingModel> pages = new Page<>(page,limit);
        IPage iPage = services.selectTime(pages, timeMin, timeMax);
        return ApiResp.buildSuccess(iPage.getRecords());
    }

    @RequestMapping("/getMile")
    public ApiResp mile(@RequestParam(value = "page") Integer page,
                        @RequestParam(value = "limit") Integer limit,
                        @RequestParam(value = "mileMin") Integer mileMin,
                        @RequestParam(value = "mileMax") Integer mileMax) {

        Page<CitTrainingModel> pages = new Page<>(page,limit);
        IPage iPage = services.selectMile(pages, mileMin, mileMax);
        return ApiResp.buildSuccess(iPage.getRecords());
    }
}
