package com.turingcup.csa.Controller;

import com.turingcup.csa.Services.signUpTeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletRequest;

@Controller
public class signUpController {
    private signUpTeamService signUpService;

    @Autowired
    public signUpController(signUpTeamService signUpService){
        this.signUpService = signUpService;
    }

    @RequestMapping(value = "teamInfoUpload.signUp")
    public boolean teamSignUp(ServletRequest request){
        return signUpService.singUpTeamInfo(request);
    }

    @ResponseBody
    @RequestMapping(value = "checkMember.signUp")
    public boolean isMemberExist(@RequestBody String member){
        return signUpService.checkMember(member);
    }
}
