package com.arif.crud.repositories;

import com.arif.crud.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface UserRepository extends JpaRepository <User, Long>{
    User findByName(String Name);
}
