package bit.data.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LecTypeDao implements LecTypeDaoInter{

    @Autowired
    SqlSession session;
}
