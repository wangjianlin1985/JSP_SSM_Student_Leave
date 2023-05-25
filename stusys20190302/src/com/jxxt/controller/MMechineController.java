package com.jxxt.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.jxxt.common.utils.ExcelReader;
import com.jxxt.controller.tools.Tools;
import com.jxxt.entity.EnterDetails;
import com.jxxt.entity.TInventory;
import com.jxxt.entity.TLogin;
import com.jxxt.entity.TMedicinal;
import com.jxxt.mapper.TMedicinalMapper;



@Controller
@RequestMapping ( "/mechine" )
public class MMechineController extends Tools{
    /**
     * 日志系统
     */
	

    @Autowired
    TMedicinalMapper mechineMapper;

  
    
	
	
	
	
	@ResponseBody
    @RequestMapping(value="exportExcel")
	public void  adminLogin( @RequestParam(value="filename") MultipartFile file, TLogin tuser,HttpSession session,HttpServletRequest request){
		ExcelReader excelReader = new ExcelReader();
		 Map<Integer, String> map;
		try {
			map = excelReader.readExcelContent(file.getInputStream());
			 System.out.println("获得Excel表格的内容:");
	         for (int i = 1; i <= map.size(); i++) {
	             System.out.println(map.get(i));
	            String strarr[]= map.get(i).split("---");
	            TMedicinal tm=  new TMedicinal();
	           tm.setCommonName(strarr[1]);
	           tm.setManufacturer(strarr[2]);
	           tm.setPinyinCode(strarr[3]);
	           tm.setDosage(strarr[4]);
	           tm.setStatus(strarr[5]);
	           tm.setMedicineType(strarr[6]);
	           tm.setPackingUnit(strarr[7]);
	           tm.setRetailPrice(strarr[8]);
	           tm.setCostPrice(strarr[9]);
	           tm.setDiscountPrice(strarr[10]);
	           tm.setUseType(strarr[11]);
	           tm.setInstructions(strarr[12]);
	           tm.setProductName(strarr[13]);
	           tm.setEnglishName(strarr[14]);
	           tm.setMedicineWords(strarr[15]);
	           tm.setChinaEnglish(strarr[16]);
	          // mechineMapper.insertSelective(tm);
	            /*for (String string : strarr) {
					System.out.println(string);
					
				}*/
	         }

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
	}
	
	
	@ResponseBody
    @RequestMapping(value="exportExcel2")
	public void  exportExcel2( @RequestParam(value="filename") MultipartFile file, TLogin tuser,HttpSession session,HttpServletRequest request){
		ExcelReader excelReader = new ExcelReader();
		 Map<Integer, String> map;
		 int count = 1;
		 int count2 = 1;
		 List<String> list23 = new ArrayList<String>();
		try {
			map = excelReader.readExcelContent(file.getInputStream());
			 System.out.println("获得Excel表格的内容:");
	         for (int i = 1; i <= map.size(); i++) {
	             System.out.println(map.get(i));
	            String strarr[]= map.get(i).split("---");
	          
	       /*     TMedicinal tm2=  new TMedicinal();
	            tm2.setRetailPrice(strarr[4]);*/
	          /*  if(strarr.length>5) {
	            	   tm2.setUseType("");
	            		tm2.setMedicineWords(strarr[6]);
	            }*/
	         /*   if(strarr.length>7) {
	            	   tm2.setManufacturer(strarr[7]);
	            }*/
	        
	            List<TMedicinal> list = mechineMapper.selectByCommonName(strarr[1]);
	            if(list!=null && list.size()>0) {
	            	System.out.println();
	            EnterDetails ed =new EnterDetails();
	            ed.settMedicinalId(list.get(0).getId());
	            ed.setNumber(Double.parseDouble(strarr[3]));
	            ed.setUnitPrice(Double.parseDouble(strarr[4]));
	            ed.settEnterBillId(16);
	            mechineMapper.insertSEnterDetails(ed);
	            
	            TInventory ty = new TInventory();
	            ty.settMedicinalId(list.get(0).getId());
	            ty.setNumber(Double.parseDouble(strarr[3]));
	            mechineMapper.updateTInventory(ty);
	            	count++;
	            }else {
	            	
	            	count2++;
	            	list23.add(strarr[1]);
	            }
	            /* if(list!=null && list.size()>0) {
	            	 tm2.setId(list.get(0).getId());
	            	 mechineMapper.updateByPrimaryKeySelective(tm2);
	            }*/
	           
	            
	        /*    TMedicinal tm=  new TMedicinal();
	           tm.setCommonName(strarr[1]);
	           tm.setManufacturer(strarr[2]);
	           tm.setPinyinCode(strarr[3]);
	           tm.setDosage(strarr[4]);
	           tm.setStatus(strarr[5]);
	           tm.setMedicineType(strarr[6]);
	           tm.setPackingUnit(strarr[7]);
	           tm.setRetailPrice(strarr[8]);
	           tm.setCostPrice(strarr[9]);
	           tm.setDiscountPrice(strarr[10]);
	           tm.setUseType(strarr[11]);
	           tm.setInstructions(strarr[12]);
	           tm.setProductName(strarr[13]);
	           tm.setEnglishName(strarr[14]);
	           tm.setMedicineWords(strarr[15]);
	           tm.setChinaEnglish(strarr[16]);*/
	          // mechineMapper.insertSelective(tm);
	            /*for (String string : strarr) {
					System.out.println(string);
					
				}*/
	         }
System.out.println(count+".........."+count2);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
	}
	
	
	
    @RequestMapping(value="mechineHtml")
   	public String getMainPage(TLogin tuser,HttpSession session,HttpServletRequest request){
   		
     
   		return "mechine";
   	}

	
}
