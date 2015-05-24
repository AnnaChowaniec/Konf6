package pl.edu.agh.mwo.grupa6.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/review")
public class ReviewControler {
	
    @RequestMapping(method = RequestMethod.GET)
    public String displayArticlesList(Model model) {
        return "review";
    }

}


