package com.turingcup.csa.Services;

import javax.servlet.http.HttpServletRequest;

public interface SignUpTeamService {
    boolean checkTeamName(String teamName); //查找队名是否存在
    boolean singUpTeamInfo(HttpServletRequest request); //队伍报名
}
