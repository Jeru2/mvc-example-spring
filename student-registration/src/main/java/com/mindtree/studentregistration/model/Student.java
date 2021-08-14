package com.mindtree.studentregistration.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "student_registration")
public class Student
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column
	private String firstName;
	@Column
	private String lastName;
	@Column
	private String email;
	@Column
	private Long mobile;
	@Column
	private String gender;
	@Column
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date dateOfBirth;
	@Column
	private String address;
	@Column
	private String city;
	@Column
	private Integer pincode;
	@Column
	private String state;	
	@Column
	private String country;
	@Column
	private String courseAppliedFor;
	
	public Student()
	{
	}
	public Student(String firstName, String lastName, String email, Long mobile, String country)
	{
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.mobile = mobile;
		this.country = country;
	}
	public String getFirstName()
	{
		return firstName;
	}
	public void setFirstName(String firstName)
	{
		this.firstName = firstName;
	}
	public String getLastName()
	{
		return lastName;
	}
	public void setLastName(String lastName)
	{
		this.lastName = lastName;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	public Long getMobile()
	{
		return mobile;
	}
	public void setMobile(long mobile)
	{
		this.mobile = mobile;
	}
	public String getGender()
	{
		return gender;
	}
	public void setGender(String gender)
	{
		this.gender = gender;
	}
	public Date getDateOfBirth()
	{
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth)
	{
		this.dateOfBirth = dateOfBirth;
	}
	public String getAddress()
	{
		return address;
	}
	public void setAddress(String address)
	{
		this.address = address;
	}
	public String getCity()
	{
		return city;
	}
	public void setCity(String city)
	{
		this.city = city;
	}
	public Integer getPincode()
	{
		return pincode;
	}
	public void setPincode(int pincode)
	{
		this.pincode = pincode;
	}
	public String getState()
	{
		return state;
	}
	public void setState(String state)
	{
		this.state = state;
	}
	public String getCountry()
	{
		return country;
	}
	public void setCountry(String country)
	{
		this.country = country;
	}
	public String getCourseAppliedFor()
	{
		return courseAppliedFor;
	}
	public void setCourseAppliedFor(String courseAppliedFor)
	{
		this.courseAppliedFor = courseAppliedFor;
	}
	@Override
	public int hashCode()
	{
		final int prime = 31;
		int result = 1;
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result + ((city == null) ? 0 : city.hashCode());
		result = prime * result + ((country == null) ? 0 : country.hashCode());
		result = prime * result + ((courseAppliedFor == null) ? 0 : courseAppliedFor.hashCode());
		result = prime * result + ((dateOfBirth == null) ? 0 : dateOfBirth.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((firstName == null) ? 0 : firstName.hashCode());
		result = prime * result + ((gender == null) ? 0 : gender.hashCode());
		result = prime * result + id;
		result = prime * result + ((lastName == null) ? 0 : lastName.hashCode());
		result = prime * result + ((mobile == null) ? 0 : mobile.hashCode());
		result = prime * result + ((pincode == null) ? 0 : pincode.hashCode());
		result = prime * result + ((state == null) ? 0 : state.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj)
	{
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Student other = (Student) obj;
		if (address == null)
		{
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (city == null)
		{
			if (other.city != null)
				return false;
		} else if (!city.equals(other.city))
			return false;
		if (country == null)
		{
			if (other.country != null)
				return false;
		} else if (!country.equals(other.country))
			return false;
		if (courseAppliedFor == null)
		{
			if (other.courseAppliedFor != null)
				return false;
		} else if (!courseAppliedFor.equals(other.courseAppliedFor))
			return false;
		if (dateOfBirth == null)
		{
			if (other.dateOfBirth != null)
				return false;
		} else if (!dateOfBirth.equals(other.dateOfBirth))
			return false;
		if (email == null)
		{
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (firstName == null)
		{
			if (other.firstName != null)
				return false;
		} else if (!firstName.equals(other.firstName))
			return false;
		if (gender == null)
		{
			if (other.gender != null)
				return false;
		} else if (!gender.equals(other.gender))
			return false;		
		if (lastName == null)
		{
			if (other.lastName != null)
				return false;
		} else if (!lastName.equals(other.lastName))
			return false;
		if (mobile == null)
		{
			if (other.mobile != null)
				return false;
		} else if (!mobile.equals(other.mobile))
			return false;
		if (pincode == null)
		{
			if (other.pincode != null)
				return false;
		} else if (!pincode.equals(other.pincode))
			return false;
		if (state == null)
		{
			if (other.state != null)
				return false;
		} else if (!state.equals(other.state))
			return false;
		return true;
	}
	@Override
	public String toString()
	{
		return "Student [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", mobile=" + mobile + ", gender=" + gender + ", dateOfBirth=" + dateOfBirth + ", address=" + address
				+ ", city=" + city + ", pincode=" + pincode + ", state=" + state + ", country=" + country
				+ ", courseAppliedFor=" + courseAppliedFor + "]";
	}
}
