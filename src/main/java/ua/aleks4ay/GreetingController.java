package ua.aleks4ay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ua.aleks4ay.UserRepo;

@Controller
public class GreetingController {

    @Autowired
    private UserRepo userRepo;

    @GetMapping
    public String main(Model model) {
        Iterable<User> users = userRepo.findAll();
        model.addAttribute("users", users);

        return "main";
    }

    @PostMapping
    public String newMessage(@RequestParam String name, @RequestParam String email, Model model) {
        User user = new User(name, email);
        userRepo.save(user);
        Iterable<User> users = userRepo.findAll();
        model.addAttribute("users", users);
        return "main";
    }

    @PostMapping("/filter")
    public String filter(@RequestParam String filter, Model model) {
        Iterable<User> users;
        if (filter != null && ! filter.isEmpty()) {
            users = userRepo.findByName(filter);
        } else {
            users = userRepo.findAll();
        }
        model.addAttribute("users", users);
        return "main";
    }
}