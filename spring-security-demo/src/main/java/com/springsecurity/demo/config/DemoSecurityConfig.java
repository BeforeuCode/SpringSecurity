package com.springsecurity.demo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("john").password("secret123").roles("EMPLOYEE", "MANAGER");
		auth.inMemoryAuthentication().withUser("mary").password("secret123").roles("MANAGER" , "BOSS");
		auth.inMemoryAuthentication().withUser("susan").password("secret123").roles("ADMIN");
	}	
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.authorizeRequests()
				.anyRequest().authenticated()
			.and()
			.formLogin()
				.loginPage("/showMyLoginPage")
				.loginProcessingUrl("/authenticateTheUser")
				.permitAll()
				.and()
				.logout().permitAll();
		
	}
}
