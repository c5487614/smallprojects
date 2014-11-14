package cn.org.hbca.project.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.org.hbca.project.model.Dialogitemconfig;
import cn.org.hbca.project.service.imp.ItemService;

@Controller
@RequestMapping("/controls")
public class ItemController {
	@Autowired
	ItemService itemService;
	
	@RequestMapping(value = "/index.do")
	public void index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/admin/controls/index.jsp").forward(request, response);
    }
	@RequestMapping(value = "/addControl.do")
	public void addControl(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/admin/controls/addControl.jsp").forward(request, response);
    }
	@RequestMapping(value = "/viewItem.do")
	public void viewItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String itemId = request.getParameter("itemId");
		Dialogitemconfig model = itemService.selectByItemId(itemId);
		request.setAttribute("control", model);
		request.getRequestDispatcher("/admin/controls/addControl.jsp").forward(request, response);
    }
	@RequestMapping(value = "/editItem.do")
	public void editItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String itemId = request.getParameter("itemId");
		Dialogitemconfig model = itemService.selectByItemId(itemId);
		System.out.println(model.getItemName());
		request.setAttribute("control", model);
		request.getRequestDispatcher("/admin/controls/addControl.jsp").forward(request, response);
    }
	@RequestMapping(value = "/save.do")
    public @ResponseBody Map<String,Object> save(
    		@RequestParam("hf_itemId") String hf_itemId,
    		@RequestParam("tbox_pId") String tbox_pId,
    		@RequestParam("tbox_itemType") String tbox_itemType,
    		@RequestParam("tbox_itemClick") String tbox_itemClick,
    		@RequestParam("tbox_itemName") String tbox_itemName,
    		@RequestParam("tbox_itemValue") String tbox_itemValue,
    		@RequestParam("tbox_itemOrder") Integer tbox_itemOrder		
    ){
		Dialogitemconfig model = new Dialogitemconfig();
		
		model.setpId(tbox_pId);
		model.setItemType(tbox_itemType);
		model.setItemClick(tbox_itemClick);
		model.setItemName(tbox_itemName);
		model.setItemValue(tbox_itemValue);
		model.setItemOrder(tbox_itemOrder);
		
		if(hf_itemId==null||hf_itemId==""){
			model.setItemId(java.util.UUID.randomUUID().toString());
			itemService.insert(model);
		}else{
			itemService.update(model);
		}
		Map<String,Object> map =  new HashMap<String,Object>();
		map.put("result", true);
		return map;
	}
	@RequestMapping(value = "/getItemsByPId.do")
	public @ResponseBody Map<String,Object> getItemsByPId(@RequestParam("tbox_pId") String pId){
		List<Dialogitemconfig> list = itemService.selectAll();
		Map<String,Object> map =  new HashMap<String,Object>();
		if(list==null||list.size()==0){
			return null;
		}
		map.put("length", list.size());
		map.put("items", list);
		return map;
	}
	@RequestMapping(value = "/deleteOne.do")
	public @ResponseBody Map<String,Object> deleteOne(@RequestParam("itemId") String itemId){
		itemService.delete(itemId);
		Map<String,Object> map =  new HashMap<String,Object>();
		map.put("result", true);
		return map;
	}
}
