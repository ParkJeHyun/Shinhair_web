package kr.shin.server.controller;

import kr.shin.server.artifacts.WorkTime;
import kr.shin.server.daos.WorkTimeDao;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * Created by Jehyun on 2016-06-20.
 */
@Controller
@RequestMapping("/admin/worktime")
public class WorkTimeController {
    @Resource(name="WorkTimeDao")
    private WorkTimeDao workTimeDao;

    @RequestMapping(value = "/listform")
    public String getWorkTimeList(Model model) {
        model.addAttribute("worktimes", workTimeDao.getWorkTime());

        return "/admin/worktime/list_form";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String get(@PathVariable("id") Integer id, Model model) {

        model.addAttribute("worktime", workTimeDao.getWorkTime(id));

        return "/admin/worktime/worktime_form";
    }

    @RequestMapping(value = "/addform")
    public String get(Model model) {
        return "/admin/worktime/worktime_form";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public Boolean add(@ModelAttribute WorkTime workTime) {
        int res = workTimeDao.addWorkTime(workTime);
        return (res < 1);
    }
}
