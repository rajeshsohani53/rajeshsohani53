# Servlet + JSP + Hibernate Skeleton

A ready-to-use Maven skeleton for practicing Java Servlets, JSP and Hibernate together.
Download this folder as a ZIP, extract it, open it in your IDE, and start coding.

## What's included

- **Maven `war` project** — deployable to any Servlet 6.0 container (Tomcat 10+, Jetty, etc.)
- **Jakarta Servlet + JSP APIs** (`provided` scope — supplied by the container)
- **JSTL** for tags like `<c:forEach>` in JSP pages
- **Hibernate ORM 6** for object-relational mapping
- **MySQL Connector/J** as the JDBC driver
- **JUnit 5** for tests

## Structure

```
src/main/java/com/practice/app/
  model/      -> Hibernate entities (User)
  dao/        -> Data access objects (UserDao)
  util/       -> HibernateUtil (SessionFactory bootstrap)
  servlet/    -> Servlets (UserServlet)
src/main/resources/
  hibernate.cfg.xml  -> Hibernate/DB connection config
src/main/webapp/
  index.jsp   -> Home page
  users.jsp   -> List/add users (Servlet + Hibernate demo)
  WEB-INF/web.xml
```

## Getting started

1. Install a MySQL server locally (or update `hibernate.cfg.xml` to point at your DB of choice).
2. Edit `src/main/resources/hibernate.cfg.xml` with your DB username/password.
   `hibernate.hbm2ddl.auto=update` will auto-create the `users` table on first run.
3. Build the WAR:
   ```
   mvn clean package
   ```
4. Run it with the bundled Tomcat Maven plugin:
   ```
   mvn tomcat7:run
   ```
   or deploy `target/servlet-jsp-hibernate-skeleton.war` to your own Tomcat's `webapps/` folder.
5. Open `http://localhost:8080/` and follow the link to `/users`.

## Next steps

- Rename the base package `com.practice.app` to your own.
- Add more entities/DAOs/servlets following the `User` example.
- Swap MySQL for PostgreSQL/H2 by changing the driver, dialect, and connection URL in
  `hibernate.cfg.xml` and the corresponding dependency in `pom.xml`.
