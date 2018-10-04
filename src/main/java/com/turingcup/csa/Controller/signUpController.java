package com.turingcup.csa.Controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class signUpController {
    @RequestMapping(value = "teamInfoUpload.signUp")
    public boolean teamSignUp(){
        return true;
    }
}
