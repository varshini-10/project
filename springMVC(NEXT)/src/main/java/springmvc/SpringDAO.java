package springmvc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class SpringDAO {
	JdbcTemplate jt;

	public JdbcTemplate getJt() {
		return jt;
	}

	public void setJt(JdbcTemplate jt) {
		this.jt = jt;
	}
	
	public void insert(Student s) {
		jt.update("insert into students values("+s.getId()+",'"+s.getName()+"')");
	}
	
	public void patinst(Register r) {
		jt.update("insert into patdata values("+r.getId()+",'"+r.getName()+"', '"+r.getEmail()+"', '"+r.getPassword()+"' ,'"+r.getGender()+"','"+r.getAge()+"','"+r.getDob()+"','"+r.getMobile()+"','"+r.getNativep()+"')");
	}
	
	public void update(Student s) {
		jt.update("update students set name = '"+s.getName()+"' where id = '"+s.getId()+"' ");
	}
	
	public void delete(int id)
	  {
	    jt.update("delete from students where id="+id);
	  }
	
	
	
	public List<Student> findAll()
	{
		return jt.query("select * from students", new RowMapper<Student>() {
			public Student mapRow(ResultSet rs, int row) throws SQLException
			{
				Student s = new Student();
				s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				return s;
				
			}
		});
		//jt.query("select * from students", new RowMapper<Student>);
		
	}
	public Student find(int id)
	{
		//jt.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<Student>(Student.class));
		return jt.queryForObject("select * from students where id=?", new Object[]{id}, new BeanPropertyRowMapper<Student>(Student.class));
	}
	public List<Register> findAllpat()
	{
		return jt.query("select * from patdata", new RowMapper<Register>() {
			public Register mapRow(ResultSet rs, int row) throws SQLException
			{
				Register r = new Register();
				r.setId(rs.getInt(1));
				r.setName(rs.getString(2));
				r.setEmail(rs.getString(9));
				r.setGender(rs.getString(3));
				r.setAge(rs.getInt(4));
				r.setDob(rs.getString(5));
				r.setMobile(rs.getString(6));
				r.setNativep(rs.getString(7));
				
				
				
				
				return r;
				
			}
		});
		//jt.query("select * from students", new RowMapper<Student>);
		
	}
	
	public void AppointmentSchedule(AppointmentScheduling r) {
		jt.update("insert into doctorappointments values("+r.getId()+",'"+r.getName()+"','"+r.getDepartment()+"','"+r.getDocname()+"','"+r.getDate()+"','"+r.getProblem()+"')");
	}
	
	
	public void doctorregi(DoctorRegister r)
	{
		jt.update("insert into doctordetails values("+r.getUname()+",'"+r.getEmail()+"','"+r.getPassword()+"','"+r.getAge()+"','"+r.getGender()+"','"+r.department+"', '"+r.getQualification()+"', '"+r.getDatejoined()+"', '"+r.getMobile()+"')");
	}
	
	
	public void raghu(Raghu r)
	{
		jt.update("insert into raghu values("+r.getId()+",'"+r.getName()+"','"+r.getEmail()+"','"+r.getAge()+"','"+r.getGender()+"','"+r.getDob()+"', '"+r.getProblem()+"', '"+r.getNativep()+"', '"+r.getMobile()+"')");
	}
	
	
	public List<Raghu> raghudat()
	{
		return jt.query("select * from raghu", new RowMapper<Raghu>() {
			public Raghu mapRow(ResultSet rs, int row) throws SQLException
			{
				Raghu r = new Raghu();
				r.setId(rs.getInt(1));
				r.setName(rs.getString(2));
				r.setEmail(rs.getString(3));
				r.setAge(rs.getInt(4));
				r.setGender(rs.getString(5));
				r.setDob(rs.getString(6));
				r.setProblem(rs.getString(7));
				r.setNativep(rs.getString(8));
				r.setMobile(rs.getString(9));
				
				
				return r;
				
			}
		});
		//jt.query("select * from students", new RowMapper<Student>);
		
	}
	
	
	public List<DoctorRegister> docdet()
	{
		return jt.query("select * from doctordetails", new RowMapper<DoctorRegister>() {
			public DoctorRegister mapRow(ResultSet rs, int row) throws SQLException
			{
				DoctorRegister r = new DoctorRegister();
				r.setUname(rs.getString(1));
				r.setEmail(rs.getString(2));
				r.setPassword(rs.getString(3));
				r.setAge(rs.getInt(4));
				r.setGender(rs.getString(5));
				r.setDepartment(rs.getString(6));
				r.setQualification(rs.getString(7));
				r.setDatejoined(rs.getString(8));
				r.setMobile(rs.getString(9));
				
				
				return r;
				
			}
		});
		//jt.query("select * from students", new RowMapper<Student>);
		
	}
	
	/*
	public Register getPass(int id)
	{
		return jt.queryForObject("select name from patdata where id=?", new Object[]{id}, new BeanPropertyRowMapper<Register>(Register.class));
	}
	*/
}
