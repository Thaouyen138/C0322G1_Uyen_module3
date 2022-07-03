package repository;

import model.TypeUser;

import java.util.List;

public interface ITypeUserRepository {
    List<TypeUser> findAll();
}
