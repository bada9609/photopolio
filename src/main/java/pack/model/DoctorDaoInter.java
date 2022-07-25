package pack.model;

import java.util.List;

import javax.servlet.http.HttpSession;

import pack.doctor.DoctorDto;

public interface DoctorDaoInter {
	
	//로그인
	List<DoctorDto> doctorList();
	DoctorDto getLoginInfo(String d_id);
	
	//의사 개인정보 가져오기
	DoctorDto dmydata(String d_id);
	
	//로그아웃
	void dlogout(HttpSession session);
	
}
