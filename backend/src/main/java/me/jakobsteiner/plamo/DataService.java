package me.jakobsteiner.plamo;

import org.springframework.boot.jackson.autoconfigure.JacksonProperties;

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
    public JacksonProperties.Json getPlantSreenJSON(int userID){
        JacksonProperties.Json data = new JacksonProperties.Json();
        //Get list of plants owend by this user
        //Get Table with plant general data
        //Filter for user data
        //Parse in JSON
        //return
        return data;
    }
}
