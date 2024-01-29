# JPACRUDProject
Created by Daniel Riggi

## Project Overfiew
Welcome to the NFL Player Database project! This application allows users to manage NFL player records using a comprehensive CRUD (Create, Read, Update, Delete) functionality. Built with Spring Boot and a relational database, this application simplifies the management and retrieval of NFL player data, providing a user-friendly interface for exploring player profiles.

## Key Features

- **View Player Details**: Users can retrieve and display detailed information about NFL players by searching for their profiles.

- **Add New Players**: Easily add new NFL players to the database by providing their personal and career details.

- **Edit Player Profiles**: Update player records, allowing modifications to player attributes such as name, position, college, and more.

- **Delete Players**: Remove NFL players from the database, with proper error handling to address any potential issues.

- **Search Players**: Find NFL players based on various search criteria, including name, position, college, and birthdate.

# Tech Used
- **Programming Languages:**
    - Java 8 (version 1.8.0_391)
- **IDEs:**
    - Visual Studio Code 1.84.2 (https://code.visualstudio.com/)
    - Spring Tool Suite (STS) (https://spring.io/tools)
- **Version Control:**
    - Git 2.32.1 (https://git-scm.com/)
- **Database Management:**
    - MySQL (version 5.7.39)
- **Build Tool:**
    - Gradle
- **Web Framework:**
    - Spring MVC
- **View Technology:**
    - JavaServer Pages (JSP)

## Lessons Learned

### Spring MVC Framework with Data Validation and JPA Integration

- **MVC Architecture**: I embraced the Model-View-Controller (MVC) architectural pattern to maintain a structured and organized codebase, separating concerns effectively.

- **Controllers**: My controllers were meticulously designed to manage incoming HTTP requests, handle user input, and intelligently route requests to the appropriate components.

- **Dependency Injection**: Leveraging Spring's Dependency Injection mechanism, I simplified component management and ensured that my application remained highly modular.

### Backend Database Integration with JPA

- **Database Design**: My database schema was thoughtfully designed to optimize data storage and retrieval efficiency.

- **Java Persistence API (JPA)**: I integrated JPA, a part of the Java EE ecosystem, to streamline database operations. This allowed me to work with entities, relationships, and queries in a more Java-centric manner.

- **Data Validation**: Before loading data into the database, I implemented robust data validation mechanisms. Invalid data entries were thoroughly checked and rejected, ensuring data integrity.

- **Transactions**: To maintain data consistency and integrity, I expertly managed database transactions, ensuring that complex operations were executed reliably.

- **Error Handling**: My application featured comprehensive error-handling mechanisms, providing informative feedback to users and simplifying the debugging process.

### Command Objects and Inversion of Control (IoC)

- **Command Objects**: Command objects played a crucial role in handling form submissions. They simplified form validation and processing, improving the overall user experience.

- **Inversion of Control (IoC)**: The Inversion of Control (IoC) container provided by Spring facilitated loose coupling between components. This enabled seamless integration and testing of individual parts of my application.
