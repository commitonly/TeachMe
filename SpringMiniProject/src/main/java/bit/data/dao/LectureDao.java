package bit.data.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LectureDao implements LectureDaoInter{

    @Autowired
    SqlSession session;
}
