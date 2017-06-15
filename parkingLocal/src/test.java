import java.util.Date;

import com.my.dao.CustomerDAOMysql;
import com.my.vo.Customer;

public class test {

	public static void main(String[] args) {

		
		CustomerDAOMysql dao = new CustomerDAOMysql();
		
		//체크아이디
		/*if(dao.selectById("id1")==null) {
			System.out.println("사용가능한 아이디 입니다.");
		}*/
		
		//사인업
		Customer c = new Customer("yunmiID", "yunmiPWD", "yunmiNM", "010-9944-1177", null,
				null, 'N');
		
		dao.signup(c);
		
		
	}

}
