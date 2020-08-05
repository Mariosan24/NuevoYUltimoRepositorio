<!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8" />
            <title>{{page_title}}</title>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <link rel="stylesheet" href="//code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
            <link rel="stylesheet" href="public/css/papier.css" />
            <link rel="stylesheet" href="public/css/estilo.css" />
            <link rel="stylesheet" href="public/css/estilosDash.css" />
            <script src="public/js/jquery.min.js"></script>
            {{foreach css_ref}}
                <link rel="stylesheet" href="{{uri}}" />
            {{endfor css_ref}}
        </head>
        <body>
            <div class="menu">
               <header>
               <nav class="main-nav">
               <img src="public/img/logocuba.png" alt="logo" class="logo">
                <ul>
                    {{if notifnum}}
                    <li><a href="index.php?page=notificacion">
                      <span class="ion-android-notifications">&nbsp;{{notifnum}}</span></a>
                    </li>
                    {{endif notifnum}}
                    {{foreach appmenu}}
                      <li><a href="index.php?page={{mdlprg}}">{{mdldsc}}</a></li>
                    {{endfor appmenu}}
                    <li><a href="index.php?page=home">Inicio</a></li>
                     <li><a href="index.php?page=info">Información</a></li>
                     <li><a href="index.php?page=consultas">Consultas</a></li>
                    <li><a href="ordenes.php">Agendar</a></li>
                    <li><a href="index.php?page=logout">Cerrar Sesión</a></li>
                </ul>
                </nav>
                </header>
            </div>
                
                <div class="hbtn"> <div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div></div>
            </div>
            <div class="contenido" style="background-color:#ECF0F1;">
                {{{page_content}}}
            </div>

            <footer>
            <div class="contenedor-footer">
                <div class="flex-hijo">
                    <img src="public/img/logocubafooter.png" alt="">
                </div>
                <div class="flex-hijo">
                    <div class="informacion">
                         <p>Dr. Juan Carlos Galindo Paz &copy; 2020
                        </br>Barrio La Trinidad, contiguo a Farmacia Marifer
                        </br>La Paz, La Paz
                        </br>Telefono: 504-220-5032 / 504-2240-8723
                        </br>Correo Electronico: clinicaCuba.hn@hotmail.com</p>
                    </div>
                </div>
            </div>
        </footer>
            {{foreach js_ref}}
                <script src="{{uri}}"></script>
            {{endfor js_ref}}
            <script>
              $().ready(function(e){
                $(".hbtn").click(function(e){
                  e.preventDefault();
                  e.stopPropagation();
                  $(".menu").toggleClass('open');
                  });
              });
            </script>
        </body>
    </html>
