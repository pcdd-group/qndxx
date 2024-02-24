package work.pcdd.qndxx.service;

import com.github.pagehelper.PageInfo;
import work.pcdd.qndxx.entity.Student;
import work.pcdd.qndxx.util.R;

import javax.servlet.http.HttpSession;

/**
 * @author pcdd
 */
public interface AdminService {

    /**
     * 管理员登录
     *
     * @param stuId   管理员账户（学号）
     * @param pwd     密码
     * @param session session
     * @return 执行结果
     */
    R<String> login(String stuId, String pwd, HttpSession session);

    /**
     * 根据班级名查询所有学生的学号，姓名，班级
     *
     * @param clazzName 班级名
     * @param pageNum   起始页
     * @param pageSize  每页显示的条数
     * @return 执行结果
     */
    PageInfo<Student> findAllByClazzName(String clazzName, int pageNum, int pageSize);

    /**
     * 查询不同班级的截图已交人员
     *
     * @param clazzName 班级名
     * @param pageNum   起始页
     * @param pageSize  每页显示的条数
     * @return 执行结果
     */
    R findSubmitted(String clazzName, int pageNum, int pageSize);

    /**
     * 查询不同班级的截图未交人员
     *
     * @param clazzName 班级名
     * @param pageNum   起始页
     * @param pageSize  每页显示的条数
     * @return 学生信息
     */
    R findUnpaid(String clazzName, int pageNum, int pageSize);


    /**
     * 查询不同班级的截图已交人数
     *
     * @param clazzName 班级名
     * @return 已交人数
     */
    Integer findSubmittedCount(String clazzName);

    /**
     * 查询不同班级的截图未交人数
     *
     * @param clazzName 班级名
     * @return 未交人数
     */
    Integer findUnpaidCount(String clazzName);

    /**
     * 管理员修改密码
     *
     * @param oldPwd  旧密码
     * @param newPwd  新密码
     * @param session session对象
     * @return 执行结果
     */
    R updPwd(String oldPwd, String newPwd, HttpSession session);

}
