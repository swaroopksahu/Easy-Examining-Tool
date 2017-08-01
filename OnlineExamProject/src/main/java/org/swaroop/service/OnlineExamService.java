package org.swaroop.service;

import org.swaroop.bo.OnlineExamBO;
import org.swaroop.dto.OnlineExamDTO;

public class OnlineExamService {
	
	public void forwardToDAO(OnlineExamDTO dto){
		OnlineExamBO bo = null;
		//Preparing OnlineExamBO class object having Persistable Data from OnlineExamDTO class object
		bo = new OnlineExamBO();
		bo.setAvatar(dto.getAvatar());
		bo.setName(dto.getName());
		bo.setUsername(dto.getUsername());
		bo.setPassword(dto.getPassword());
		bo.setGender(dto.getGender());
//		bo.setMobile(dto.getMobile());
	}
}
