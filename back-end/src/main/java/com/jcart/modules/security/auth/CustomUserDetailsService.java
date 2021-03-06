package com.jcart.modules.security.auth;

import com.jcart.modules.security.users.User;
import com.jcart.modules.security.users.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class CustomUserDetailsService implements UserDetailsService
{

	@Autowired
	UserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String email)
			throws UsernameNotFoundException {
		User user = userRepository.findByEmail(email);
		if(user == null){
			throw new UsernameNotFoundException("Email "+email+" not found");
		}
		return UserPrincipal.create(user);
	}

	@Transactional
	public UserDetails loadUserById(Long id) {
		User user = userRepository.findById(id);

		if(user == null){
			throw new UsernameNotFoundException("Id "+id+" not found");
		}
		return UserPrincipal.create(user);
	}

}
