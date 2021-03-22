<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 08/03/2021
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>carrello vuoto</title>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"> <link href="https://sorgentenatura.it/assets/css/bootstrap.min.css?_=1571731595" media="screen" rel="stylesheet" type="text/css">



    </script>
    <style>
        .img-responsive{border-radius: 10px 10px 0px 0px }
        .category-box-overlay{border-radius: 10px 10px 0px 0px }
        .category-box-overlay:hover{border-radius: 10px 10px 0px 0px }
        .logo{padding-left: 10px; float:left; margin-right:2%}
        .home{padding:16px; border:none; background-color: transparent; float:left; padding-left:2%;padding-right:2%; font-size: 16px; transition-duration: 0.3s; padding-bottom:17px; color: #48352C; font-weight:bold;}
        .home:hover { background-color: #4CAF50; color:white; border-radius:30px}
        .dropdown-menu-right{
            margin-right:30px;
        }
        .btn-primary{
            float:right;
            margin-right:15px;
            margin-top:10px;
            border:0px;
        }
        .btn:hover{
        }

        .example input[type=text] {
            padding-top: 10px;
            padding-bottom: 10px;
            font-size: 17px;
            border: 1px solid grey;
            float: left;
            background: #f1f1f1;
            width:186px;
            border-radius:20px 0px 0px 20px;
            margin-top: 6px;
            padding-left: 15px;
        }

        .example button {
            padding-left: 15px;
            padding-top: 10px;
            padding-bottom: 10px;
            padding-right: 15px;
            color: white;
            font-size: 17px;
            border: 1px solid grey;
            border-left: none;
            float:right;
            transition-duration: 0.3s;
            background: linear-gradient(to right,#1B5D2B, green);
            margin-top: 6px;
            border-radius:0px 20px 20px 0px
        }

        .example button:hover {
            background: linear-gradient(to right,blue, black 500%);
        }

        .example::after {
            content: "";
            clear: both;
            display: table;
        }
        .example{border:0px}

        .item{height:400px;}

        .dropdown-menu-right{
            margin-right:30px;
        }
        .btn-primary{
            float:left;
            margin-right:15px;
            margin-top:10px;
            border:0px;
        }
        .btn:hover{
        }
        .Agg{
            text-align:center;
            padding-top:15px;
        }
        .img-pad{
            text-align:center;
        }
        .search{ width:60%;

        }

        .stretch-card>.card {
            width: 100%;
            min-width: 100%
        }


        .owl-carousel .item img {
            display: block;
            width: 100%;

        }
        .row{margin-left:5%}

        .container1{
            margin-top:30px;
        }
        .imgProdotto{
            height:80px;
            width:80px
        }
        .category-box img {
            height: 149px;
        }
        .section-title {
            font-family: 'Montserrat', sans-serif;
            text-transform: uppercase;
            margin: 15px 0;
            padding: 15px 0;
            text-align: center;
            margin-left:-10%;
        }
        .price {
            font-size: 1.1em;
        }
        .banner-bottom {
            display: block;
            margin-bottom: 10px;
        }/* ricorda di aggiustare in evidenza*/
        .hello:hover{background-color:#F2A56F}

        @media screen and (max-width:1199px) {
            .row{width:100%}

            .category-box img {
                height: 203px;
                width:100%
            }
        }
        @media screen and (max-width:991px) {
            .row{width:100%
            }
            .category-box img {
                height: 294px;
                width:100%
            }
        }
        @media screen and (max-width:767px) {
            .row{width:100%
            }
            .category-box img {
                height: 206px;
                width:100%
            }
        }
        @media screen and (max-width:370px) {
            .row {
                width: 100%
            }

            .category-box img {
                height: auto;
                width: 100%
            }
        }

    </style>
</head>
<body>
<div style=" background: linear-gradient(to bottom, #4CAF50 1%, white );  border: solid; height:55px; border:0px"> <span class="logo">  <a href="/"><img src="https://primabio.farm/wp-content/uploads/2017/04/logoPRIMABIO1-300x138.png" style="height:50px "/> </a></span>
    <div> <a href="/"> <button class="home">HOME</button></a>
        <div> <a href="Prodotti"><button class="home"> PRODOTTI </button></a></div>
        <div><a href="km0"> <button class="home">KM 0</button></a>
        </div>
        <div> <a href="bevande"><button class="home"> BEVANDE </button></a></div>
    </div>
    <div> <a href="ProdottiOfferta"><button class="home"> OFFERTE </button></a></div>
    <div style="float:right; whigt:500px">
        <form class="example" action="ricerca" style="float:left;">
            <input type="text" placeholder="Search.." name="nome">
            <button type="submit"><img width="20" src="https://icon-library.com/images/white-magnifying-glass-icon/white-magnifying-glass-icon-11.jpg">
            </button>
        </form>
        <div style="float:right;"><a href="carrello"><button type="submit" class="home" type="submit" style="padding:12px;
          padding-bottom:12px; margin:0px;" style="padding:10px; padding-bottom:11px; borders:0px;">
            <img width="30" src="https://image.flaticon.com/icons/png/512/263/263142.png"></button></a></div>
    </div>
</div>
</div>
<br><br>
<div style="text-align:center"> <img width="40%" src="https://www.rphbuddy.com/public/img/empty-cart-2.png"> </div>
<br><br><br>
<div class="vuoto" style="text-align: center; font-weight:bold; font-size:25px"> Il carrello è vuoto </div>
<br><br><br>
<div style="text-align:center;"> <a href="Prodotti"><button class="hello" style="height: 50px;text-align: center; font-weight:bold; border-radius:30px;transition-duration: 0.3s;">TORNA ALLA PAGINA PRODOTTI</button></a></div>
    <br><br><br><br>

        <div style="width:100%; background:green; color: black; padding: 30px;  background: linear-gradient(to top, #4CAF50 50%, white );Margin-top:80px"> © Tutti i diritti riservati. Team Red anno 2021</div>
</body>
</html>
