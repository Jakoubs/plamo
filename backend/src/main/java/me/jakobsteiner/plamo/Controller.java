package me.jakobsteiner.plamo;

import me.jakobsteiner.plamo.requests.AuthRequest;
import me.jakobsteiner.plamo.tables.User;
import me.jakobsteiner.plamo.tables.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "*")
public class Controller {
    public String UPLOADS_DIR = "/home/jakobsteiner/Dokumente/fun_projects/plamo/backend/uploads";
    private PasswordService passwordService = new PasswordService();
    private JwtUtil jwtUtil = new JwtUtil();

    @Autowired
     private UserRepository userRepository;

    // Access via: http://localhost:8080/hello
    @GetMapping("/hello")
    public String sayHello() {
        return "Service is up and running!";
    }

    // Access via: http://localhost:8080/echo?msg=Jakob
    @GetMapping("/echo")
    public String echo(@RequestParam(defaultValue = "Nothing") String msg) {
        return "You sent: " + msg;
    }

    @GetMapping("/users")
    public String getUsers() {
        return userRepository.findAll().toString();
    }

    @GetMapping("/addUser")
    public String addUser(@RequestParam(defaultValue = "") String name , @RequestParam(defaultValue = "") String email, @RequestParam(defaultValue = "") String password) {
        if(name.equals("") && email.equals("")) return "Please enter a name and an email!";
        String hashed_pw = passwordService.encode(password);
        userRepository.save(new User(name, email, passwordService.encode(password) , ""));
        return "User added!";
    }

    @PostMapping("/api/login")
    public String login(@RequestBody AuthRequest authRequest) {
        String entered_email = authRequest.getEmail();
        String entered_pw = authRequest.getPassword();
        User user = userRepository.findByEmail(entered_email);
        String hashed_pw = user.getPassword();

        if (passwordService.matches(entered_pw, hashed_pw)) {
            return JwtUtil.generateToken(user.getId(), user.getEmail());
        } else {
            return "Login failed!";
        }
    }
    @PostMapping("api/plantData")
    public String plantData(@RequestBody String plantData) {
        jwtUtil.

        String data = "plant1: { name: 'Fiddle Leaf', type: 'Tree', imgSrc: '/images/FiddleLeaf.png', sensorData: { temperature: 20, humidity: 50, moisture: 32 } },\n" +
                "  plant2: { name: 'Snake Plant', type: 'Succulent', imgSrc: '/images/Spider.png', sensorData: { temperature: 25, humidity: 60, moisture: 28 } },\n" +
                "  plant3: { name: 'Monstera', type: 'Climber',imgSrc: '/images/Monstera.png', sensorData: { temperature: 22, humidity: 45, moisture: 35 } },\n" +
                "  plant4: { name: 'Peace Lily', type: 'Flower',imgSrc: '/images/PeaceLily.png', sensorData: { temperature: 28, humidity: 55, moisture: 22 } },\n" +
                "  plant5: { name: 'Pothos', type: 'Vine', imgSrc: '/images/Photos.png', sensorData: { temperature: 23, humidity: 48, moisture: 37 } },\n" +
                "  plant6: { name: 'Spider Plant', type: 'Herb', imgSrc: '/images/SpiderPlant.png', sensorData: { temperature: 26, humidity: 52, moisture: 25 } }";
        return plantData;
    }
}