package com.turingcup.csa.Repository.Impl;

import com.turingcup.csa.Entities.TeamInfoEntity;
import com.turingcup.csa.Repository.TeamInfoRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TeamInfoRepositoryImpl implements TeamInfoRepository {
    private SessionFactory sessionFactory;

    @Autowired
    public TeamInfoRepositoryImpl(SessionFactory sessionFactory){
        this.sessionFactory = sessionFactory;
    }

    @Override
    public boolean checkContainData(String dataType, String data) {
        Session session = sessionFactory.openSession();
        Query query = session.createQuery("FROM TeamInfoEntity WHERE teamName = ?1");
        query.setParameter(1, data);
        boolean flag = query.list().isEmpty();
        session.close();
        return flag;
    }

    @Override
    public int writeTeamInfo(TeamInfoEntity teamInfo) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        int teamID = -1;
        /*
        TeamInfoEntity test = new TeamInfoEntity();
        test.setTeamName("testTeam");
        test.setTeamLeaderName("Chen Sicong");
        test.setTeamLeaderCollege("NJUST");
        test.setQq("270712439");
        test.setEmailAddress("sicong.chen@163.com");
        test.setTelNumber("15812418818");
        test.setSignupTime(new Timestamp(System.currentTimeMillis()));
        */
        try{
            session.save(teamInfo);
            teamID = teamInfo.getId();
            transaction.commit();
        } catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        } finally {
            session.close();
        }
        return teamID;
    }

    @Override
    public TeamInfoEntity findTeamById(int id) {
        Session session = sessionFactory.openSession();
        Query query = session.createQuery("FROM TeamInfoEntity WHERE id = ?1");
        query.setParameter(1, id);
        List<TeamInfoEntity> teamInfo = query.list();
        session.close();
        return teamInfo.get(0);
    }
}
