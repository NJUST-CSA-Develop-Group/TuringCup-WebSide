package com.turingcup.csa.Controller;

import com.turingcup.csa.Repository.teamInfoRepository;
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
    private teamInfoRepository test;

    @Autowired
    public signUpController(signUpTeamService signUpService, teamInfoRepository  test){
        this.signUpService = signUpService;
        this.test = test;
    }

    @RequestMapping(value = "teamInfoUpload.signUp")
    public boolean teamSignUp(ServletRequest request){
        test.writeTeamInfo(null);
        return false;
        //return signUpService.singUpTeamInfo(request);
    }

    @ResponseBody
    @RequestMapping(value = "checkMember.signUp")
    public boolean isMemberExist(@RequestBody String member){
        return signUpService.checkMember(member);
    }

    @RequestMapping(value = "signUpPage.signUp")
    public String toSignUpPage(){
        return "signUpPage";
    }
}
