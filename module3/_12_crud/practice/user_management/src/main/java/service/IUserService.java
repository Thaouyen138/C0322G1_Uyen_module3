package service;


import com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion;

import java.util.List;

public interface IUserService {
    List<User> findAll();

    void create(BIConversion.User user);

    void edit();

    List<BIConversion.User> findByName(String name);

    void delete();

}
