package cn.org.hbca.project.dao;

import cn.org.hbca.project.model.Dialogitemconfig;
import cn.org.hbca.project.model.DialogitemconfigExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DialogitemconfigMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table dialogitemconfig
     *
     * @mbggenerated Tue Nov 04 22:34:35 CST 2014
     */
    int countByExample(DialogitemconfigExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table dialogitemconfig
     *
     * @mbggenerated Tue Nov 04 22:34:35 CST 2014
     */
    int deleteByExample(DialogitemconfigExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table dialogitemconfig
     *
     * @mbggenerated Tue Nov 04 22:34:35 CST 2014
     */
    int insert(Dialogitemconfig record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table dialogitemconfig
     *
     * @mbggenerated Tue Nov 04 22:34:35 CST 2014
     */
    int insertSelective(Dialogitemconfig record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table dialogitemconfig
     *
     * @mbggenerated Tue Nov 04 22:34:35 CST 2014
     */
    List<Dialogitemconfig> selectByExample(DialogitemconfigExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table dialogitemconfig
     *
     * @mbggenerated Tue Nov 04 22:34:35 CST 2014
     */
    int updateByExampleSelective(@Param("record") Dialogitemconfig record, @Param("example") DialogitemconfigExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table dialogitemconfig
     *
     * @mbggenerated Tue Nov 04 22:34:35 CST 2014
     */
    int updateByExample(@Param("record") Dialogitemconfig record, @Param("example") DialogitemconfigExample example);
}