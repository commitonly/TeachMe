package bit.data.controller;

import bit.data.service.LecDetailServiceInter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class LecDetailController {

    @Autowired
    LecDetailServiceInter lecDetailService;
}
