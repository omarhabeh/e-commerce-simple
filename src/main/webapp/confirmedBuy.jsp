<!DOCTYPE html>
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
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="width:100%; margin-bottom: 5%">
        <a class="navbar-brand" style="font-family: 'Oswald', sans-serif;">Best Buy Quick Sell No Registration</a>
        <a class="navbar-brand" style="position: absolute;left: 50%;margin-left: -50px !important; display: block;" href="./index.jsp"><img src="./img/logo.png" width="40" height="40"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <ul class="nav navbar-nav"><span class="navbar-text"></span></ul>
            <form class="form-inline ml-auto">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-secondary my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>

    <div class="container-fluid text-center">
        <div class="row justify-content-md-center">
            <div class="col-md-auto">
            </div>
            <div class="col-md-auto">
                <div class="jumbotron" style="height: 35rem;">
                    <h1 class="display-4">Thank You for Your Purchase!</h1>
                    <h1 style="text-transform: uppercase;" >${NOC}</h1>
                    <p id="date"></p>
                    <hr class="my-4" height: auto;overflow:hidden;>

                    
                    <table class="table">
                           
                           <tbody>
                            <tr>
                            <h3 style="text-transform: uppercase;">The Payment was done with the card ending with ${CCNO%10000} </h3>
                            </tr>
                            
                            <tr>
                            <td><Strong>TOTAL</Strong></td>
							<td></td>
							<td><strong><c:set var="total" value="${0}"/>
								<c:forEach var="article" items="${cart}">
  								  <c:set var="total" value="${total + (article.price * article.prodQuan)}" />
								</c:forEach>
								<c:out value="${total}TL"></c:out>
								</strong></td>
                            </tr>
                            
                            </tbody>
                          </table>
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