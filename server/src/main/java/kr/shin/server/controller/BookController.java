package kr.shin.server.controller;

import kr.shin.server.daos.BookDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2016-06-01.
 */
@Controller
@RequestMapping("/book")
public class BookController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Resource(name="BookDao")
    private BookDao bookDao;

    @RequestMapping(method = RequestMethod.GET)
    public String home(Model model) {

        model.addAttribute("books", bookDao.selectAllBook());

        return "/book/books";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String home(@PathVariable("id") Integer id, Model model) {

        model.addAttribute("bookName", bookDao.selectBookName(id));

        return "/book/book";

    }
}
