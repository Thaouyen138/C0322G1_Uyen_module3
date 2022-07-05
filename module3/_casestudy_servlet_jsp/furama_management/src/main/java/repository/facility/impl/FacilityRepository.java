package repository.facility.impl;

import model.facility.Facility;
import repository.customer.BaseRepository;
import repository.facility.itf.IFacilityRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FacilityRepository implements IFacilityRepository {
    @Override
    public List<Facility> findAll() {
        List<Facility> facilityList = new ArrayList<>();
        Connection connection = new BaseRepository().getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select*from facility");
            ResultSet resultSet = preparedStatement.executeQuery();
            Facility facility = null;
            while (resultSet.next()) {
                String id = resultSet.getString("id");
                String name = resultSet.getString("name");
                int area=resultSet.getInt("area");
                double cost=resultSet.getDouble("cost");
                int maxPeople=resultSet.getInt("max_people");
                int rentTypeId=resultSet.getInt("rent_tyoe_id");
                int facilityTypeId=resultSet.getInt("facility_type_id");
                String standardRoom=resultSet.getString("standard_room");
                String descriptionOther=resultSet.getString("description_other_convenience");
                double poolArea=resultSet.getDouble("pool_area");
                int numberOfFloors=resultSet.getInt("number_of_floors");
                String facilityFree=resultSet.getString("facility_free");
                int statusDelete=resultSet.getInt("status_delete");
                facility = new Facility(id,name,area,cost,maxPeople,rentTypeId,facilityTypeId,standardRoom,descriptionOther,
                        poolArea,numberOfFloors,facilityFree,statusDelete);
                facilityList.add(facility);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return facilityList;
    }
}
