package ua.aleks4ay.repos;

import org.springframework.data.repository.CrudRepository;
import ua.aleks4ay.domain.Message;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Integer>{

    List<Message> findByTag(String tag);

}
