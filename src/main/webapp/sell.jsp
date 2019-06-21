<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SDA Project</title>
    <link rel="icon" href="./img/logo.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
    <link rel="stylesheet" href="./css/sell.css">

</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="width:100%;">
        <a class="navbar-brand" style="font-family: 'Oswald', sans-serif;">Best Buy Quick Sell No Registration</a>
        <a class="navbar-brand" style="position: absolute;left: 50%;margin-left: -50px !important; display: block;" href="./index.jsp"><img src="./img/logo.png" width="40" height="40"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <ul class="nav navbar-nav"><li style ="list-style-type=none"><a class="btn btn-outline-dark" role="button" href ="confirm">CART</a></li></span></ul>
            <form class="form-inline ml-auto">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-secondary my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
    <div class="container-fluid">
    <form  action="welcome" method ="POST" enctype="multipart/form-data">
        <div class="row justify-content-md-center" style="height:700px">
            <div class="col-4">
                <div class="card text-center mx-auto" style="width: 18rem;">
                    <img class="card-img-top" src="./img/product.png" alt="Card image cap" id='pic'>
                    <div class="card-body">
                    <label for="label">Upload Your Product </label>
                        <input type="file"  accept="image/*" id="label" onchange="readURL(this);"name="UploadedPic">
                        <input class="form-control text-center" type="text" placeholder="Desciption" name="Desription">
                        <input class="form-control form-control-lg text-center" type="text" placeholder="Title" name="title">
                        <input class="form-control form-control-sm text-center" type="text" placeholder="Price" name="price">

                      
                    </div>
                </div>
            </div>
            <script>
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('#pic')
                            .attr('src', e.target.result)
                            .width(150)
                            .height(200);
                    };

                    reader.readAsDataURL(input.files[0]);
                    console.log(input.files[0].name);
                }
            }
            </script>
            
            <div class="col-4">
                    <div class="card text-center mx-auto" style="width: 30rem; height:32.5rem">
                            
                                <div class="form-row">
                                        <div class="form-row">
                                            <div class="col">
                                                <input type="text" class="form-control" placeholder="First name" name="fname">
                                            </div>
                                            <div class="col">
                                                <input type="text" class="form-control" placeholder="Last name" name="lname">
                                            </div>
                                        </div> 
                                    <div class="form-group col">
                                        <input type="email" class="form-control" placeholder="Email" name ="email">
                                    </div>
                                    <div class="col">
                                        <input type="text" class="form-control" placeholder="Phone Number" name="phoneNumber">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="1234 Main St" name ="address">
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-8">
                                        <input type="text" class="form-control" placeholder="City" name ="City" >
                                    </div>
                                    <div class="form-group col-md-4">
        
                                        <select id="inputState" class="form-control" name ="Country">
                                            <option selected>Serbia</option>
                                            <option selected>Macedonia</option>
                                            <option selected>Albania</option>
                                            <option selected>Canada</option>
                                            <option selected>Germany</option>
                                            <option selected>Norway</option>
                                            <option selected>Jordan</option>
                                            <option selected>Turkey</option>
                                            <option>...</option>
                                        </select>
                                    </div>
                                </div>
                <input type="submit" class="btn btn-primary" value="Apply">
                               
                            </form>
                        </div>
                   
            
            
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</html>