package com.mmadej.millstone.restservice;

import com.mmadej.millstone.MillstoneApplication;
import com.mmadej.millstone.domain.User;
import com.mmadej.millstone.service.UserService;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.server.LocalServerPort;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.assertj.core.api.Java6Assertions.assertThat;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

@RunWith(SpringRunner.class)
@ContextConfiguration(classes = MillstoneApplication.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class UserControllerTest {
    @LocalServerPort
    private int port;

    @Autowired
    private TestRestTemplate restTemplate;

    @Autowired
    private UserController userController;

    private UserService mockUserService;
    private User expected;

    @Before
    public void setup(){
        mockUserService = mock(UserService.class);

        // Add a user (id=1) to the mock DB.
        expected = new User(1, "Mark", "Madej");
        when(mockUserService.getUser(1)).thenReturn(expected);
    }

    @Test
    public void getUserReturnsUser() throws Exception {
        User actual = restTemplate.withBasicAuth("user", "password").getForObject("http://localhost:" + port + "/user?id=1",
                User.class);
        // Our test user (configured in setup) should be returned.
        assertThat(expected == actual);
    }

    // TODO : Other methods to test
//    public User getUser(final long id);
//    public List<User> getUsers();
//    public void createUser(final User user);
}
