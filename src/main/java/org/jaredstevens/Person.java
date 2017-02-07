package org.jaredstevens;

import java.io.Serializable;
import javax.persistence.*;

@Entity
public class Person implements Serializable {
	private static final long serialVersionUID = -2643583108587251245L;
	
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String firstName;

    public String getFirstName() {
        return firstName;
    }

    public int getId() {
        return id;
    }

    public void setFirstName(String firstname) {
        this.firstName = firstname;
    }

    public void setId(int id) {
        this.id = id;
    }
}
