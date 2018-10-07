package com.turingcup.csa.Repository;

import com.turingcup.csa.Entities.TeamInfoEntity;

public interface teamInfoRepository {
    boolean checkContainData(String dataType, String[] data);
    boolean writeTeamInfo(TeamInfoEntity teamInfo);
}
