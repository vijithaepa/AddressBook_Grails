This contains the set of instructions required to build and run the address book application with Grails.

Contents :
==========
.
├── application.properties
├── grails-app
│   ├── conf
│   │   ├── ...
│   ├── controllers
│   │   └── com
│   │       └── grails
│   │           └── addressbook
│   │               └── entity
│   │                   ├── PersonController.groovy
│   │                   └── PhoneController.groovy
│   ├── domain
│   │   ├── addressbook_grails
│   │   └── com
│   │       └── grails
│   │           └── addressbook
│   │               └── entity
│   │                   ├── Person.groovy
│   │                   └── Phone.groovy
│   ├── i18n
│   │   ├── ...
│   ├── migrations
│   ├── services
│   ├── taglib
│   ├── utils
│   └── views
│       ├── error.gsp
│       ├── index.gsp
│       ├── layouts
│       │   └── main.gsp
│       ├── person
│       │   ├── create.gsp
│       │   ├── edit.gsp
│       │   ├── _form.gsp
│       │   ├── list.gsp
│       │   └── show.gsp
│       └── phone
│           ├── create.gsp
│           ├── edit.gsp
│           ├── _form.gsp
│           ├── list.gsp
│           └── show.gsp
├── lib
├── ReadMe.txt
├── ReadMe.txt~
├── scripts
├── src
│   ├── groovy
│   └── java
├── target
│   └── stacktrace.log
├── test
│   ├── integration
│   └── unit
│       ├── addressbook_grails
│       │   └── PersonTests.groovy
│       ├── com
│       │   └── grails
│       │       └── addressbook
│       │           └── entity
│       │               ├── PersonControllerTests.groovy
│       │               ├── PersonTests.groovy
│       │               ├── PhoneControllerTests.groovy
│       │               └── PhoneTests.groovy
│       └── Phone
│           └── JavaTests.groovy
└── web-app
    ├── css
    │   ├── errors.css
    │   ├── main.css
    │   └── mobile.css
    ├── images
    │   ├── ...
    ├── js
    │   └── application.js
    ├── META-INF
    └── WEB-INF
        ├── applicationContext.xml
        ├── sitemesh.xml
        └── tld
            ├── c.tld
            ├── fmt.tld
            ├── grails.tld
            └── spring.tld




Building the Project.
====================

Pre-requisites
--------------
JDK 1.5.x or higher
Grails version: 2.1.0
set java_home and GRAILS_HOME
add $GRAILS_HOME/bin to the PATH variable


Development steps of the Project.
====================

#grails creat-app AddressBook_Grails				: Create a default grail project structure with the name AddressBook_Grails
#cd AddressBook_Grails						: got to project AddressBook_Grails

#create-domain-class com.grails.addressbook.entity.Person	: Create Domain class Person (under package com.grails.addressbook.entity)
#create-domain-class com.grails.addressbook.entity.Phone		: Create Domain class Phone (under package com.grails.addressbook.entity)
Note : developer need to complete the entities with attributes

#grails generate-all com.grails.addressbook.entity.Person	: Generate CRUD operation controllers and views for Person 
#grails generate-all com.grails.addressbook.entity.Phone		: Generate CRUD operation controllers and views for Phone

#grails clean	: clean the application


Testing the application.
========================
#grails test-app	: running the tests, creates a nice HTML report in target folder

Running the application.
========================

#grails run-app	: Run the application on Dev mode (grails prod run-app : for producton mode)

#grails war	: generate .war archive



