package resume.visitcard.KartsevDmitry.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author Dmitry Kartsev
 */
@Controller
public class FirstController {

    @GetMapping("/")
    public String getStartPage() {
        return "index";
    }
}
