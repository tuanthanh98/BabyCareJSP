<!DOCTYPE html>
<%@page import="com.thanh.beans.Baby"%>
<%@page import="java.util.ArrayList"%>
<html>
    <head>
        <link rel="stylesheet" href="resources/css/style.css">
        <link rel="stylesheet" href="vendors/css/grid.css">
        <link rel="stylesheet" href="vendors/css/normalize.css">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400" rel="stylesheet">
    
    </head>
    
    <body>
        <header>
            <nav>
                <ul class="main-nav clearfix">
                    <li><a href="home">BabyCare</a></li>
                    <li><a href="home">Home</a></li>
                    <li><a href="viewBabyNames">Baby Names</a></li>
                    <li><a href="tips">Tips</a></li>
                    <li><a href="food">Food</a></li>
                    <li><a href="product">Product</a></li>
                    <li><a href="loginForm">Admin</a></li>
                </ul>
            </nav>
            
        </header>
        
        <section class="section-admin-view-name">
            <h2>View Baby Name</h2>
                <div class="row">
                    <div class="col span-1-of-12">
                        <h3></h3>
                    </div>
                    <div class="col span-1-of-12">
                        <h3>Id</h3>
                    </div>
                    <div class="col span-3-of-12">
                        <h3>Name</h3>
                    </div>
                    <div class="col span-4-of-12">
                        <h3>Meaning</h3>
                    </div>
                    <div class="col span-1-of-12">
                        <h3>Sex</h3>
                    </div>
                    <div class="col span-2-of-12">
                        <h3>Religion</h3>
                    </div>
                </div>
                <% 
                ArrayList<Baby> babies = (ArrayList<Baby>) request.getAttribute("babies");
				for(Baby baby: babies){
            %>
			<div class="row">
				<div class="col span-1-of-12">
					<p>&nbsp;</p>
				</div>
				<div class="col span-1-of-12">
					<p><%=baby.getId() %></p>
				</div>
				<div class="col span-3-of-12">
					<p><%=baby.getName() %></p>
				</div>
				<div class="col span-4-of-12">
					<p><%=baby.getMeaning() %></p>
				</div>
				<div class="col span-1-of-12">
					<p><%=baby.getSex() %></p>
				</div>
				<div class="col span-2-of-12">
					<p><%=baby.getReligion() %></p>
				</div>
			</div>
			<%} %>
        </section>
        
        <footer>
            <div class="row">
                ęCopyright BabyCareSolution 2010-2016.
            </div>
        </footer>
    </body>

</html>        