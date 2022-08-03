package tiantian.demo.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import tiantian.demo.reppository.CitTrainingMapper;
import tiantian.demo.reppository.model.CitTrainingModel;

/**
 * @author davine
 * @date 2022/7/23
 */
@Component
public class CitTrainingServiceImpl extends ServiceImpl<CitTrainingMapper, CitTrainingModel>
        implements CitTrainingService {
    @Autowired
    private CitTrainingMapper mapper;
    @Override
    public IPage<CitTrainingModel> selectYear(Page<?> page, Integer minYear, Integer maxYear) {
        return mapper.selectYear(page, minYear, maxYear);
    }

    @Override
    public IPage<CitTrainingModel> selectMile(Page<?> page, Integer minMile, Integer maxMile) {
        return mapper.selectMile(page, minMile, maxMile);
    }

    @Override
    public IPage<CitTrainingModel> selectTime(Page<?> page, Integer minTime, Integer maxTime) {
        return mapper.selectTime(page, minTime, maxTime);
    }
}
