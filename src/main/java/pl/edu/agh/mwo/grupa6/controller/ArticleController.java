package pl.edu.agh.mwo.grupa6.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.UnexpectedRollbackException;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pl.edu.agh.mwo.grupa6.data.ArticleDao;
import pl.edu.agh.mwo.grupa6.model.Article;

@Controller
public class ArticleController {
	@Autowired
	private ArticleDao articleDao;

	private static final Logger logger = LoggerFactory
			.getLogger(ArticleController.class);

	@RequestMapping(value = "/articles", method = RequestMethod.GET)
	public String displayArticlesList(Model model) {
		model.addAttribute("newArticle", new Article());
		model.addAttribute("articles", articleDao.findAllOrderedByTitle());
		logger.info("Lista: {}.", articleDao.findAllOrderedByTitle());
		return "articles";
	}

	@RequestMapping(value = "/articles", method = RequestMethod.POST)
	public String registerNewArticle(
			@Valid @ModelAttribute("newArticle") Article newArticle,
			BindingResult result, Model model) {
		logger.info("Zapisuje: {} {} {}.", newArticle.getId(),
				newArticle.getTitle(), newArticle.getDescription());
		if (!result.hasErrors()) {
			try {
				articleDao.register(newArticle);
				return "redirect:/";
			} catch (UnexpectedRollbackException e) {
				model.addAttribute("articles",
						articleDao.findAllOrderedByTitle());
				model.addAttribute("error", e.getCause().getCause());
				return "articles";
			}
		} else {
			model.addAttribute("articles", articleDao.findAllOrderedByTitle());
			return "articles";
		}
	}

	@RequestMapping(value = "/article/{id}", method = RequestMethod.GET)
	public String displayArticle(Model model, @PathVariable("id") Long id) {
		model.addAttribute("article", articleDao.findById(id));
		return "article";
	}
}
