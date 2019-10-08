package com.sesoc.secret.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DisposalListVO {
	String dSerialNumber;
	String unit;
	String mClass;
	String location;
	String sName;
	String userName;
	String rank;
	int dAmount;
	String dDate;
}
