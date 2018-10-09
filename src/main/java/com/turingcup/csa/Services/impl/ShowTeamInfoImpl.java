package com.turingcup.csa.Services.impl;

import com.turingcup.csa.Entities.TeamInfoEntity;
import com.turingcup.csa.Repository.TeamInfoRepository;
import com.turingcup.csa.Services.ShowTeamInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

@Service
public class ShowTeamInfoImpl implements ShowTeamInfo {
    private TeamInfoRepository teamInfoRepository;

    @Autowired
    public ShowTeamInfoImpl(TeamInfoRepository teamInfoRepository){
        this.teamInfoRepository = teamInfoRepository;
    }
    @Override
    public boolean findTeamById(HttpServletRequest request) {
        int teamID = (int)request.getAttribute("teamID");
        TeamInfoEntity teamInfo = teamInfoRepository.findTeamById(teamID);
        if(teamInfo != null){
            request.setAttribute("teamName", teamInfo.getTeamName());
            request.setAttribute("teamMember", teamInfo.getTeamLeaderName() + ", " + teamInfo.getTeamMember1Name() +
                    ", " + teamInfo.getTeamMember2Name());
            request.setAttribute("signUpTime", teamInfo.getSignupTime());
            return true;
        }
        return false;
    }
}
