package co.grandcircus.madlibdemo;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CoffeeShopController {
	
	@Autowired
	MenuItemDao menuItemDao;
	
	@RequestMapping("/")
	public ModelAndView index() {
		return new ModelAndView("home");
	}
	@RequestMapping ("/registration")
	public ModelAndView showRegistration() {
		return new ModelAndView("register");
	}
	@RequestMapping("/summary")
	public ModelAndView showSummary(@RequestParam("first") String first, @RequestParam("last") String last,
			@RequestParam("email") String email, @RequestParam("title") String title, 
			@RequestParam("number")String number, @RequestParam("favorite")String favorite) {
	
		ModelAndView  mv = new ModelAndView();
		mv.addObject("first", first);
		mv.addObject("last", last);
		mv.addObject("number", number);
		mv.addObject("email", email);
		mv.addObject("favorite", favorite);
		mv.addObject("title", title);
		return mv;
	}
	@RequestMapping("/menu")
	public ModelAndView showMenu() {
		
		List <MenuItem> menuList = menuItemDao.findAll();
		
		ModelAndView  mv = new ModelAndView("menu");
		mv.addObject("menu", menuList);
		
		for (MenuItem mi : menuList) {
			System.out.println(mi.name +" " + mi.price);
		}
		return mv;
	}
	@RequestMapping("/login")
	public ModelAndView showLoginForm() {
		return new ModelAndView("login");
	}
	@PostMapping("/login")
	public ModelAndView submitLoginForm(
			@RequestParam("username") String username,
			@RequestParam("password") String password,
			HttpSession session, RedirectAttributes redir) {
		
		User user = UserDao.findByUsername(username);
		if (user == null || !user.getPassword().equals(password)) {
			return new ModelAndView("login", "message", "Incorrect username and/or password.");
		}		
		// login really means adding to session
		session.setAttribute("user", user);
		redir.addFlashAttribute("message", "Login successful. Welcome back!");
		return new ModelAndView("redirect:/");
	}
}
