package com.grails.addressbook.entity


class Person {

	static mapping = {
		table 'TBL_PERSON'
		columns {
			firstName column:'FIRST_NAME'
			lastName column:'LAST_NAME'
			postCode column:'POST_CODE'
		}
	}

	static constraints = {
		firstName(blank:false, nullable:false, size:3..30, matches:"[a-zA-Z1-9_]+")
		lastName(blank:false, nullable:false, size:3..30, matches:"[a-zA-Z1-9_]+")
	}

	static hasMany = [numbers:Phone]

	String firstName;
	String lastName;
	String street;
	String suburb;
	String state;
	String postCode;

	String toString(){
		return lastName
	}
}
