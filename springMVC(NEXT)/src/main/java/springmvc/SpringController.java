package springmvc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SpringController 
{
	@Autowired
	JdbcTemplate jt;
	
	
	public JdbcTemplate getJt() {
		return jt;
	}

	public void setJt(JdbcTemplate jt) {
		this.jt = jt;
	}
	@Autowired
	SpringDAO dao;
	
	@GetMapping("/trigger")
	//@ResponseBody
	public String fun1() {
		return "home";
	}
	
	@GetMapping("/show")
	public String fun2(Model m) {
		//String s = "JFSD- SPRING MVC DATABASE VIEW";
		List<Student> sl1 = dao.findAll();
		//m.addAttribute("s1", s);
		m.addAttribute("list", sl1);
		return "show";
	}
	
	@GetMapping("/show1")
	public String fun13(Model m) {
		//String s = "JFSD- SPRING MVC DATABASE VIEW";
		List<Register> sl1 = dao.findAllpat();
		//m.addAttribute("s1", s);
		m.addAttribute("list", sl1);
		return "show1";
	}
	
	
	@GetMapping("/add")
	public String fun3(Model m) {
		m.addAttribute("command", new Student());
		
		return "add";
	}
	//a type of rest services using here
	@PostMapping("/add")
	public String fun4(@ModelAttribute("s") Student s) {
		sl.add(s);
		dao.insert(s);
		return "redirect:/show";
	}
	
	//updating the data
	@GetMapping("/update/{id}")
	public String fun5(@PathVariable("id") int id, Model m) {
		Student s = dao.find(id);
		m.addAttribute("command", s);
		return "update";
	}
	@PostMapping("/update")
	public String fun6(@ModelAttribute("s") Student s) {
		dao.update(s);
		return "redirect:/show";
	}
	@GetMapping("/delete/{id}")
	public String fun7(@PathVariable("id") int id)
	{
		dao.delete(id);
		return "redirect:/show";
	}
	@GetMapping("/logins1")
	public String fun8(Model m) {
		//m.addAttribute("command", new Student());
		String str1 = "This Is Login Page!!";
		m.addAttribute(str1);
		return "logins1";
	}
	@GetMapping("/register")
	public String fun9(Model m) {
		//m.addAttribute("command", new Student());
		//String str1 = "This Is Login Page!!";
		//m.addAttribute(str1);
		return "register";
	}
	static List<Student> sl;
	//sl should be static because variable is using before static block
	static {
		//without name the method is created using keyword
		Student s1 = new Student();
		s1.setId(1);
		s1.setName("Snehith");
		Student s2 = new Student();
		s2.setId(2);
		s2.setName("abhi");
		sl = new ArrayList<Student>();
		sl.add(s1);
		sl.add(s2);
	}
	
	
	
	
	
	/*
	@GetMapping("/show1")
	public String fun11(Model m) {
		//String s = "Register Page";
		//m.addAttribute("s1", s);
		m.addAttribute("list", rl);
		return "show1";
	}
	*/
	
	static List<Register> rl;
	//sl should be static because variable is using before static block
	static {
		//without name the method is created using keyword
		//Student s1 = new Student();
		
		Register r1 = new Register();
		r1.setId(1);
		r1.setName("Snehith");
		r1.setGender("M");
		//r1.setName("Snehith");
		r1.setAge(20);
		r1.setDob("07-02-2003");
		r1.setMobile("7569568846");
		r1.setNativep("Nirmal");
		//Student s2 = new Student();
		Register r2 = new Register();
		r2.setId(2);
		r2.setName("Abhi");
		r2.setGender("M");
		//r1.setName("Snehith");
		r2.setAge(20);
		r2.setDob("07-02-2003");
		r2.setMobile("7569568846");
		r2.setNativep("Nirmal");
		
		rl = new ArrayList<Register>();
		rl.add(r1);
		rl.add(r2);
		
	}
	
	@GetMapping("/patreg")
	public String patreg(Model m) {
		m.addAttribute("command", new Register());
		//String str1 = "This Is Login Page!!";
		//m.addAttribute(str1);
		return "patreg";
	}
	
	@PostMapping("/patreg")
	public String patinsert(@ModelAttribute("r") Register r) {
		rl.add(r);
		dao.patinst(r);
		return "redirect:/show1";
	}
	
	@GetMapping("/appontment")
	public String appointment(Model m) {
		m.addAttribute("command", new AppointmentScheduling());
		//String str1 = "This Is Login Page!!";
		//m.addAttribute(str1);
		return "appontment";
	}
	
	@PostMapping("/appontment")
	public String patinsert(@ModelAttribute("r") AppointmentScheduling r) {
		//rl.add(r);
		dao.AppointmentSchedule(r);
		return "appointmentdata";
	}
	
	@GetMapping("/map")
	public String fun14() {
		return "map";
	}
	@GetMapping("/login")
	public String fun15(Model m) {
		//m.addAttribute("command", new Student());
		//String str1 = "This Is Login Page!!";
		//m.addAttribute(str1);
		return "login";
	}
	
	@GetMapping("/admin")
	public String fun16(Model m) {
		//m.addAttribute("command", new Student());
		//String str1 = "This Is Login Page!!";
		//m.addAttribute(str1);
		return "admin";
	}
	
	@GetMapping("/admin/appointments")
	public String fun17(Model m) {
		//m.addAttribute("command", new Student());
		//String str1 = "This Is Login Page!!";
		//m.addAttribute(str1);
		return "appointmentdata";
	}
	
	@GetMapping("/doctorreg")
	public String fun18(Model m) {
		m.addAttribute("command", new DoctorRegister());
		//String str1 = "This Is Login Page!!";
		//m.addAttribute(str1);
		return "doctorreg";
	}
	
	@PostMapping("/doctorreg")
	public String fun19(@ModelAttribute("k") DoctorRegister k) {
		//rl.add(r);
		dao.doctorregi(k);
		return "appointmentdata";
	}
	
	
	@GetMapping("/cardiology")
	public String fun20(Model m) {
		//m.addAttribute("command", new Student());
		//String str1 = "This Is Login Page!!";
		//m.addAttribute(str1);
		return "cardiology";
	}
	/*
	@PostMapping("/login")
	public String fun21()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalmanagement", "root", "root");
			
		}
	}
	*/
	
	@GetMapping("/email")
	public String fun21(Model m) {
		//m.addAttribute("command", new Student());
		//String str1 = "This Is Login Page!!";
		//m.addAttribute(str1);
		return "email";
	}
	
	@GetMapping("/patient")
	public String fun22(Model m) {
		//m.addAttribute("command", new Student());
		//String str1 = "This Is Login Page!!";
		//m.addAttribute(str1);
		return "patient";
	}
	
	@GetMapping("/doclogin")
	public String fun23(Model m) {
		//m.addAttribute("command", new Student());
		//String str1 = "This Is Login Page!!";
		//m.addAttribute(str1);
		return "doclogin";
	}
	
	@RequestMapping("/hello")
	public ModelAndView hello(HttpServletRequest req, HttpServletResponse res) {
		String email = req.getParameter("email");
		String password = req.getParameter("pass");
		if(password.equals("admin"))
		{
			String message = "welcome "+email;
			return new ModelAndView("raghu");
			
		}
		else {
			return new ModelAndView("errorpage","message","invalid Password");
		}
		
	}
	
	@GetMapping("/raghu")
	public String fun24(Model m) {
		//m.addAttribute("command", new Student());
		//String str1 = "This Is Login Page!!";
		//m.addAttribute(str1);
		return "raghu";
	}
	
	@GetMapping("/raghuappt")
	public String fun25(Model m) {
		return "raghuappt";
	}
	@PostMapping("/raghuappt")
	public String fun26(@ModelAttribute("k") Raghu k) {
		//rl.add(r);
		dao.raghu(k);
		return "patient";
	}
	
	@GetMapping("/raghuappnts")
	public String fun27(Model m) {
		//String s = "JFSD- SPRING MVC DATABASE VIEW";
		List<Raghu> sl1 = dao.raghudat();
		//m.addAttribute("s1", s);
		m.addAttribute("list", sl1);
		return "raghuappnts";
	}
	
	@GetMapping("/doctdet")
	public String fun28(Model m) {
		//String s = "JFSD- SPRING MVC DATABASE VIEW";
		List<DoctorRegister> sl1 = dao.docdet();
		//m.addAttribute("s1", s);
		m.addAttribute("list", sl1);
		return "doctdet";
	}
	
	@GetMapping("/contact")
	public String fun26(Model m) {
		return "contact";
	}
	
	@GetMapping("/chat")
	public String fun30(Model m) {
		return "chat";
	}
	
}
