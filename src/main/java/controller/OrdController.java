package controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import entity.Ord;
import service.OrdService;

@SessionAttributes("currentUser")
@Controller
public class OrdController {
   //订单的增删改查
   @Autowired
   private OrdService ordService;
   @RequestMapping("/findOrdById")//根据id查找订单
   public String findOrdById(Integer oid,Model model) {
	   System.out.println("oid="+oid);//打印前端往后端传送的订单号
	   Ord ordeatlis=ordService.findOrdById(oid);
	   model.addAttribute("ordeatlis",ordeatlis);//往前台传数据
	   return "ordeatlis";
   }
   @Resource
   private OrdService ordService2;
   @RequestMapping("/findOrdByName")//根据用户名查找订单
   public String findOrdByName(String name,Model model) {
	   System.out.println("name="+name);
	   Ord ordeatlis=ordService2.findOrdByName(name);
	   model.addAttribute("ordeatlis",ordeatlis);//往前台传数据
	   return "ordeatlis2";
   }
   @RequestMapping("/insert")//插入订单
   public String insertById(HttpServletRequest req,Ord ord) {
	   ord.setOid(ord.getOid());
	   ord.setUid(ord.getUid());
	   ord.setName(ord.getName());
	   String insert=ordService.insertById(ord);
	   req.setAttribute("insert", insert);
	   return "ord";
   }
   @RequestMapping("/update")//更新订单
   public String updateById(HttpServletRequest req,Ord ord) {
	   ord.setOid(ord.getOid());
	   ord.setUid(ord.getUid());
	   ord.setName(ord.getName());
	   String update=ordService.updateById(ord);
	   req.setAttribute("update", update);
	   return "ord";
   }
   @RequestMapping("/delete")//删除订单
   public String deleteById(HttpServletRequest req,Ord ord) {
	   ord.setOid(ord.getOid());
	   String delete=ordService.deleteById(ord);
	   req.setAttribute("delete", delete);
	   return "ord";
   }
}