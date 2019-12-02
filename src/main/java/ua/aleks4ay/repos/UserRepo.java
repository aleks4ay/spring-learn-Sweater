package ua.aleks4ay.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.aleks4ay.domain.User;

/**
 * Created by aser on 27.11.2019.
 */
public interface UserRepo extends JpaRepository<User, Long>{
    User findByUsername(String username);
}
