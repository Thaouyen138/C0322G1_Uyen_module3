package service.impl;

import model.TypeUser;
import repository.ITypeUserRepository;
import repository.impl.TypeUserRepository;
import service.ITypeUserService;

import java.util.List;

public class TypeUserService  implements ITypeUserService {
   private ITypeUserRepository typeUserRepository=new TypeUserRepository();
    @Override
    public List<TypeUser> findAll() {
        return typeUserRepository.findAll();
    }
}
