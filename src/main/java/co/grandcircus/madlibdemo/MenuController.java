package co.grandcircus.madlibdemo;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MenuController {

	@Autowired
	private CartItemDao cartItemDao;

	@Autowired
	private MenuItemDao menuItemDao;

	@RequestMapping("/")
	public ModelAndView index() {
		return new ModelAndView("home");
	}
	@RequestMapping("/menu")
	public ModelAndView list() {
		List<MenuItem> list = menuItemDao.findAll();
		return new ModelAndView("menu", "items", list);
	}
	@RequestMapping("/addCartItem")
	public ModelAndView addToCart(@RequestParam("id") int menuItemId) {
		MenuItem m = menuItemDao.findById(menuItemId);
		CartItem c = new CartItem();
		c.setQuantity(1);
		c.setMenuItem(m);
		cartItemDao.create(c);
		return new ModelAndView("redirect:/cartItem");
	}
	@RequestMapping("/deleteFromCart")
	public ModelAndView deleteFromCart(@RequestParam("id") int id) {
		cartItemDao.deleteCartItem(id);
		return new ModelAndView("redirect:/cartItem");
	}
	@RequestMapping("/cartItem")
	public ModelAndView viewCart() {
		List<CartItem> list = cartItemDao.findAll();
		return new ModelAndView("cartItem", "cartItems", list);
	}


}
