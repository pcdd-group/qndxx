package work.pcdd.qndxx.common.interceptor;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 用户拦截器
 *
 * @author pcdd
 */
@Slf4j
public class UserInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession(true);
        boolean isLogin = session.getAttribute("user") != null;
        log.info("{} 用户拦截器执行，{}", request.getRequestURI(), isLogin ? "允许访问" : "未登录，拒绝访问");
        // 若未登录，则跳转到首页（index.html）
        if (!isLogin) {
            response.sendRedirect("/");
        }
        return isLogin;
    }

}
