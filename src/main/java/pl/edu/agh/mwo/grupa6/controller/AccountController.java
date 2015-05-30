package pl.edu.agh.mwo.grupa6.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AccountController {
	@Autowired
	private static final Logger logger = LoggerFactory
			.getLogger(AccountController.class);

	@Secured("ROLE_ADMIN")
	@RequestMapping(value = "/konto", method = RequestMethod.GET)
	public String account(Model model) {
		return "account";
	}

}
