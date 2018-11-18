package co.grandcircus.madlibdemo;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class UserController {

	@Autowired
	private UserDao userDao;

	@RequestMapping("/userRegistration")
	public ModelAndView showForm(@SessionAttribute(name = "profile", required = false) User user) {
		return new ModelAndView("userRegistration");
	}

	@PostMapping("/userRegistration")
	public ModelAndView addSubmit(User user, HttpSession session) {
		session.setAttribute("profile", user);
		userDao.createUser(user);
		return new ModelAndView("redirect:/");
	}

	@RequestMapping("/login")
	public ModelAndView showLogin() {
		return new ModelAndView("logIn");
	}

	@PostMapping("/login")
	public ModelAndView submitLoginForm(@RequestParam("username") String username,
			@RequestParam("password") String password, HttpSession session, RedirectAttributes redir) {
		User user = userDao.findByUsername(username);
		if (user == null) {
			return new ModelAndView("logIn", "message", "Incorrect Username or Password");
		}
		if (!user.getPassword().equals(password)) {
			return new ModelAndView("logIn", "message", "Incorrect Username or Password");
		}

		session.setAttribute("profile", user);
		redir.addFlashAttribute("message", "Login successful");
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session, RedirectAttributes redir) {
		session.invalidate();
		redir.addFlashAttribute("message", "You've logged out, Thanks for visiting!");
		return new ModelAndView("redirect:/");
	}

}
