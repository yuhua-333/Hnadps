package service;

import java.util.List;

import entity.Ord;
import utils.PageBean;

public interface OrdService {
    List<Ord> selectList();//查询部门发放的工资单

    int selectCount();//查总条数

    PageBean<Ord> findByPage(int currentPage);

    public Ord findOrdById(Integer oid);

    public Ord findOrdByName(String name);

    String insertById(Ord ord);

    String updateById(Ord ord);

    String deleteById(Ord ord);
}
