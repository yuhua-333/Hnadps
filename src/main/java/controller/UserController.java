package controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import entity.Ord;
import entity.User;
import service.OrdService;
import service.UserService;
import utils.PageBean;
import utils.RandomValidateCode;

@SessionAttributes("currentUser")
@Controller
public class UserController {
	//登录、注册、验证码、分页、退出
	 @Resource
	 private UserService userService2;
	//注册新用户
	 @RequestMapping(value="/insertUser",method=RequestMethod.POST)//表单提交方法用POST
	    public String insertUser(HttpServletRequest req,User user) {
	       //读取前端表单传入的用户数据
	 	   user.setUid(user.getUid());
	 	   user.setName(user.getName());
	 	   user.setPassword(user.getPassword());
	 	   user.setPhone(user.getPhone());
	 	   //调用service执行数据库插入用户操作
	 	   //在insertUser的mapper文件里把用户状态设为0 保证注册的新用户不是管理员
	 	   String insertUser=userService2.insertUser(user);
	 	   req.setAttribute("insertUser", insertUser);
	 	   return "login";
	    }

		//生成验证码
		@RequestMapping(value = "/getVerify")
		public void getVerify(HttpServletRequest request, HttpServletResponse response){
			response.setContentType("image/jpeg");//设置相应类型,告诉浏览器输出的内容为图片
			response.setHeader("Pragma", "No-cache");//设置响应头信息，告诉浏览器不要缓存此内容
			response.setHeader("Cache-Control", "no-cache");
			response.setDateHeader("Expire", 0);
			RandomValidateCode randomValidateCode = new RandomValidateCode();
			try {
				randomValidateCode.getRandcode(request, response);//输出验证码图片方法
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	 //用户登录   
	 @Resource
     private UserService userService;
	 @Resource
	 private OrdService ordService;
     @RequestMapping(value="/login",method=RequestMethod.POST)
     public String login(String Name,String Password,@RequestParam("code")String code,Model model,HttpSession session) {
    	 User user=userService.findUser(Name, Password);
		 System.out.println("前端验证码输入："+code);
		 //从session中获取随机数
		 String random = (String) session.getAttribute("RANDOMVALIDATECODEKEY");
		 System.out.println("随机验证码："+random);
		 if(random.equals(code)){
			 if(user!=null) {
				 //打印一下看看这是个啥状态的用户，1就是管理员类型的，0就是用户类型的
				 System.out.println("用户状态是："+user.getstate());
				 if(user.getstate()==1) {
					 System.out.printf("登录成功");
					 List<Ord> lists = ordService.selectList();
					 model.addAttribute("ordLists", lists);//显示员工信息
					 session.setAttribute("USER_SESSION", user);//将用户添加Session
					 model.addAttribute("currentUser", user.getName());
					 return "redirect:ord";//返回管理端主页
				 }
				 if(user.getstate()==0) {
					 //将用户添加Session
					 session.setAttribute("USER_SESSION", user);
					 return "order";//返回用户端主页
				 }
			 }
			 else{
				 model.addAttribute("msg","账号密码错误！请重新输入");
				 return "login";
			 }
		 }
		 model.addAttribute("msg","验证码错误！请重新输入");
		 return "login";
     }

	 //管理端登录进入后的页面，查询结果的分页
     @RequestMapping(value="/ord")
     public String getOrdAll(@RequestParam(value="currentPage", defaultValue="1", required=false)int currentPage,Model model){
  	    
  	    PageBean<Ord> pagemsg = ordService.findByPage(currentPage);
  	    model.addAttribute("pagemsg", pagemsg);

  		List<Ord> lists = ordService.selectList();
  		model.addAttribute("ordLists", lists);
  		
         return "ord";
     }
   
    //退出
    @RequestMapping(value = "/logout")
 	public String logout(HttpSession session) {
 		// 清除Session
 		session.invalidate();
 		// 重定向到登录页面的跳转方法
 		return "login";
 	}
   
}
