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

    //依赖注入
    @Autowired
    public TeamInfoRepositoryImpl(SessionFactory sessionFactory){
        this.sessionFactory = sessionFactory;
    }

    //检查是否存在对应数据
    @Override
    public boolean checkContainData(String dataType, String data) {
        switch(dataType){
            case "teamName":
                Session session = sessionFactory.openSession();
                Query query = session.createQuery("FROM TeamInfoEntity WHERE teamName = ?1");
                query.setParameter(1, data);
                boolean flag = query.list().isEmpty(); //如果返回列表为空则不包含对应数据
                session.close();
                return flag;

            default: return false;

        }
    }

    //写入队伍信息
    @Override
    public int writeTeamInfo(TeamInfoEntity teamInfo) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        int teamID = -1;
        try{
            session.save(teamInfo);
            teamID = teamInfo.getId(); //队伍ID为自动增长，在save后再获取
            transaction.commit();
        } catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        } finally {
            session.close();
        }
        return teamID;
    }

    //根据ID查询队伍，用于报名信息返回
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
