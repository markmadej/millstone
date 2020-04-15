@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User getUser(final Long id) {
        return userMapper.selectOne(id);
    }

    @Override
    public void createUser(final User user) {
        userMapper.insertUser(user);
    }
}