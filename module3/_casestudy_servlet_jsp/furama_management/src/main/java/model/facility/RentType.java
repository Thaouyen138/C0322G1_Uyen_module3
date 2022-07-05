package model.facility;

public class RentType {
    private Integer id;
    private String name;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public RentType(Integer id, String name) {
        this.id = id;
        this.name = name;
    }

    public RentType() {
    }
}
