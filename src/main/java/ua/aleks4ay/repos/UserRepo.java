package ua.aleks4ay.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.aleks4ay.domain.User;


public interface UserRepo extends JpaRepository<User, Long>{
    User findByUsername(String username);

    User findByActivationCode(String code);
}
