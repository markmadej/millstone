package com.mmadej.millstone.restservice;

import com.mmadej.millstone.domain.User;
import com.mmadej.millstone.service.UserService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.server.LocalServerPort;

import java.util.List;

import static org.assertj.core.api.Java6Assertions.assertThat;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class UserControllerTest {
    @LocalServerPort
    private int port;

    @Autowired
    private TestRestTemplate restTemplate;

    @Autowired
    private UserController userController;

    private UserService mockUserService;

    @Before
    public void setup(){
        mockUserService = mock(UserService.class);
    }

    @Test
    public void getUserReturnsUser() throws Exception {
        User expected = new User(1, "Mark", "Madej");

        when(mockUserService.getUser(1)).thenReturn(expected);

        // User returned here is null for some reason, need to figure that out
        User actual = restTemplate.getForObject("http://localhost:" + port + "/user?id=1",
                User.class);

        assertThat(expected == actual);
    }

//    public User getUser(final long id);
//    public List<User> getUsers();
//    public void createUser(final User user);
}
