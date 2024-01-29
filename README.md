<a title="Austin Kirk, CC BY 2.0 &lt;https://creativecommons.org/licenses/by/2.0&gt;, via Wikimedia Commons" href="https://commons.wikimedia.org/wiki/File:NFL_Footballs_(8449743770).jpg"><img width="512" alt="NFL Footballs (8449743770)" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/NFL_Footballs_%288449743770%29.jpg/512px-NFL_Footballs_%288449743770%29.jpg"></a>

# JPACRUDProject
Created by Daniel Riggi

## Project Overfiew
This application allows users to manage NFL player records using a comprehensive CRUD (Create, Read, Update, Delete) functionality. Built with Spring Boot and a relational database, this application simplifies the management and retrieval of NFL player data, providing a user-friendly interface for exploring player profiles.

## Key Features

- **View Player Details**: Users can retrieve and display detailed information about NFL players by searching for their profiles.

- **Add New Players**: Easily add new NFL players to the database by providing their personal and career details.

- **Edit Player Profiles**: Update player records, allowing modifications to player attributes such as name, position, college, and more.

- **Delete Players**: Remove NFL players from the database.

- **Search Players**: Find NFL players by name. 

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

- **MVC Architecture**: I used the Model-View-Controller (MVC) architectural pattern to maintain a structured and organized codebase, separating concerns effectively.

- **Controllers**: Controllers are designed to manage incoming HTTP requests, handle user input, and route requests to the appropriate components.

- **Dependency Injection**: Leveraging Spring's Dependency Injection mechanism, I simplified component management and ensured that my application remained modular.

### Backend Database Integration with JPA

- **Java Persistence API (JPA)**: I integrated JPA, a part of the Java EE ecosystem, to streamline database operations. This allowed me to work with entities, relationships, and queries in a more Java-centric manner.

- **Data Validation**: Before loading data into the database, I implemented data validation mechanisms. Invalid data entries were checked and rejected, ensuring data integrity.

### Command Objects and Inversion of Control (IoC)

- **Command Objects**: Command objects played a crucial role in handling form submissions. They simplified form validation and processing, improving the overall user experience.

- **Inversion of Control (IoC)**: The Inversion of Control (IoC) container provided by Spring facilitated loose coupling between components. This enabled seamless integration and testing of individual parts of my application.
