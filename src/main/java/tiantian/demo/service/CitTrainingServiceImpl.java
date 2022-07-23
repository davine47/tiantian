package tiantian.demo.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
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
}
