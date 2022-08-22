package dao;

import java.util.HashMap;
import java.util.List;

import entity.Ord;

public interface OrdDao {
   public Ord findOrdById(Integer oid);
   public Ord findOrdByName(String name);
   int insertById(Ord ord);
   int updateById(Ord ord);
   int deleteById(Ord ord);
   List<Ord> findByPage(HashMap<String, Object> map);
   int selectCount();
   List<Ord> selectList();
}
