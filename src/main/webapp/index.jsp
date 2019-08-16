<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Sign-Up/Login Form</title>
    <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=PT+Serif" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
</head>
       
       <style type="text/css">
            *, *:before, *:after {
              -webkit-box-sizing: border-box;
                      box-sizing: border-box;
            }

            html {
              overflow-y: scroll;
            }

            body {
              background: #c1bdba;
                font-family: 'PT Serif', serif'';
            }

            a {
              text-decoration: none;
                color: black;
              -webkit-transition: .5s ease;
              transition: .5s ease;
            }
            a:hover {
              color:#3498DB;
            }

            .form {
              background:white;
              padding: 40px;
              max-width: 600px;
              margin: 40px auto;
              border-radius: 4px;
              -webkit-box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
                      box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
            }

            .tab-group {
              list-style: none;
              padding: 0;
              margin: 0 0 40px 0;
            }
            .tab-group:after {
              content: "";
              display: table;
              clear: both;
            }
            .tab-group li a {
              display: block;
              text-decoration: none;
              padding: 15px;
              background:white;
              color:black; 
              font-size: 20px;
              float: left;
              width: 50%;
              text-align: center;
              cursor: pointer;
              -webkit-transition: .5s ease;
              transition: .5s ease;
            }
            .tab-group li a:hover {
              background: deepskyblue;
              color: black;
            }
            .tab-group .active a {
              background:deepskyblue;
              color: #ffffff;
              font-family: 'PT Serif', serif'';
            }

            .tab-content > div:last-child {
              display: none;
            }

            h1 {
              text-align: center;
              color: deepskyblue;
              font-weight: 300;
              margin: 0 0 40px;
              font-family: 'PT Serif', serif;
            }

            label {
              position: absolute;
              -webkit-transform: translateY(6px);
                      transform: translateY(6px);
              left: 10px;
              color:#6d6c6c;
              -webkit-transition: all 0.25s ease;
              transition: all 0.25s ease;
              -webkit-backface-visibility: hidden;
              pointer-events: none;
              font-family: 'PT Serif', serif;
              font-size: 15px;
            }
            label .req {
              margin: 4px;
              color: black;
            }

            label.active {
              font-family: 'PT Serif', serif;
              -webkit-transform: translateY(50px);
                      transform: translateY(50px);
              left: 2px;
              font-size: 10px;
            }
            label.active .req {
              opacity: 0;
            }

            label.highlight {
              color:deepskyblue ;
            }

            input, textarea {
              font-size: 16px;
              display: block;
              font-family: 'PT Serif', serif;
              width: 100%;
              height: 100%;
              padding: 10px 10px;
              background: none;
              background-image: none;
              border: 2px solid #b0bec5;
              color:black;
              border-radius: 0;
              -webkit-transition: border-color .25s ease, -webkit-box-shadow .25s ease;
              transition: border-color .25s ease, -webkit-box-shadow .25s ease;
              transition: border-color .25s ease, box-shadow .25s ease;
              transition: border-color .25s ease, box-shadow .25s ease, -webkit-box-shadow .25s ease;
            }
            input:focus, textarea:focus {
              outline: 0;
              border-color: deepskyblue;
            }

            textarea {
              border: 2px solid #a0b3b0;
              resize: vertical;
            }

            .field-wrap {
              position: relative;
              margin-bottom: 40px;
            }

            .top-row:after {
              content: "";
              display: table;
              clear: both;
            }
            .top-row > div {
              float: left;
              width: 48%;
              margin-right: 4%;
            }
            .top-row > div:last-child {
              margin: 0;
            }

            .button {
              border: 1px solid;
              font-family: 'PT Serif', serif;
              border-color: deepskyblue;
              outline: none;
              border-radius: 0;
              padding: 15px 0;
              font-size: 2rem;
              font-weight: 300;
              text-transform: uppercase;
              letter-spacing: .1em;
              background:white;
              color: black;
              -webkit-transition: all 0.5s ease;
              transition: all 0.5s ease;
              -webkit-appearance: none;
            }
            .button:hover, .button:focus {
              background: deepskyblue;
            }

            .button-block {
              display: block;
              width: 100%;
              font-size:15px;
            
             
            }

            .forgot {
            font-family: 'PT Serif', serif;
              margin-top: -20px;
              text-align: right;
            }
    
    </style>
    
       
       <body>   
        <div class="form">
           
            
            <div id="login">
            <form action ="" method="post"> <br/>
                <h1>Log in to continue</h1>
                                    <div class="field-wrap">
                        <label>User Name<span class="req">*</span></label>
                        <input type="text" name="username" required autocomplete="off" /><br>
                        
                   <br><br>
                        
                        <label>	Enter Your Password<span class="req">*</span></label>
                        <input type="password" name="password" required autocomplete="off" /><br>
                    </div>
                    
                    <input type="submit" value="Submit">
                </form><br><br>
                  
                <br><br>
                
                
        </div>
       
        </div>
        </body>
    </html>
  
     
  
