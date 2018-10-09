package com.turingcup.csa.Controller;

import com.turingcup.csa.Services.SignUpTeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/signUp")
public class signUpController {
    private SignUpTeamService signUpService;

    @Autowired
    public signUpController(SignUpTeamService signUpService){
        this.signUpService = signUpService;
    }

    @RequestMapping(value = "/teamInfoUpload", method = RequestMethod.POST)
    public ModelAndView teamSignUp(HttpServletRequest request, ModelAndView modelAndView){
        if(signUpService.singUpTeamInfo(request)){

            modelAndView.setViewName("signUpSuccess");
            return modelAndView;
        }
        modelAndView.setViewName("index");
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping(value = "/checkMember")
    public boolean isMemberExist(@RequestBody String member){
        return signUpService.checkMember(member);
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
