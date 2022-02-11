package kr.green.login.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/*
 * create table member(
 	idx int primary key auto_increment,
 	id varchar(20) not null,
 	password varchar(30) not null,
 	gender boolean not null,
 	phone varchar(11) not null, 
 	email varchar(30) not null,
 	birth varchar (6) not null,
 	nickName varchar(10) not null,
 	question int not null,
 	answer varchar(30) not null
 	
);
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberVO {
	private int idx;
	private String name;
	private String id;
	private String password;
	private boolean gender;
	private String phone;
	private String email;
	private String birth;
	private String nickName;
	private int question;
	private String answer;
	
	private List<PersonVO> bmiList;
	
	public MemberVO(int idx, String name, String id, String password, boolean gender, String phone, String email, String birth, String nickName, int question, String answer) {
		this.idx = idx;
		this.name = name;
		this.id = id;
		this.password = password;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.birth = birth;
		this.nickName = nickName;
		this.question = question;
		this.answer = answer;
	}
}
