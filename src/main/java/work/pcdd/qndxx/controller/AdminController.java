package work.pcdd.qndxx.controller;

import com.github.pagehelper.PageInfo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import work.pcdd.qndxx.entity.Student;
import work.pcdd.qndxx.service.AdminService;
import work.pcdd.qndxx.util.R;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author pcdd
 */
@Tag(name = "管理员相关API")
@RestController
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController {

    private final AdminService adminService;

    @Operation(summary = "根据班级名查询所有学生")
    @GetMapping("/findAllByClazzName")
    public R<List<Student>> findAllByClazzName(@RequestParam int page, @RequestParam int limit, HttpSession session) {
        // 从session中取出当前管理员所在的班级作为参数传递
        Student admin = (Student) session.getAttribute("admin");
        PageInfo<Student> pageInfo = adminService.findAllByClazzName(admin.getClazzName(), page, limit);
        return R.ok0(pageInfo.getList(), pageInfo.getTotal());
    }

    @Operation(summary = "查询截图已交信息")
    @GetMapping("/findSubmitted")
    public R<List<Student>> findSubmitted(@RequestParam int page, @RequestParam int limit, HttpSession session) {
        Student admin = (Student) session.getAttribute("admin");
        PageInfo<Student> pageInfo = adminService.findSubmitted(admin.getClazzName(), page, limit);
        return R.ok0(pageInfo.getList(), pageInfo.getTotal());
    }

    @Operation(summary = "查询截图未交信息")
    @GetMapping("/findUnpaid")
    public R<List<Student>> findUnpaid(@RequestParam int page, @RequestParam int limit, HttpSession session) {
        Student admin = (Student) session.getAttribute("admin");
        PageInfo<Student> pageInfo = adminService.findUnpaid(admin.getClazzName(), page, limit);
        return R.ok0(pageInfo.getList(), pageInfo.getTotal());
    }

    @Operation(summary = "查询截图已交人数")
    @GetMapping("/findSubmittedCount/{clazzName}")
    public R<Integer> findSubmittedCount(@PathVariable("clazzName") String clazzName) {
        return R.ok(adminService.findSubmittedCount(clazzName));
    }

    @Operation(summary = "查询截图未交人数")
    @GetMapping("/findUnpaidCount/{clazzName}")
    public R<Integer> findUnpaidCount(@PathVariable("clazzName") String clazzName) {
        return R.ok(adminService.findUnpaidCount(clazzName));
    }

    @Operation(summary = "修改管理员密码")
    @PutMapping("/password/{oldPwd}/{newPwd}")
    public R updPwd(@PathVariable String oldPwd, @PathVariable String newPwd, HttpSession session) {
        return adminService.updPwd(oldPwd, newPwd, session);
    }

}
