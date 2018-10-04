<%--
  Created by IntelliJ IDEA.
  User: Zwiebeln_Chan
  Date: 2018/9/30
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>图灵杯报名</title>
  </head>
  <body>
  <div class="formDiv">
      <form action="<%=request.getContextPath()%>/teamInfoUpload.signUp" method="post">
          <table>
              <tr>
                  <th>队伍名</th>
                  <td><input type="text" name="teamName" id="teamName" /></td>
              </tr>
              <tr>
                  <th>队长姓名</th>
                  <td><input type="text" name="teamLeaderName" id="teamLeaderName" /></td>
              </tr>
              <tr>
                  <th>队长所属大学</th>
                  <td><input type="text" name="teamLeaderCollege" id="teamLeaderCollege" /></td>
              </tr>
              <tr>
                  <th>队员1姓名</th>
                  <td><input type="text" name="teamMemberOneName" id="teamMemberOneName" /></td>
              </tr>
              <tr>
                  <td>队员1所属大学</td>
                  <td><input type="text" name="teamMemberOneCollege" id="teamMemberOneCollege" /></td>
              </tr>
              <tr>
                  <th>队员2姓名</th>
                  <td><input type="text" name="teamMemberTwoName" id="teamMemberTwoName" /></td>
              </tr>
              <tr>
                  <th>队员2所属大学</th>
                  <td><input type="text" name="teamMemberTwoCollege" id="teamMemberTwoCollege"/></td>
              </tr>
              <tr>
                  <th>QQ</th>
                  <td><input type="text" name="QQ" id="QQ" /></td>
              </tr>
              <tr>
                  <th>联系电话</th>
                  <td><input type="text" name="telNumber" id="telNumber" /></td>
              </tr>
              <tr>
                  <th>电子邮箱</th>
                  <td><input type="text" name="EMailAddress" id="EMailAddress" /></td>
              </tr>
          </table>
      </form>
  </div>
  </body>
</html>
