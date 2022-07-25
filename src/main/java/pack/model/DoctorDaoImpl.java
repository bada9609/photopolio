package pack.model;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import pack.doctor.DoctorDto;

@Repository
public class DoctorDaoImpl extends SqlSessionDaoSupport implements DoctorDaoInter{
	
	public DoctorDaoImpl(SqlSessionFactory factory) {
		setSqlSessionFactory(factory);
	}
	
	//로그인
	@Override
	public List<DoctorDto> doctorList() {
		return getSqlSession().selectList("selectDoctorData");
	}
	
	@Override
	public DoctorDto getLoginInfo(String d_id) {
		return getSqlSession().selectOne("selectDLoginData", d_id);
	}
	
	//개인 의사정보 가져오기
	@Override
	public DoctorDto dmydata(String d_id) {
		return getSqlSession().selectOne("selectdMydata", d_id);
	}
	
	
	//로그아웃
	@Override
	public void dlogout(HttpSession session) {
		//세션 정보 초기화
				session.invalidate();
	}

}
