package me.jakobsteiner.plamo.tables;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface Usr_Pm_Repository extends JpaRepository<UserHasPlantMonitors, Integer> {
    List<UserHasPlantMonitors> findByUserId(int userId);
    UserHasPlantMonitors findByPlantMonitorId(int plantMonitorId);
}
