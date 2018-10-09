package com.turingcup.csa.Entities;

import org.springframework.stereotype.Repository;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Repository
@Table(name = "TeamInfo", schema = "turingcup", catalog = "")
public class TeamInfoEntity {
    private int id;
    private String teamName;
    private String teamLeaderName;
    private String teamLeaderCollege;
    private String teamMember1Name;
    private String teamMember1College;
    private String teamMember2Name;
    private String teamMember2College;
    private String qq;
    private String telNumber;
    private String emailAddress;
    private Timestamp signupTime;

    @Id
    @Column(name = "ID", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "TEAM_NAME", nullable = false, length = 255)
    public String getTeamName() {
        return teamName;
    }

    public void setTeamName(String teamName) {
        this.teamName = teamName;
    }

    @Basic
    @Column(name = "TEAM_LEADER_NAME", nullable = false, length = 255)
    public String getTeamLeaderName() {
        return teamLeaderName;
    }

    public void setTeamLeaderName(String teamLeaderName) {
        this.teamLeaderName = teamLeaderName;
    }

    @Basic
    @Column(name = "TEAM_LEADER_COLLEGE", nullable = false, length = 255)
    public String getTeamLeaderCollege() {
        return teamLeaderCollege;
    }

    public void setTeamLeaderCollege(String teamLeaderCollege) {
        this.teamLeaderCollege = teamLeaderCollege;
    }

    @Basic
    @Column(name = "TEAM_MEMBER_1_NAME", nullable = true, length = 255)
    public String getTeamMember1Name() {
        return teamMember1Name;
    }

    public void setTeamMember1Name(String teamMember1Name) {
        this.teamMember1Name = teamMember1Name;
    }

    @Basic
    @Column(name = "TEAM_MEMBER_1_COLLEGE", nullable = true, length = 255)
    public String getTeamMember1College() {
        return teamMember1College;
    }

    public void setTeamMember1College(String teamMember1College) {
        this.teamMember1College = teamMember1College;
    }

    @Basic
    @Column(name = "TEAM_MEMBER_2_NAME", nullable = true, length = 255)
    public String getTeamMember2Name() {
        return teamMember2Name;
    }

    public void setTeamMember2Name(String teamMember2Name) {
        this.teamMember2Name = teamMember2Name;
    }

    @Basic
    @Column(name = "TEAM_MEMBER_2_COLLEGE", nullable = true, length = 255)
    public String getTeamMember2College() {
        return teamMember2College;
    }

    public void setTeamMember2College(String teamMember2College) {
        this.teamMember2College = teamMember2College;
    }

    @Basic
    @Column(name = "QQ", nullable = false, length = 255)
    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    @Basic
    @Column(name = "TEL_NUMBER", nullable = false, length = 255)
    public String getTelNumber() {
        return telNumber;
    }

    public void setTelNumber(String telNumber) {
        this.telNumber = telNumber;
    }

    @Basic
    @Column(name = "EMAIL_ADDRESS", nullable = true, length = 255)
    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    @Basic
    @Column(name = "SIGNUP_TIME", nullable = false)
    public Timestamp getSignupTime() {
        return signupTime;
    }

    public void setSignupTime(Timestamp signupTime) {
        this.signupTime = signupTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TeamInfoEntity that = (TeamInfoEntity) o;
        return id == that.id &&
                Objects.equals(teamName, that.teamName) &&
                Objects.equals(teamLeaderName, that.teamLeaderName) &&
                Objects.equals(teamLeaderCollege, that.teamLeaderCollege) &&
                Objects.equals(teamMember1Name, that.teamMember1Name) &&
                Objects.equals(teamMember1College, that.teamMember1College) &&
                Objects.equals(teamMember2Name, that.teamMember2Name) &&
                Objects.equals(teamMember2College, that.teamMember2College) &&
                Objects.equals(qq, that.qq) &&
                Objects.equals(telNumber, that.telNumber) &&
                Objects.equals(emailAddress, that.emailAddress) &&
                Objects.equals(signupTime, that.signupTime);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, teamName, teamLeaderName, teamLeaderCollege, teamMember1Name, teamMember1College, teamMember2Name, teamMember2College, qq, telNumber, emailAddress, signupTime);
    }
}
