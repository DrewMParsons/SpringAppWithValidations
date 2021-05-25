package springwork.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

import springwork.customannotation.EmailConstraint;

public class User
{
	@NotNull
	@NotEmpty
	@Size(min=5,max=25,message="Username must be between {min} and {max} in length")
	private String username;
	
	@Pattern(regexp="\\w+",message="password must only contain numbers and letters")
	private String password;
	
	@EmailConstraint
	private String email;
	
	public String getUsername()
	{
		return username;
	}
	public void setUsername(String username)
	{
		this.username = username;
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	
	

}
