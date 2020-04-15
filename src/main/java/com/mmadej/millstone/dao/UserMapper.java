import com.mmadej.millstone.domain.User;

@Mapper
public interface UserMapper {

    @Select("SELECT user_id as userID, first_name as firstName, last_name as lastName FROM millstone.users WHERE id = #{id}")
    User selectOne(long id);

    @Insert("INSERT INTO millstone.users (user_id, first_name, last_name) VALUES (#{userID}, #{firstName}, #{lastName})")
    // Sets the object id to the id generated in database
    @Options(useGeneratedKeys = true, keyColumn = "user_id", keyProperty = "user_id")
    void insertUser(User user);
}
