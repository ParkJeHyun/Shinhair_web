package kr.shin.server.controller;

import kr.shin.server.artifacts.Query;
import kr.shin.server.artifacts.User;
import kr.shin.server.daos.UserDao;
import kr.shin.server.daos.WorkScheduleDao;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2016-06-19.
 */
@Controller
@RequestMapping("/workschedule")
public class WorkScheduleController {
    @Resource(name="WorkScheduleDao")
    private WorkScheduleDao workScheduleDao;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String getScheduleList(Model model,
                                  @RequestParam(required = false) Integer designer,
                                  @RequestParam(required = false) String date
    ) {
        model.addAttribute("schedules", workScheduleDao.getWorkSchedule(Query.newInstance(designer,date)));

        return "/schedule/list";
    }
}
