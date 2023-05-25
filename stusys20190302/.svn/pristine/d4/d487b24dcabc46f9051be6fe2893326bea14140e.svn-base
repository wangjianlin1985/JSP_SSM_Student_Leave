<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>学生管理系统</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<%@include file="common.jsp"%>


<style type="text/css">
			
body {
	
	background-color:#e6e8ea;
	padding-right:0px !important;
	    background-color: white;
	    height:100%;
}
.modal{
	overflow:auto !important;
	padding-right:0px !important;
}
.bootstrap-select:not([class*=col-]):not([class*=form-control]):not(.input-group-btn) {
    width: 100%;
}

</style>

</head>
<body >
<!--cantainer-fluid  开始 -->
<div class = "cantainer">
	<!-- row-fluid  第一个开始 -->
	<div class="row">
		<!-- col-md-12  第一个开始 -->
		<div class = "col-md-12">
			<!-- panel panel-default  第一个开始 -->
			<div class="panel panel-default">
				<div class="panel-body">
				<!-- 查询条件开始 -->
				<form id="searchForm" class="form-horizontal">
					<div class="form-group">
						
						<label class="col-md-1 control-label" for = "termId">学期</label>
						<div class="col-md-2">
							<select class="selectpicker" id="termId2" name="termId" ></select>
						</div>
						<!-- <label class="col-md-1 control-label" for = "professionId">专业</label>
						<div class="col-md-2">
							<select class="selectpicker" id="professionId2" name="professionId" ></select>
						</div> -->
						<label class="col-md-1 control-label" for = "serieId">系</label>
						<div class="col-md-2">
							<select class="selectpicker" id="serieId2" name="serieId" ></select>
						</div>
						<label class="col-md-1 control-label" for = "classId">班级</label>
						<div class="col-md-2">
							<select class="selectpicker" id="classId2" name="classId" ></select>
						</div>
					</div>
					<div class="form-group">	
						<label class="col-md-1 control-label" for = "stuName">姓名</label>
						<div class="col-md-2">
							<input class="form-control" type="text" name="stuName">
						</div>
						<div class="col-sm-2" align="left">
							<button type="button" class="btn btn-md btn-success" onclick = "operation.searchForm()">
								<span class="glyphicon glyphicon-search"></span>查询
							</button>
							<!-- <button type="button" class="btn btn-md btn-info" onclick="">
								<span class="glyphicon glyphicon-download"></span>导出
							</button> -->
						</div>
					</div>
				
				</form>
				<!-- 查询条件结束 -->
				</div>
			</div>
			<!-- panel panel-default  第一个开始 -->
		</div>
		<!-- col-md-12  第一个结束 -->	
	</div>
	<!-- row-fluid  第一个结束 -->
	
	<!-- row-fluid  第二个开始-->
	<div class="row-fluid">
		<div class="panel panel-default">
			<div class="panel-body">
				<table id="dg"></table>
			</div>
		</div>
	</div>
<!-- row-fluid  第二个结束-->
</div>
<!--cantainer-fluid  结束 -->



<!-- 第一个model 开始 -->
<div id="addModal" class="modal fade" tabindex="-1" role="dialog" data-backdrop="static" data-keybord="false">
	<div class="modal-dialog" style="width:80%;">
		<div class="modal-content">
			<div id="head_score" class="modal-header">
				设置成绩
			</div>
			<!-- modal-body 开始 -->
			<div class="modal-body">
			
			<div class="row">
			<div class = "col-md-6">
			<div class="panel panel-default">
			<div class="panel-body">
				
		
			<form id="scoreForm" class="form-horizontal">
					<input type="hidden" id="scoreId" name="id">
					<div class="form-group">
						<label class="col-sm-4 control-label" for="scoreTitle">分数标题</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name = "scoreTitle" placeholder="请输入分数标题">
						</div>
					</div>
						<div class="form-group">
						<label class="col-sm-4 control-label" for="courseId">课程</label>
						<div class="col-sm-6">
							<select class="selectpicker" id="courseId" name="courseId" ></select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label" for="score">分数</label>
						<div class="col-sm-6">
							<input class="form-control" type="number" name = "score" placeholder="请输入分数">
						</div>
					</div>
				
					<div class="form-group">
					<center>
						<button id="edit_save_btn" type="button" class="btn btn-success" onclick = "operation.addScoreForm()">
							<span class="glyphicon glyphicon-ok"></span>保存
						</button>
						<button id="edit_save_btn" type="button" class="btn btn-info" onclick = "operation.editScoreForm()">
							<span class="glyphicon glyphicon-edit"></span>修改
						</button>
						<button id="delete_save_btn" type="button" class="btn btn-warning" onclick = "operation.closeScoreMoal()">
							<span class="glyphicon glyphicon-remove"></span>关闭
						</button>
					</center>
					</div>
					
					
				</form>	
				</div>
		</div>
			</div>
			<div class = "col-md-6">
		
			<table id="scoreDg"></table>
		
		
		
			</div>
			
			</div>
			</div>
			<!-- modal-body 结束 -->
			 <div class="modal-footer">
				<!-- <button id="add_save_btn" type="button" class="btn btn_success" onclick = "operation.addForm()">
					<span class="glyphicon glyphicon-ok"></span>保存
				</button>
				<button id="edit_save_btn" type="button" class="btn btn_info" onclick = "operation.editForm()">
					<span class="glyphicon glyphicon-ok"></span>保存
				</button>
				<button id="delete_save_btn" type="button" class="btn btn_warning" onclick = "operation.closeMoal()">
					<span class="glyphicon glyphicon-remove"></span>关闭
				</button> -->
			</div> 
			
		</div>
	</div>



