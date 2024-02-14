package work.pcdd.qndxx.service;

import work.pcdd.qndxx.entity.Clazz;

import javax.servlet.http.HttpSession;

/**
 * @author pcdd
 */
public interface ClazzService {

    /**
     * 根据班级查询clazz表
     *
     * @param clazzName 班级名
     * @return 执行结果
     */
    Clazz getClazz(String clazzName, HttpSession session);

    /**
     * 根据班级修改期数
     *
     * @param clazz 班级bean
     * @return 执行结果
     */
    Integer updateIssue(Clazz clazz);

    /**
     * 根据班级修改系统状态
     *
     * @param clazz 班级bean
     * @return 执行结果
     */
    Integer updateIsEnable(Clazz clazz, HttpSession session);

}
