package service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.OrdDao;
import entity.Ord;
import utils.PageBean;
import service.OrdService;

@Service
@Transactional
public class OrdServicelImpl implements OrdService {
    @Resource
    private OrdDao ord3dao;

    public List<Ord> selectList() {
        // TODO Auto-generated method stub
        return ordDao.selectList();
    }

    public int selectCount() {
        // TODO Auto-generated method stub
        return ordDao.selectCount();
    }

    public PageBean<Ord> findByPage(int currentPage) {
        HashMap<String, Object> map = new HashMap<String, Object>();
        PageBean<Ord> pageBean = new PageBean<Ord>();

        //封装当前页数
        pageBean.setCurrPage(currentPage);

        //每页显示的数据
        int pageSize = 5;
        pageBean.setPageSize(pageSize);

        //封装总记录数
        int totalCount = ordDao.selectCount();
        pageBean.setTotalCount(totalCount);

        //封装总页数
        double tc = totalCount;
        Double num = Math.ceil(tc / pageSize);//向上取整
        pageBean.setTotalPage(num.intValue());

        map.put("start", (currentPage - 1) * pageSize);
        map.put("size", pageBean.getPageSize());
        //封装每页显示的数据
        List<Ord> ordlists = ordDao.findByPage(map);
        pageBean.setLists(ordlists);

        return pageBean;
    }

    @Autowired
    private OrdDao ordDao;

    public Ord findOrdById(Integer oid) {
        return this.ordDao.findOrdById(oid);
    }

    @Autowired
    private OrdDao ordDao2;

    public Ord findOrdByName(String name) {
        return this.ordDao2.findOrdByName(name);
    }

    public String insertById(Ord ord) {
        int i = ordDao.insertById(ord);
        String message = "";
        if (i > 0) {
            message = "添加成功";
        } else {
            message = "添加失败";
        }
        System.out.print(message);
        return message;
    }

    public String updateById(Ord ord) {
        int i = ordDao.updateById(ord);
        String message = "";
        if (i > 0) {
            message = "修改成功";
        } else {
            message = "修改失败";
        }
        System.out.print(message);
        return message;
    }

    public String deleteById(Ord ord) {
        int i = ordDao.deleteById(ord);
        String message = "";
        if (i > 0) {
            message = "删除成功";
        } else {
            message = "删除失败";
        }
        System.out.print(message);
        return message;
    }

}
