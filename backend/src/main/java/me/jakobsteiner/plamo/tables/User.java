package me.jakobsteiner.plamo.tables;

import jakarta.persistence.*;

@Entity
@Table(name = "users")
public class User {
    @Id // Marks this as the Primary Key
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-increment (serial)
    private Long id;

    @Column(nullable = false) // Postgres "NOT NULL" constraint
    private String name;
    private String password;
    private String email;
    private String profilePictureSrc;

    public User(String name, String email, String password, String profilePictureSrc) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.profilePictureSrc = profilePictureSrc;
    }

    public User() {
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", name='" + name + '\'' + ", email='" + email + '\'' + ", password='" + password + '\''+ ", profilePictureSrc='" + profilePictureSrc + '\'' + '}';
    }

    // Standard Getters and Setters (Required for Spring to work)
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    public String getProfilePictureSrc() { return profilePictureSrc; }
    public void setProfilePictureSrc(String profilePictureSrc) { this.profilePictureSrc = profilePictureSrc; }
}

