<%@page import="org.jaredstevens.Person"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<html>
<body>
<h2>Hello World!</h2>
<%
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("default", System.getProperties());
	EntityManager em = factory.createEntityManager();

/*
	em.getTransaction().begin();
	Person person = new Person();
	person.setFirstName("Jared Stevens");
	em.persist(person);
	em.getTransaction().commit();
	out.println("All Saved...");
*/
	Person person = (Person)em.find(Person.class, new Long(1));
	em.getTransaction().begin();
	person.setFirstName("Goof Ball");
	em.merge(person);
	em.getTransaction().commit();
	out.println("Record updated...");
%>
</body>
</html>
