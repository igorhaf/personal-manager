package com.gestaopessoal.personal_manager.repository;

import com.gestaopessoal.personal_manager.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

}
