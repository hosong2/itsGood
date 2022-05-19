package cs.dit;

/**===================================================
 * 패키지명 : cs.dit
 * 파일명 LoginDto.java
 * 변경 이력 : 
 *	22.05.02 최초작성 주호성
 * 프로그램 설명 : 
 * 		데이터 전달을 위한 객체
 *===================================================*/
public class LoginDto {
	private String id;
	private String name;
	private String pwd;
	
	//Source -> generate Getter and Setter
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public LoginDto() {} //기본 생성자
	
	//Source -> Generate Constructor using Fields
	public LoginDto(String id, String name, String pwd) {
		this.id = id;
		this.name = name;
		this.pwd = pwd;
	}
	
	
}
