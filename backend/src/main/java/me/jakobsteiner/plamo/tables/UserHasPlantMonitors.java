package me.jakobsteiner.plamo.tables;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "user_has_plantmonitor")
public class UserHasPlantMonitors {
    @Id
    @Column(name = "plantmonitor_id")
    private int plantMonitorId;

    @Column(name = "id")
    private int userId;

    @Column(name = "user_name")
    private String userName;

    @Column(name = "plant_name")
    private String plantName;

    public int getPlantMonitorId() {
        return plantMonitorId;
    }

    public void setPlantMonitorId(int plantMonitorId) {
        this.plantMonitorId = plantMonitorId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPlantName() {
        return plantName;
    }

    public void setPlantName(String plantName) {
        this.plantName = plantName;
    }

    public int getPlantmonitor_id() {
        return plantMonitorId;
    }
}
