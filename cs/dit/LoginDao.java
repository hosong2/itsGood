package cs.dit;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/**=============================================================
 * 패키지명 : cs.dit
 * 파일명 LoginDao.java
 * 변경 이력 : 
 *	2022.05.02 최초작성 주호성
 * 프로그램 설명 : DB연동기능 구현
 *	- list() : login 테이블의 내용을 화면에 출력할 수 있게 준비
 *	- insert() : 폼으로 입력된 데이터를 DB에 저장
 *	- checkUser() : 유효한 사용자면 1, 유요하지 않은 사용자면 0
 *=============================================================*/
public class LoginDao {
	
	private Connection getConnection() throws Exception {
		//DBCP를 사용한 DB 연동
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/please");
		Connection con = ds.getConnection();
		
		return con;
	}
	
	//DB연동을 하여 login 테이블에서 레코드를 추출
	public ArrayList<LoginDto> list() {
		String sql = "select id, name, pwd from login";
		ArrayList<LoginDto> dtos = new ArrayList<LoginDto>();	//LoginDto 객체들을 넣을 용기
		
		try (
				Connection con = getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
		)
		{
			while(rs.next()) {
				LoginDto dto = new LoginDto();
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setPwd(rs.getString("pwd"));
				
				dtos.add(dto);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return dtos;
	}
	
	public void insert(LoginDto dto) {
		String sql = "INSERT INTO login(ID, NAME, PWD) VALUES (?, ?, ?)";
		
		try(
				Connection con2 = getConnection();
				 PreparedStatement pstmt2 = con2.prepareStatement(sql);
				)
		{
			pstmt2.setString(1, dto.getId());
			pstmt2.setString(2, dto.getName());
			pstmt2.setString(3, dto.getPwd());
			
			pstmt2.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//메소드 작성 시 고려해야 할 것
	// 1. public / private 결정
	// 2. 반환값(output)
	// 3. 매개변수(input)
	public int checkUser(String id, String pwd){
		int check = 0;
		String sql = "select pwd from login where id=? and pwd=?";
		try (
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
		)
		{
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			try(ResultSet rs = pstmt.executeQuery(sql);
			)
			{
				if(rs.next()) {		//반환값 boolean, 있으면 True 없으면 False
					check = 1;
				}else {
					check = 0;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}	
		return check;	
	}
}
