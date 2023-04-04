package edu.poly.model;

import com.sun.istack.NotNull;
import lombok.Data;
import org.springframework.stereotype.Repository;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.List;


@Data
@Entity
@Table(name="Contribute")
public class Contribute implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    BigInteger id;
    @NotBlank(message = "Name not empty")
    String fullname;

    String hinhthuc;
    @NotEmpty
    @Email
    String email;
    @NotBlank(message = "sdt not empty")

    Integer sdt;
    @NotBlank(message = "amount not empty")

    BigInteger amount;
    String mess;
}

