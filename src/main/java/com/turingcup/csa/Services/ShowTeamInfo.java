package com.turingcup.csa.Services;

import javax.servlet.http.HttpServletRequest;

public interface ShowTeamInfo {
    boolean findTeamById(HttpServletRequest request);
}
