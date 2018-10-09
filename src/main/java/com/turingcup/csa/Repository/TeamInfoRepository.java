package com.turingcup.csa.Repository;

import com.turingcup.csa.Entities.TeamInfoEntity;

public interface TeamInfoRepository {
    boolean checkContainData(String dataType, String data);
    int writeTeamInfo(TeamInfoEntity teamInfo);
    TeamInfoEntity findTeamById(int id);
}
