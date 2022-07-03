package model;

public class User {
    private int id;
    private String name;
    private String email;
    private String country;
    private int typeId;
    private int statusDelete;

    public User() {
    }

    public User(int id, String name, String email, String country) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.country = country;
    }

    public User(String name, String email, String country) {
        this.name = name;
        this.email = email;
        this.country = country;
    }


    public User(String name, String email, String country, int typeId) {

        this.name = name;
        this.email = email;
        this.country = country;
        this.typeId = typeId;

    }

    public User(int id, String name, String email, String country, int statusDelete) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.country = country;
        this.statusDelete = statusDelete;
    }

    public User(int id, String name, String email, String country, int typeId, int statusDelete) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.country = country;
        this.typeId = typeId;
        this.statusDelete = statusDelete;
    }

    public int getStatusDelete() {
        return statusDelete;
    }

    public void setStatusDelete(int statusDelete) {
        this.statusDelete = statusDelete;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
