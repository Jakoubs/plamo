package me.jakobsteiner.plamo;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;

import java.nio.charset.StandardCharsets;
import java.security.Key;
import java.util.Date;

public class JwtUtil {
    private static final String SECRET = "dein_sehr_langes_und_sicheres_geheimnis_32_chars";
    private static final Key KEY = Keys.hmacShaKeyFor(SECRET.getBytes(StandardCharsets.UTF_8));

    private static final long EXPIRATION_TIME = 864_000_000;

    public static String generateToken(Long userID, String email) {

        return Jwts.builder()
                .setSubject(email)
                .claim("userId", userID)
                .setIssuedAt(new Date())
                .setExpiration(new Date(System.currentTimeMillis() + 3600000*3))//3 Stunden
                .signWith(SignatureAlgorithm.HS256, KEY)
                .compact();
    }
    public static int validateToken(String token) {
        return 0;
    }
}
