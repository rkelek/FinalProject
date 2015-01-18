package pfinal.main;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kit.Command;
import kit.DBConnectionMgr;
import dto.JoinDto;
import dto.listDto;

public class PartnerListCommand implements Command {

	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	DBConnectionMgr pool;
	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		System.out.println("����Ʈ Ŀ�ǵ� ���");
		
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		String KeyWord = req.getParameter("keyWord");
		String KeyFiled = req.getParameter("keyField");
		System.out.println("��Ʈ�ʸ���ƮĿ�ǵ�"+KeyWord);
		System.out.println("��Ʈ�ʸ���ƮĿ�ǵ�"+KeyFiled);

		Vector v = new Vector();

		String sql;

		
		if(KeyWord==null||KeyWord.isEmpty()){
			 sql = "select * from members";
		}else{
			sql ="select * from members where "+ KeyFiled
					+" like '%"+ KeyWord + "%' ";
		}
		
		
		try {

			pool = DBConnectionMgr.getInstance();
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				JoinDto mdto = new JoinDto();
				
				String id, pw, name, cname, tel;
				int cpcheck, age, gender, pstate;
				
				mdto.setId(rs.getString("id"));
				mdto.setPw(rs.getString("pw"));
				mdto.setName(rs.getString("name"));
				mdto.setCname(rs.getString("cname"));
				mdto.setTel(rs.getString("tel"));
				mdto.setCpcheck(rs.getInt("cpcheck"));
				mdto.setAge(rs.getInt("age"));
				mdto.setGender(rs.getInt("gender"));
				mdto.setPstate(rs.getInt("pstate"));


				v.add(mdto);
			}
		} catch (Exception err) {
			System.out.println("getPartnerlist() : " + err);
			err.printStackTrace();
		}
		finally{
			pool.freeConnection(con, pstmt, rs);
		}

		req.setAttribute("mdtoList", v);
		return "pr_list/PartnerList.jsp";

	}
}