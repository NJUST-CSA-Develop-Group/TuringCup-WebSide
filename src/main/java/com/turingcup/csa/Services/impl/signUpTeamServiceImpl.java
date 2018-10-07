package com.turingcup.csa.Services.impl;

import com.turingcup.csa.Services.signUpTeamService;
import org.springframework.stereotype.Service;

import javax.servlet.ServletRequest;

@Service
public class signUpTeamServiceImpl implements signUpTeamService {
    @Override
    public boolean checkMember(String members) {
        return false;
    }

    @Override
    public boolean singUpTeamInfo(ServletRequest request) {
        return false;
    }
}
