<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<%@include file="TmHead.jsp"%>
<title>
	<s:text name="COMMON_TITLE"/>-<s:text name="LABEL.COURSE_EDIT"/>
</title>
<base target="_self">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!-- 引用公共JS -->
<%@include file="TmFoot.jsp"%>

<!-- 引用页面JS -->
<script src="${pageContext.request.contextPath }/page/js/resource/CourseInfoEdit.js"></script>
<script src="${pageContext.request.contextPath }/jquery/jquery.form.js"></script>
<%@include file="Ue.jsp"%>
</head>
<body>
	<!-- topbar starts -->
	<%@include file="TopBar.jsp" %>
	<!-- topbar ends -->
	
	<div class="container-fluid">
		<div class="row-fluid">
			<!-- left menu starts -->
			<%@include file="LeftMenu.jsp" %>
			<!-- left menu ends -->
		
			<%@include file="noScript.jsp" %>
			
			<!-- content starts -->
			<div id="content" class="span10">
				<div>
					 <ul class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/goCourseManager.do">课程管理</a> <span class="divider">/</span></li>
						<li><a href="${pageContext.request.contextPath}/goCourseInfo.do?courseVo.id=${courseVo.id}">${courseVo.name}</a> <span class="divider">/</span></li>
						<li><a href="#"><s:text name="LABEL.COURSE_EDIT"/></a></li>
					</ul>
				</div>
				<div class="row-fluid">
					<div class="box span12">
						<div class="box-header well">
							<h2>
								<i class="icon-edit"></i> 
								<s:text name="LABEL.COURSE_EDIT"/>
							</h2>
						</div>
						<div class="box-content">
							<form action="${pageContext.request.contextPath}/doCourseEdit.do" method="post" class="form-horizontal">
								<div class="control-group">
									<label class="control-label">
										<s:text name="LABEL.COURSE_CODE"/>
									</label>
									<div class="controls">
										${courseVo.code }
										<span class="help-inline error-color">*</span>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">
										<s:text name="LABEL.COURSE_NAME"/>
									</label>
									<div class="controls">
										<input name="courseVo.code" type="hidden" value="${courseVo.code}">
										<input name="courseVo.id" type="hidden" value="${courseVo.id}">
										<input class="input-xlarge focused" name="courseVo.name" type="text" value="${courseVo.name}">
										<span class="help-inline error-color">*</span>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">
										<s:text name="LABEL.COURSE_DESCRIPTION"/>
									</label>
									<div class="controls">
										<textarea name="courseVo.description" rows="20" cols="80" style="width:70%;" class="xheditor {tools:'Blocktag,Fontface,FontSize,Bold,Italic,Underline,FontColor,Removeformat|Align,List,Outdent,Indent,Link,Unlink,Hr,Emot,Table,Source,Fullscreen'}">${courseVo.description}</textarea>
									</div>
								</div>
								<div class="form-actions">
									<button type="submit" class="btn btn-large btn-primary">
										<s:text name="BUTTON.SAVE"/>
									</button>
									<button type="button" class="btn btn-large btn-danger" onclick="goAction('${pageContext.request.contextPath}/goCourseInfo.do?courseVo.id=${courseVo.id}');">
										<s:text name="BUTTON.CANCEL"/>
									</button>
							  	</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- content ends -->
			<!--/#content.span10-->
		</div>
		<!--/fluid-row-->
		<hr>
		
		<%@include file="footer.jsp" %>
	</div>
	<!--/.fluid-container-->
	
</body>
</html>
