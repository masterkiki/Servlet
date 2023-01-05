<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<header class="d-flex">
			<div class="logo d-flex align-items-center col-2">
				<h2 class="text-success">Melong</h2>
			</div>
			
			<div class="ml-4 search d-flex align-items-center col-10">
				<form method="get" action="/jspTemplete/test02/test02_detail.jsp">
					<div class="input-group">
						<input type="text" class="form-control col-12" name="title">
						<div class="input-group-append">
							<button type="submit" class="btn form-control btn-success">검색</button>
						</div>
					</div>
				</form>
			</div>
		</header>