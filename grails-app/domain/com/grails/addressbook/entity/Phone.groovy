package com.grails.addressbook.entity


class Phone {

	static mapping = {
		table 'TBL_PHONE'
		columns {
			number column:'NUMNBER'
			type column:'TYPE'
		}
	}

	static constraints = {
		number(blank:false, nullable:false, size:3..30, matches:"[1-9_]+")
	}

	String number;

	String type;

	String toString(){
		return number + " : " + type
	}
}
