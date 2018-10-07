package com.turingcup.csa.Services;

import javax.servlet.ServletRequest;

public interface signUpTeamService {
    boolean checkMember(String members);
    boolean singUpTeamInfo(ServletRequest request);
}
