package com.turingcup.csa.Repository.Impl;

import com.turingcup.csa.Entities.TeamInfoEntity;
import com.turingcup.csa.Repository.teamInfoRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class teamInfoRepositoryImpl implements teamInfoRepository {
    private SessionFactory sessionFactory;

    @Autowired
    public  teamInfoRepositoryImpl(SessionFactory sessionFactory){
        this.sessionFactory = sessionFactory;
    }

    @Override
    public boolean checkContainData(String dataType, String[] data) {
        Session session = sessionFactory.openSession();
        Query query = session.createQuery("FROM TeamInfoEntity WHERE ?1 = ?2");
        query.setParameter(1, dataType);
        for(String metaData : data){
            query.setParameter(2, metaData);
            if(query.list().isEmpty())
                return false;
        }
        return true;

    }

    @Override
    public boolean writeTeamInfo(TeamInfoEntity teamInfo) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        /* test code
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
            transaction.commit();
        } catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        } finally {
            session.close();
        }
        return true;
    }
}