</div>
<!-- 第一个model 结束 -->



<script type="text/javascript">

var stuId="";
//用户操作
var operation={
	searchForm:function(){
		$('#dg').bootstrapTable("refresh");
	},
	
	
	//导出
	exportFile:function(){
		
		
	},
	//审核
	audit:function(){
		
		
	},
	addScore:function(index){
		
		var rows = $('#dg').bootstrapTable('getData');
		stuId = rows[index].id;
		$("#head_score").html("设置分数&nbsp;&nbsp;&nbsp;&nbsp;姓名："+rows[index].stuName+"&nbsp;&nbsp;班级:"+rows[index].className+"&nbsp;&nbsp;专业："+rows[index].professionName);
		$('#addModal').modal('show');
		$('#scoreDg').bootstrapTable({
			url:"score/findScore.htm",
			sidePagination:"server",
			queryParams:fmt.queryScoreParams,
			/* pagination:true,
			pageNumber:1,
			pageSize:10,
			pageList:[10,25,50,100], */
			//search:true,
			clickToSelect:true,
			singleSelect:true,
			columns:score_columns,
			onClickRow:operation.onClickRow
		})
	},
	addScoreForm:function(){
		var temp = getFormJson("scoreForm");
		if(temp.scoreTitle == ""){
			message.alert("请输入分数标题！");
			return;
		}
		if(temp.courseId == ""){
			message.alert("请选择课程");
			return;	
		}
		if(temp.score == ""){
			message.alert("请输入分数！");
			return;
		}
		temp.stuId = stuId;
		$.post("score/validateScore.htm", temp ,function(data) {
			if(data == 0){
				$.post("score/insertScore.htm", temp ,function(data) {
					var obj = eval('('+data+')');
					$("#scoreDg").bootstrapTable("refresh");
					message.alert(obj.showInfo);
					$('#courseId').selectpicker('val', "");
					$('#scoreForm')[0].reset();
				});
			}else{
				message.alert("该课程已添加分数！");
				return;
			}
		});
	},
	editScoreForm:function(){
		var temp = getFormJson("scoreForm");
		if(temp.scoreTitle == ""){
			message.alert("请输入分数标题！");
			return;
		}
		if(temp.courseId == ""){
			message.alert("请选择课程");
			return;	
		}
		if(temp.score == ""){
			message.alert("请输入分数！");
			return;
		}
		if(temp.id==""){
			message.alert("请选择要修改的数据！");
			return;
		}
		$.post("score/updateScore.htm", temp ,function(data) {
			var obj = eval('('+data+')');
			$("#scoreDg").bootstrapTable("refresh");
			message.alert(obj.showInfo);
			$('#scoreId').val("");
			$('#courseId').selectpicker('val', "");
			$('#scoreForm')[0].reset();
		});
		
	},
	onClickRow:function(row){
		setForm("#scoreForm",row);
		$('#courseId').selectpicker('val', row.courseId);
	},
	closeScoreMoal:function(){
		$('#addModal').modal('hide');
	},
	deleteScore:function(id){
		
		bootbox.confirm({
			size:"small",
			title:"提示",
			message:"确认删除这条数据吗？",
			callback:function(result){
				if(result){
					$.post("score/deleteScore.htm", {id:id} ,function(data) {
						var obj = eval('('+data+')');
						$("#scoreDg").bootstrapTable("refresh");
						$('#courseId').selectpicker('val', "");
						$('#scoreForm')[0].reset();
						message.alert(data.showInfo);
					});
					
				}
			}
		});
		
	}
	
	
	
	
}


$(function(){
	$('#dg').bootstrapTable({
		url:"student/query.htm",
		sidePagination:"server",
		queryParams:fmt.queryParams,
		pagination:true,
		pageNumber:1,
		pageSize:10,
		pageList:[10,25,50,100],
		//search:true,
		clickToSelect:true,
		singleSelect:true,
		toolbar:'#toolbar',
		columns:columns,
	})
	
});

