<%@ page import="teamred.bio.model.Carrello" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 10/03/2021
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>carrello</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://sorgentenatura.it/assets/css/bootstrap.min.css?_=1571731595" media="screen" rel="stylesheet"
          type="text/css">
    <link href="https://sorgentenatura.it/assets/css/style.css?_=1610961818" media="screen" rel="stylesheet"
          type="text/css">
    <link href="https://sorgentenatura.it/assets/css/bootstrap.min.css?_=1571731595" media="screen" rel="stylesheet"
          type="text/css">
    <link href="https://sorgentenatura.it/assets/css/style.css?_=1610961818" media="screen" rel="stylesheet"
          type="text/css">

    <style>

        .logo {
            padding-left: 10px;
            float: left;
            margin-right: 2%;
            outline: none;
        }

        .home {
            padding: 16px;
            border: none;
            background-color: transparent;
            float: left;
            padding-left: 2%;
            padding-right: 2%;
            font-size: 16px;
            transition-duration: 0.3s;
            padding-bottom: 17px;
            color: #48352C;
            font-weight: bold;
            outline: none;
        }

        .home:hover {
            background-color: #4CAF50;
            color: white;
            border-radius: 30px;
            outline: none;
        }

        .btn:hover {
        }

        .example input[type=text] {
            padding-top: 10px;
            padding-bottom: 10px;
            font-size: 17px;
            border: 1px solid grey;
            float: left;
            background: #f1f1f1;
            width: 186px;
            border-radius: 20px 0px 0px 20px;
            margin-top: 6px;
            padding-left: 15px;
            outline: none;
        }

        .example button {
            padding: 10px 15px 10px 15px;
            color: white;
            font-size: 17px;
            border: 1px solid grey;
            border-left: none;
            float: right;
            transition-duration: 0.3s;
            background: linear-gradient(to right, #1B5D2B, green);
            margin-top: 6px;
            border-radius: 0px 20px 20px 0px;
            outline: none;
        }

        .example button:hover {
            background: linear-gradient(to right, blue, black 500%);
        }

        .example::after {
            content: "";
            clear: both;
            display: table;
        }

        .btn:hover {
        }

        .stretch-card > .card {
            width: 100%;
            min-width: 100%
        }

        .owl-carousel .item img {
            display: block;
            width: 100%;

        }

        .row {
            margin-left: 5%
        }

        .container1 {
            margin-top: 30px;
        }

        .imgProdotto {
            height: 80px;
            width: 80px
        }

        .category-box img {
            height: 149px;
        }

        .contenuto {
            height: 1200px;
            font-size: 17px;
        }

        @media screen and (max-width: 1199px) {
            .row {
                width: 100%
            }

            .category-box img {
                height: 203px;
                width: 100%
            }
        }

        @media screen and (max-width: 991px) {
            .row {
                width: 100%
            }

            .category-box img {
                height: 294px;
                width: 100%
            }
        }

        @media screen and (max-width: 767px) {
            .row {
                width: 100%
            }

            .category-box img {
                height: 206px;
                width: 100%
            }
        }

        @media screen and (max-width: 370px) {
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
<% List<Carrello> carrello = (List<Carrello>) request.getAttribute("listaCarrello");%>
<%double prezzoTotale= 0.0;%>

<div style=" background: linear-gradient(to bottom, #4CAF50 1%, white );  border: solid; height:55px; border:0px"><span
        class="logo"> <a href="/"> <img src="https://primabio.farm/wp-content/uploads/2017/04/logoPRIMABIO1-300x138.png" style="height:50px "/> </a></span>
    <div><a href="/">
        <button class="home">HOME</button>
    </a></div>
    <div><a href="Prodotti">
        <button class="home"> PRODOTTI</button>
    </a></div>
    <div><a href="km0">
        <button class="home">KM 0</button>
    </a></div>
    <div><a href="bevande">
        <button class="home"> BEVANDE</button>
    </a></div>
    <div><a href="ProdottiOfferta">
        <button class="home"> OFFERTE</button>
    </a></div>
    <div style="float:right; whigt:500px">
        <form class="example" action="ricerca" style="float:left;">
            <input type="text" placeholder="Search.." name="nome">
            <button type="submit"><img width="20" src="https://icon-library.com/images/white-magnifying-glass-icon/white-magnifying-glass-icon-11.jpg">
            </button>
        </form>
        <div style="float:right;"><a href="<%if(carrello.isEmpty()){%>
            deleteall
       <% } else  {%>
            carrello
            <%}%>">
            <button type="submit" class="home" type="submit" style="padding:12px;
          padding-bottom:12px; margin:0px;" style="padding:10px; padding-bottom:11px; borders:0px;">
                <img width="30" src="https://image.flaticon.com/icons/png/512/263/263142.png"></button>
        </a></div>
    </div>
</div>
</div>

<div class="contenuto">
    <div class="container">
        <div class="row">
            <div class="col-sm-5">
                <h1 style="color:green">Carrello</h1>
            </div>
        </div>
    </div>


    <div class="container container1">
        <div class="row">
            <div class="col-xs-12">
                <table class="table">
                    <thead>
                    <tr>
                        <th></th>
                        <th>Prodotto</th>
                        <th></th>
                        <th>Quantità</th>
                        <th>Prezzo</th>
                        <th>Totale</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <%for (Carrello c: carrello)
                        {
                        %>
                        <td>
                                <form action="delete" method="get">
                                <button class="trash" style="margin-right:10px;margin-top:20px;" type="submit" name="IDProdotto" value="<%=c.getIDProdotto()%>"/>
                                <img src="https://www.shareicon.net/data/256x256/2016/03/15/734059_tool_512x512.png"
                                     height="30">
                                </form>

                        </td>
                        <td>
                            <div class="imgProdotto"><img style="height:95%; width:95%" src="<%=c.getProdotto().getImmagine()%>">
                            </div>
                        </td>

                        <!-- metti le tabelle da qui-->
                        <td> <%=c.getProdotto().getNomeProdotto()%></td>
                        <td> <form action="modificacarrello" method="get">
                            <input type="hidden" value="1" name="id" />
                            <label for="quantita"></label>
                            <input type="number" id="quantita" name="quantita" min="1" max="100" value="<%=c.getQuantita()%>">
                            <input type="submit" value="Modifica">
                        </form> </td>
                        <td><%if(c.getProdotto().getPrezzoScontato()!=null) {%>
                            prezzo <%=c.getProdotto().getPrezzoScontato()*c.getQuantita()%>
                            <%prezzoTotale+=c.getProdotto().getPrezzoScontato()*c.getQuantita();%>
                            <%} else { %>
                            <%=c.getProdotto().getPrezzoProdotto()*c.getQuantita() %>
                            <%prezzoTotale+=c.getProdotto().getPrezzoProdotto()*c.getQuantita();%>
                            <% }%></td>
                        <td></td>
                    </tr>
                    <%}%>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><%=prezzoTotale%></td>
                    </tr>



                    <tr>
                        <td>
                            <form action="deleteall" method="get">
                                <button type="submit" name="" value="">Svuota Carrello</button>
                            </form>


                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <a href="/fattura"> <button type="button" class="btn">Acquista</button></a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<div style="width:100%; background:green; color: black; padding: 30px;  background: linear-gradient(to top, #4CAF50 50%, white );">
    © Tutti i diritti riservati. Team Red S.r.l. - Via Generation, 27 - Bari(BA) - Gaetano Di Rocco, Pierfrancesco Di
    Tommaso, Simone Giunta, Giulia Mazzarella -
</div>

</body>
</html>
