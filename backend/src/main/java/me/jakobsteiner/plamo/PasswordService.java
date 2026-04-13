package me.jakobsteiner.plamo;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordService {
    private final BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
    public String encode(String password) {
        return encoder.encode(password);
    }
    public boolean matches(String password, String encodedPassword) {
        return encoder.matches(password, encodedPassword);
    }
}
