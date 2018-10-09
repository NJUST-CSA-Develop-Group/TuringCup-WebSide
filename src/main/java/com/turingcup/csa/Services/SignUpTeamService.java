package com.turingcup.csa.Services;

import javax.servlet.http.HttpServletRequest;

public interface SignUpTeamService {
    boolean checkTeamName(String teamName);
    boolean singUpTeamInfo(HttpServletRequest request);
}
