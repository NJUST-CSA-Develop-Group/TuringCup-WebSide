package com.turingcup.csa.Repository;

import com.turingcup.csa.Entities.TeamInfoEntity;

public interface TeamInfoRepository {
    boolean checkContainData(String dataType, String data); //判断是否包含对应数据
    int writeTeamInfo(TeamInfoEntity teamInfo); //写入报名数据
    TeamInfoEntity findTeamById(int id);
}
