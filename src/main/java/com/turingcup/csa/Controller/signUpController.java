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
import java.util.HashMap;
import java.util.Map;


@Controller
@RequestMapping(value = "/signUp")
public class signUpController {
    private SignUpTeamService signUpService;
    private ShowTeamInfo showTeamInfo;

    @Autowired
    public signUpController(SignUpTeamService signUpService, ShowTeamInfo showTeamInfo){
        this.signUpService = signUpService;
        this.showTeamInfo = showTeamInfo;
    }

    @RequestMapping(value = "/teamInfoUpload", method = RequestMethod.POST)
    public String teamSignUp(HttpServletRequest request) throws Exception{
        RestTemplate restTemplate = new RestTemplate();
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
        Map<String, String> map = new HashMap<>();
        map.put("aid", "2077933102");
        map.put("AppSecretKey", "0PwDClKPnRcbhsANSSJGijg**");
        map.put("Ticket", request.getParameter("ticket"));
        map.put("RandStr", request.getParameter("randStr"));
        map.put("UserIP", request.getRemoteAddr());
        ObjectMapper objectMapper = new ObjectMapper();
        String body = objectMapper.writeValueAsString(map);
        String url = "https://ssl.captcha.qq.com/ticket/verify";
        HttpEntity<String> entity = new HttpEntity<>(body, headers);
        ResponseEntity responseEntity = restTemplate.exchange(url, HttpMethod.GET, entity, String.class);
        String verifyResult = (String)responseEntity.getBody();
        if(signUpService.singUpTeamInfo(request)){
            showTeamInfo.findTeamById(request);
            return "signUpSuccess";
        }
        return "index";
    }

    @ResponseBody
    @RequestMapping(value = "/checkTeamName")
    public String isTeamNameExist(HttpServletRequest request){
        if(signUpService.checkTeamName(request.getParameter("teamName"))){
            return "true";
        }
        else{
            return "false";
        }
    }

    @RequestMapping(value = "/signUpPage")
    public String toSignUpPage(){
        return "signUpPage";
    }

    @RequestMapping(value = "toMainPage")
    public String toMainPage(){
        return "index";
    }
}
