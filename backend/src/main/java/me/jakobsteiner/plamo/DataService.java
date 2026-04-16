package me.jakobsteiner.plamo;

import me.jakobsteiner.plamo.tables.UserHasPlantMonitors;
import me.jakobsteiner.plamo.tables.UserRepository;
import me.jakobsteiner.plamo.tables.Usr_Pm_Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.autoconfigure.JacksonProperties;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

public class DataService {
    private static DataService instance;
    public static DataService getInstance(){
        if(instance == null){
            instance = new DataService();
            return instance;
        } else {
            return instance;
        }
    }

    /**
     * @param userID id for only showing pants of this user
     * for general plantdata view with multible plants
     * bsp.: "\"plant1\": { \"name\": \"Fiddle Leaf\", \"type\": \"Tree\", \"imgSrc\": \"/images/FiddleLeaf.png\", \"sensorData\": { \"temperature\": 20, \"humidity\": 50, \"moisture\": 32 } }"
     * @return data
     *
     */
    public JacksonProperties.Json getPlantSreenJSON(int userID, Usr_Pm_Repository usr_pm_repository){
        userID = 11; //Just for testing
        JacksonProperties.Json data = new JacksonProperties.Json();
        //Get list of plants owend by this user
        List<UserHasPlantMonitors> plantMonitors = usr_pm_repository.findByUserId(userID);
        //Get Table with plant general data
        List<Integer> plantMonitorIDs = plantMonitors.stream().map(UserHasPlantMonitors::getPlantMonitorId).toList();
        //Filter for user data
        //Parse in JSON
        //return
        return data;
    }
}
