<!DOCTYPE html> 
  <html> 
    <head>                 
      
      <link rel = "icon" href = "https://www.kpriet.ac.in/asset/frontend/images/logo/logo-footer-color.png" type = "image/x-icon">
 <style type="text/css">
  .sample{
          width:40%;
          height:40px;
          margin-left: 90px;
          margin-top: 10px;
        }
        .sb{
          width:30%;
          height:40px;
          display:block; 
          margin-left:auto;
          margin-right:auto;
        }

        /* Darker background on mouse-over */
        .btn:hover {
            background-color: red;
            }
      body{
    width: 100%;
    min-height: 100vh;
    background: black;
    background-image: url("https://news.harvard.edu/wp-content/uploads/2021/06/Article_Public_Intererst_Tech_lab_2500x1667-1200x800.png");
 background-repeat: no-repeat;
 background-size:cover; 
 background-position: center center;
 overflow: hidden;
}


nav li{
    display: inline-block;
    margin: 10px 20px;
    font-weight: 600;
    margin-right: 300px;
}

div.linebox{
    width:100%;
    margin:100px auto 0px auto;
    display: flex;
}
h2{
    text-align: center;
    font-family: sans-serif;
    font-size: 45px;
    margin-bottom: 1%;
    letter-spacing: 8px;
    color:greenyellow;
}

div.line{
    background-color: rgba(0,0,0,0.7);
    border-radius:50px;
    border:3px solid chartreuse;
    box-shadow: 2px 2px 15px
    rgba(0,0,0,1);
    color:#fff;
    margin-top: 1%;
    margin-left: 25%;
    
}
linebox{
    margin:20px;
}
label {
    font-family: sans-serif;
    font-size: 20px;
    font-style: italic;
}

.Submit>button{

    font-size: 15px;
    font-weight: bold;
    font-family: sans-serif;
    background-color: red;
    margin-left:200px;
    display: inline-block;
    color:gold;
    text-align: center;
    padding: 10px 10px;
    
}
div.Submit>button:hover{
    background:blue;
    padding: 8px 8px;
}


@media screen and (max-width:576px) {
    div.line{
        margin-top: 55%;
        margin-left: 10%;
        margin-bottom: auto;
    }
        
}
 
 </style>       
    </head>
    <header>
        <link rel = "icon" href = "https://www.kpriet.ac.in/asset/frontend/images/logo/logo-footer-color.png" type = "image/x-icon"> 
        
      </header>
 
    <body>
      <div class="linebox">
        <div class="line">
        <h2 style="font-size: 300%;" class="text-warning text-center pt-20">KPRIET LAB</h2>
          <form action="login" method="post">
            <input 
                     type="text" 
                     class="sample" 
                     name="username"        
                     placeholder="Mail ID"
                     size="60";
                     height="100px">   <br>
            <br>
            <input 
                     type="password" 
                     class="sample" 
                     name="password" 
                     placeholder="Password">  <br>
            <br>
            <div class="Submit">
            <button type="Submit">Sign in</button>
            </div>
            
          </form>
        </div>
      </div>
    </body>
    </html>