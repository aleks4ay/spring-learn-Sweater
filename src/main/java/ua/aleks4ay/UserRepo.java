package ua.aleks4ay;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UserRepo extends CrudRepository<User, Integer>{
    List<User> findByName(String name);
}
