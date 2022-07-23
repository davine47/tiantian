package tiantian.demo.reppository.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author davine
 * @date 2022/7/23
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("cit_training")
public class CitTrainingModel {
    private static final long serialVersionUID=1L;
    @TableId(value = "id", type = IdType.AUTO)
    private long id;
    private byte sex;
    private long year;
    private long totalMile;
    private long totalTime;

}
