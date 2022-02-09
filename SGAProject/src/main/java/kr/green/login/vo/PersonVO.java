package kr.green.login.vo;
import javax.xml.bind.annotation.XmlRootElement;

import lombok.Data;
/*
 * 
 * create table person (
	idx int primary key auto_increment,
	ref int not null,
	height int not null,
	weight int not null,
	regDate timestamp default now(),
	foreign key(ref) references member(idx)
);
 */
@XmlRootElement
@Data
public class PersonVO {
	private int idx;
	private int ref;
	private int height;
	private int weight;
	private double result;

}
