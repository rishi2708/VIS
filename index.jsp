<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page errorPage="errorPage.jsp" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Home</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
        <link rel="stylesheet" href="css/styles.css" />
        <link rel="stylesheet" href="css/home.css" />
        <link rel="stylesheet" href="css/team.css" />
    </head>
    <body>

        <%-- Loader --%>
        <c:import url="includes/loader.jsp" />


        <!-- Navbar -->
        <c:import url="includes/header.jsp" />


        <div id="welcomeCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="5000">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/carousel-image-1.jpg" class="d-block w-100 object-fit-cover img-carousel" alt="Register">
                    <div class="carousel-caption-1">
                        <div class="typewriter">
                            <p><a href="registerVehicle.jsp" class="text-decoration-none text-warning">Register</a> a new vehicle.</p>                        
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/carousel-image-2.jpg" class="d-block w-100 object-fit-cover img-carousel" alt="Purchase">
                    <div class="carousel-caption-2">
                        <div class="typewriter">
                            <p><a href="purchaseVehicle.jsp" class="text-decoration-none text-warning">Purchase</a> a vehicle.</p>                        
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#welcomeCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#welcomeCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>


        <section id="team" class="text-center">
            <h1 class="mb-5">Our Team</h1>
            <div class="ourteam">
                <div class="team-container">
                    <div class="wrapper">
                        <img src="images/sahil.jpg" alt="Sahil" class="team-profile" onclick=addActive(this) />
                        <div class="title">
                            Sahil Kesarwani
                        </div>
                        <div class="place">
                            Prayagraj, Uttar Pradesh
                        </div>
                    </div>
                    <div class="content">
                        <p>
                            User Interface Designer and <br>Full Stack developer
                        </p>
                        <div class="buttons row">
                            <div class="col-1"></div>
                            <div class="col-4 me-auto">
                                <button class="btn btn-secondary">Message</button>
                            </div>
                            <div class="col-4 ms-auto">
                                <button class="btn btn-warning">Follow</button>
                            </div>
                            <div class="col-1"></div>
                        </div>
                    </div>
                    <div class="icons">
                        <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                        <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                        <li><a href="#"><span class="fab fa-instagram"></span></a></li>
                    </div>
                </div>
                <div class="team-container">
                    <div class="wrapper">
                        <img src="images/rishi.jpg" alt="Rishi" class="team-profile" onclick=addActive(this) />
                        <div class="title">
                            Rishi Singhal
                        </div>
                        <div class="place">
                            Prayagraj, Uttar Pradesh
                        </div>
                    </div>
                    <div class="content">
                        <p>
                            User Interface Designer and <br>Front-end developer
                        </p>
                        <div class="buttons row">
                            <div class="col-1"></div>
                            <div class="col-4 me-auto">
                                <button class="btn btn-secondary">Message</button>
                            </div>
                            <div class="col-4 ms-auto">
                                <button class="btn btn-warning">Follow</button>
                            </div>
                            <div class="col-1"></div>
                        </div>
                    </div>
                    <div class="icons">
                        <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                        <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                        <li><a href="#"><span class="fab fa-instagram"></span></a></li>
                    </div>
                </div>
            </div>
        </section>


        <c:import url="includes/footer.jsp" />


    </body>
    <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="js/script.js"></script>
</html>
