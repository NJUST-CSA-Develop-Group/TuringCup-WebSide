package com.turingcup.csa.Controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.turingcup.csa.Services.ShowTeamInfo;
import com.turingcup.csa.Services.SignUpTeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;


@Controller
@RequestMapping(value = "/signUp")
public class signUpController {
    private SignUpTeamService signUpService;
    private ShowTeamInfo showTeamInfo;

    //依赖注入
    @Autowired
    public signUpController(SignUpTeamService signUpService, ShowTeamInfo showTeamInfo){
        this.signUpService = signUpService;
        this.showTeamInfo = showTeamInfo;
    }

    @RequestMapping(value = "/teamInfoUpload", method = RequestMethod.POST)
    public String teamSignUp(HttpServletRequest request, HttpServletResponse response) throws Exception{
        String path = request.getContextPath();
        response.setContentType("text/html;charset=gb2312");
        ObjectMapper objectMapper = new ObjectMapper();
        RestTemplate restTemplate = new RestTemplate();

        //腾讯验证
        String aid = "2077933102"; //腾讯aid
        String appSecretKey = "0PwDClKPnRcbhsANSSJGijg**"; //验证密码
        String url = "https://ssl.captcha.qq.com/ticket/verify?" +
                "aid=" + aid + "&" + "AppSecretKey=" + appSecretKey + "&"
                + "Ticket=" + request.getParameter("ticket") + "&Randstr=" + request.getParameter("randStr") +
                "&UserIP=" + request.getRemoteAddr();
        ResponseEntity responseEntity = restTemplate.exchange(url, HttpMethod.GET, null, String.class);
        Map<String, String> map = objectMapper.readValue((String)responseEntity.getBody(), Map.class);
        if(Integer.valueOf(map.get("response")) == 1){
            if(signUpService.singUpTeamInfo(request)){
                if (showTeamInfo.findTeamById(request)) {
                    return "signUpSuccess";
                }
                else{
                    response.getWriter().print("<script language=\"javascript\">alert('数据上传成功但数据库读取失败，请联系平台负责人！');" +
                            "window.location.href='" + path + "/signUp/toMainPage.action'</script>");
                    return null;
                }
            }
            else{
                response.getWriter().print("<script language=\"javascript\">alert('数据库写入失败，请重新提交或联系平台负责人！');" +
                        "window.location.href='" + path + "/signUp/toMainPage.action'</script>");
                return null;
            }
        }
        else{
            response.getWriter().print("<script language=\"javascript\">alert('验证码核验失败，请重新打开网页！');" +
                    "window.location.href='" + path + "/signUp/toMainPage.action'</script>");
            return null;
        }
    }

    //ajax方法 连接数据库 查询是否有重复队名
    @ResponseBody
    @RequestMapping(value = "/checkTeamName")
    public String isTeamNameExist(HttpServletRequest request){
        if(signUpService.checkTeamName(request.getParameter("teamName"))){ //连接数据库
            return "true";
        }
        else{
            return "false";
        }
    }

    //跳转至报名界面
    @RequestMapping(value = "/signUpPage")
    public String toSignUpPage(){
        return "signUpPage";
    }

    //跳转至主页
    @RequestMapping(value = "toMainPage")
    public String toMainPage(){
        return "index";
    }

    @RequestMapping(value = "toLive")
    public String toLivePage(){
        return "matchLive";
    }
}
