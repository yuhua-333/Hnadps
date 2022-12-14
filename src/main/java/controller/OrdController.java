package controller;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import entity.Ord;
import service.OrdService;
import utils.QRCodeUtil;

import java.io.ByteArrayOutputStream;

@SessionAttributes("currentUser")
@Controller
public class OrdController {
    //订单的增删改查
    @Autowired
    private OrdService ordService;

    @RequestMapping("/findOrdById")//根据id查找订单
    public String findOrdById(Integer oid, Model model) {
        System.out.println("oid=" + oid);//打印前端往后端传送的订单号
        Ord ordeatlis = ordService.findOrdById(oid);
        model.addAttribute("ordeatlis", ordeatlis);//往前台传数据
        System.out.println(ordeatlis.getName());
        return "ordeatlis";
    }

    @Resource
    private OrdService ordService2;

    @RequestMapping("/findOrdByName")//根据用户名查找订单
    public String findOrdByName(String name, Model model) {
        System.out.println("name=" + name);
        Ord ordeatlis = ordService2.findOrdByName(name);
        model.addAttribute("ordeatlis", ordeatlis);//往前台传数据
        return "ordeatlis2";
    }

    @RequestMapping("/insert")//插入订单
    public String insertById(HttpServletRequest req, Ord ord) {
        ord.setUid(ord.getUid());
        ord.setName(ord.getName());
        ord.setTime(ord.getTime());
        String insert = ordService.insertById(ord);
        req.setAttribute("insert", insert);
        return "redirect:ord";
    }

    @RequestMapping("/pre_book")//预约
    public String insertById2(HttpServletRequest req, Ord ord) {
        ord.setUid(ord.getUid());
        ord.setName(ord.getName());
        ord.setTime(ord.getTime());
        String insert = ordService.insertById(ord);
        req.setAttribute("insert", insert);
        return "add_success";
    }

    @RequestMapping("/update")//更新订单
    public String updateById(HttpServletRequest req, Ord ord) {
        ord.setOid(ord.getOid());
        ord.setUid(ord.getUid());
        ord.setName(ord.getName());
        ord.setTime(ord.getTime());
        ord.setState(ord.getState());
        String update = ordService.updateById(ord);
        req.setAttribute("update", update);
        return "redirect:ord";
    }

    @RequestMapping("/delete")//删除订单
    public String deleteById(HttpServletRequest req, Ord ord) {
        ord.setOid(ord.getOid());
        String delete = ordService.deleteById(ord);
        req.setAttribute("delete", delete);
        return "redirect:ord";
    }

    @RequestMapping("/getQRCode")//根据用户名生成二维码
    public void getQRCode(HttpServletRequest request, HttpServletResponse response, HttpSession session)
            throws Exception {

        String text = (String) session.getAttribute("currentUser");//二维码信息是用户名
        System.out.println(text);
        // 通过调用写的工具类，拿到图片流
        ByteArrayOutputStream out = QRCodeUtil.encodeIO(text, "C:\\Users\\Lenovo\\Pictures\\picture\\6.png", true);
        // 定义返回参数
        response.setCharacterEncoding("UTF-8");
        response.setContentType("image/jpeg;charset=UTF-8");
        response.setContentLength(out.size());
        ServletOutputStream outputStream = response.getOutputStream();
        outputStream.write(out.toByteArray());
        outputStream.flush();
        outputStream.close();
    }

    @RequestMapping("/gotoQRCode")//查看个人核酸码
    public String gotoQRCode(HttpServletRequest request, String name){
        return "myQRCode";
    }

//    @RequestMapping("/paid")
//    public

}