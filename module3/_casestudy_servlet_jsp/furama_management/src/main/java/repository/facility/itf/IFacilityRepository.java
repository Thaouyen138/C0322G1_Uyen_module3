package repository.facility.itf;

import model.facility.Facility;

import java.util.List;

public interface IFacilityRepository {
    List<Facility> findAll();
}
