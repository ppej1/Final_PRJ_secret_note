package com.sesoc.secret.dao;

import java.util.ArrayList;

import com.sesoc.secret.dto.AccountVO;
import com.sesoc.secret.dto.Employee_VO;
import com.sesoc.secret.dto.ReceiptVO;
import com.sesoc.secret.dto.StockVO;
import com.sesoc.secret.dto.SubClassVO;

public interface StockMapper {

	ArrayList<SubClassVO> subLoad();
	ArrayList<Employee_VO> empLoad();
	ArrayList<AccountVO> accLoad();
	int insertRec(ReceiptVO rec);
	int insertSt(StockVO st);
}
