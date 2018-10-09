package com.turingcup.csa.Services;

import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

public interface SignUpTeamService {
    boolean checkMember(String members);
    boolean singUpTeamInfo(HttpServletRequest request);
}
