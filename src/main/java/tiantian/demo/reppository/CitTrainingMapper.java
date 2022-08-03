package tiantian.demo.reppository;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import tiantian.demo.reppository.model.CitTrainingModel;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
@Mapper
public interface CitTrainingMapper extends BaseMapper<CitTrainingModel>{
    IPage<CitTrainingModel> selectYear(Page<?> page,
                                       @Param("minYear")Integer minYear,
                                       @Param("maxYear")Integer maxYear);

    IPage<CitTrainingModel> selectMile(Page<?> page,
                                       @Param("minMile")Integer minMile,
                                       @Param("maxMile")Integer maxMile);
    IPage<CitTrainingModel> selectTime(Page<?> page,
                                       @Param("minTime")Integer minTime,
                                       @Param("maxTime")Integer maxTime);

}