//表格格式化
var fmt = {
	queryParams:function(params){
		var temp = getFormJson("searchForm");
		temp.professionId="${user.professionId}"
		temp.rows = params.limit;
		temp.currentPage = (params.offset/params.limit)+1;
		return temp;
		
	},	
	setTime:function(value,row,index){
		if(value !=null && value!=""){
			return formatTimeYMD(value);  //转成年月日时分秒
		}
		
	},
	setSex:function(value,row,index){
		var sex="女";
		if(value==1){
			sex="男";
		}
		return sex;
	},
	setOpt:function(value,row,index){
		var html ="";
		html +='<button type="button" class="btn btn-md btn-info" onclick = "operation.addScore('+index+')"><span class="glyphicon glyphicon-add"></span>添加成绩</button>'
		return html;
	},
	setScoreOpt:function(value,row,index){
		var html ="";
		html +='<button type="button" class="btn btn-sm btn-danger" onclick = "operation.deleteScore('+row.id+')"><span class="glyphicon glyphicon-remove"></span></button>'
		return html;
	},
	queryScoreParams:function(){
		var temp = {};
		temp.stuId=stuId;
		return temp;
	},
	
}




var score_columns=[[
 	{field:'ck',width:'2%',checkbox:true,align:'center'},  
	{field:'id',title:'id',width:10,align:'center',visible:false},
	{field:'scoreTitle',title:'成绩标题',width:10,align:'center',visible:true},
	{field:'courseId',title:'课程',width:10,align:'center',visible:false},
	{field:'courseName',title:'课程',width:10,align:'center',visible:true},
	{field:'score',title:'分数',width:10,align:'center',visible:true},
	{field:'createDate',title:'录入时间',width:10,align:'center',visible:true,formatter:fmt.setTime},
	{field:'scoreOpt',title:'操作',width:10,align:'center',visible:true,formatter:fmt.setScoreOpt},
]];









var columns=[[
 	{field:'ck',width:'2%',checkbox:true,align:'center'},  
	{field:'id',title:'id',width:10,align:'center',visible:false},
	{field:'stuNo',title:'学号',width:10,align:'center',visible:true},
	{field:'stuName',title:'姓名',width:10,align:'center',visible:true},
	{field:'classId',title:'班级',width:10,align:'center',visible:false},
	{field:'className',title:'班级',width:10,align:'center',visible:true},
	{field:'serieId',title:'系',width:10,align:'center',visible:false},
	{field:'serieName',title:'系',width:10,align:'center',visible:true},
	{field:'professionId',title:'专业',width:10,align:'center',visible:false},
	{field:'professionName',title:'专业',width:10,align:'center',visible:true}, 
	{field:'termId',title:'学期',width:10,align:'center',visible:false},
	{field:'termName',title:'学期',width:10,align:'center',visible:true},
	{field:'opt',title:'操作',width:10,align:'center',visible:true,formatter:fmt.setOpt},
]];


$(function(){
	//班级
	$.post("tClass/findClass.htm" ,function(data) {
		var obj = eval('('+data+')');
		$('#classId').empty();
		var html="";
		html +="<option value=''>--请选择--</option>";
		$.each(obj,function(i,val){ 
			html+="<option value='"+val.id+"'>"+val.className+"</option>";
		});
		$('#classId').append(html);  
		$("#classId").selectpicker("refresh");
		$('#classId2').append(html);  
		$("#classId2").selectpicker("refresh");
	});
	
	//专业
	$.post("profession/findProfession.htm" ,function(data) {
		var obj = eval('('+data+')');
		$('#professionId').empty();
		var html="";
		html +="<option value=''>--请选择--</option>";
		$.each(obj,function(i,val){ 
			html+="<option value='"+val.id+"'>"+val.professionName+"</option>";
		});
		$('#professionId').append(html);  
		$("#professionId").selectpicker("refresh");
		$('#professionId2').append(html);  
		$("#professionId2").selectpicker("refresh");
	});
	
	//系
	$.post("serie/findSerie.htm" ,function(data) {
		var obj = eval('('+data+')');
		$('#serieId').empty();
		var html="";
		html +="<option value=''>--请选择--</option>";
		$.each(obj,function(i,val){ 
			html+="<option value='"+val.id+"'>"+val.serieName+"</option>";
		});
		$('#serieId').append(html);  
		$("#serieId").selectpicker("refresh");
		$('#serieId2').append(html);  
		$("#serieId2").selectpicker("refresh");
	});
	
	//学期
	$.post("term/findTerm.htm" ,function(data) {
		var obj = eval('('+data+')');
		$('#termId').empty();
		var html="";
		html +="<option value=''>--请选择--</option>";
		$.each(obj,function(i,val){ 
			html+="<option value='"+val.id+"'>"+val.termName+"</option>";
		});
		$('#termId').append(html);  
		$("#termId").selectpicker("refresh");
		$('#termId2').append(html);  
		$("#termId2").selectpicker("refresh");
	});
	

	
	//课程
	$.post("course/findCourse.htm" ,function(data) {
		var obj = eval('('+data+')');
		$('#courseId').empty();
		var html="";
		html +="<option value=''>--请选择--</option>";
		$.each(obj,function(i,val){ 
			html+="<option value='"+val.id+"'>"+val.courseName+"</option>";
		});
		$('#courseId').append(html);  
		$("#courseId").selectpicker("refresh");
	});
	
	
	
})





</script>



</body>
</html>

