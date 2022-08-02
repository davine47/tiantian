package tiantian.demo.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import org.apache.ibatis.annotations.Param;
import tiantian.demo.reppository.model.CitTrainingModel;

/**
 * @author davine
 * @date 2022/7/23
 */
public interface CitTrainingService extends IService<CitTrainingModel> {
    IPage<CitTrainingModel> selectYear(Page<?> page,
                                       @Param("minYear")Integer minYear,
                                       @Param("maxYear")Integer maxYear);
}
