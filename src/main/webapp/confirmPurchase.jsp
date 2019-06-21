<!DOCTYPE html>
<html>
<html lang="en">
 <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri="http://java.sun.com/jstl/sql" prefix="sql"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SDA Project</title>
    <link rel="icon" href="./img/logo.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
    <link rel="stylesheet" href="./css/buy.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="width:100%; margin-bottom: 5%">
        <a class="navbar-brand" style="font-family: 'Oswald', sans-serif;">Best Buy Quick Sell No Registration</a>
        <a class="navbar-brand" style="position: absolute;left: 50%;margin-left: -50px !important; display: block;" href="./index.jsp"><img src="./img/logo.png" width="40" height="40"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <ul class="nav navbar-nav"><li style ="list-style-type=none"><a class="btn btn-outline-dark" role="button" href ="buy">Continue shopping ?</a></li></span></ul>
            <form class="form-inline ml-auto">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-secondary my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
<%

%>
    <div class="container-fluid text-center">
        <div class="row justify-content-md-center">
            <div class="col-md-auto">
            </div>
            <div class="col-md-auto">
                <div class="jumbotron" style="display:block;overflow:auto;height: 100%;">
                    <h1 class="display-4">Confirm Your Payment</h1>
                    <p id="date"></p>

                    <table class="table">
                            <thead class="thead-light">
                              <tr>
                                <th scope="col">Name</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">Total Price</th>
                              </tr>
                            </thead>
                              <c:forEach items="${cart}" var="user">
                            <tbody>                   
                            <tr>                        
                                    <td>${user.prodName}</td>
                                    <td>${user.prodQuan}</td>
                                    <td>${user.price * user.prodQuan} TL</td>
                                    <td><a class="btn btn-danger fa fa-close" href="delete?id=${user.id}" role="button" style="background-color: RED;"></a></td>
                                    <input type="hidden" name =id value="${user.id}" > 
                             </tr>   
                                
                            
                            </c:forEach>
                            <hr>
                            <tr>
                            <td><Strong>TOTAL</Strong></td>
							<td></td>
							<td><strong><c:set var="total" value="${0}"/>
								<c:forEach var="article" items="${cart}">
  								  <c:set var="total" value="${total + (article.price * article.prodQuan)}" />
								</c:forEach>
								<c:out value="${total} TL"></c:out>
								</strong></td>
                            </tr>
                            </tbody>
                          </table>
   
                          <div class="col-4">
                                <div class="card text-center mx-auto" style="width:520px; height: auto;overflow:hidden; background-color: #e9ecef">
                                        <form action="confirmedBuy" method="POST">
                                            <div class="form-group">
                                                <input name="NOC" type="text" class="form-control" placeholder="Name on Card" >
                                            </div>
                                            <div class="form-group">
                                                <input name="CCNO" type="text" class="form-control" placeholder="Credit Card Number"  >
                                            </div>
                        
                                            <div class="form-row">
                        
                                                <div class="form-group col">
                                                    <input type="text" class="form-control" placeholder="Expiration Date" >
                                                </div>
                                                <div class="col">
                                                    <input type="text" class="form-control" placeholder="Security Code">
                                                </div>
                                            </div>
                                            <input type="submit" value="Confirm" class="btn btn-primary"> 
            
                                        </form>
                                    </div>
                            </div>
                            <div class="checkbox checkbox-success">
                                    <input id="checkbox3" class="styled" type="checkbox" required>
                                    <label for="checkbox3">
                                        I accept the terms and conditions.
                                    </label>
                                </div>
                  </div>
            </div>
            <div class="col-md-auto">
            </div>
        </div>
        
    </div>
</body>

<script>document.getElementById("date").innerHTML = Date();</script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</html>