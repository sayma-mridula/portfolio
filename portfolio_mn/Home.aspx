<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="portfolio_mn.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="about">
    <div class="container">
        <div class="row">
            <div class="about-col-1">
               <img src="images/about.jpg">
            </div>
            <div class="about-col-2">
                 <h1>About Me</h1>
                 <p>Hey,I am currently enrolled third year first term in the Department of Computer Science and Engineering at Khulna University of Engineering & Technology, where I am actively pursuing my studies and exploring various aspects of the field.
                    I am proud to be part of the prestigious Khulna University of Engineering & Technology, where I am actively engaged in my coursetravelling and exploring various aspects of computer science.<br><br>
            As I progress through my academic career, I am developing a strong foundation in computer science principles and technologies. I look forward to further opportunities for learning and growth, with a keen interest in the dynamic and evolving field of computer science.
                 </p>
                
                 <div class="tab-titles">
                    <p class="tab-links active-link" onclick="opentab('skills')">Skills</p>
                    <p class="tab-links"onclick="opentab('experience')">Experience</p>
                    <p class="tab-links"onclick="opentab('education')">Education</p>
                 </div>
                 <div class="tab-contents active-tab" id="skills">
                    <ul>
                        <li><span>Web Development</span><br>html,css,js,php</li>
                        <li><span>App Development</span><br>java,kotlin</li>
                        <li><span>Database System</span><br>oracle,mySql</li>
                    </ul>
                 </div>
                 <div class="tab-contents" id="experience">
                    <ul>
                        <li><span>video editing</span><br>video and all</li>
                        <li><span>App Development</span><br>Building Android/IOS ap</li>
                        <li><span>Web Development</span><br>Designing web site</li>
                    </ul>
                 </div>
                 <div class="tab-contents" id="education">
                    <ul>
                        <li><span>Undergrad In CSE</span><br>KUET</li>
                        <li><span>HSC</span><br>Rangpur Govt College</li>
                        <li><span>SSC</span><br>Police Lines School & College</li>
                    </ul>
                 </div>

             </div>

        </div>
    </div>

</div>
<!-- ----services---- -->
 <div id="services">
        <div class="container">
            <h1 class="sub-title">My Services</h1>
            <div class="services-list">
                <asp:Repeater ID="ServicesRepeater" runat="server">
                    <ItemTemplate>
                        <div>
                            <i class='<%# Eval("Icon") %>'></i>
                            <h2><%# Eval("Title") %></h2>
                            <p><%# Eval("Details") %></p>
                            <a href="#">Learn more</a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
<!-- --------------- portfolio ------------------- -->
<div id="portfolio">
    <div class="container">
        <h1 class="sub-title">My Work</h1>
        <div class="work-list">

            <div class="work">
                <!--tangtadaang-->

                <img src="images/school.avif">\

                <div class="layer"></div>
                <h3>Student Management System</h3>
                <p>Visit Website</p>
                <a href="#"><i class="fa-solid fa-link"></i></a>

            </div>
            <div class="work">
                <img src="images/ojp.jpg">
                <div class="layer"></div>
                <h3>Online Job Portal/h3>
                <p>Visit Website</p>
                <a href="#"><i class="fa-solid fa-link"></i></a>

            </div>
            
            <div class="work">
                <img src="images/hotel.avif">
                <div class="layer"></div>
                <h3>Online Hotel Booking</h3>
                <p>Visit Website</p>
                <a href="#"><i class="fa-solid fa-link"></i></a>

            </div>
            </div>
        </div>
        <a href="#" class="btn">See more</a>
    </div>
</div>


                    <!--Contact-->
    <div id="contact">
        <div class="container">
            <div class="row">
                <div class="contact-left">
                    <h1 class="sub-title">Contact Me</h1>
                    <p><i class="fa-solid fa-paper-plane"></i>saymamridula521@gmail.com</p>
                    <p><i class="fa-solid fa-phone"></i>01751045687</p>
                    <div class="social-icons">
                        <a href="https://www.facebook.com/sayma.mushsharat?mibextid=ZbWKwL"><i class="fa-brands fa-facebook"></i></a>
                        <a href="https://www.instagram.com/mridula_sayma?igsh=MWh2ZnZ5bm1wcHhoeA=="><i class="fa-brands fa-twitter-square"></i></a>
                        <a href="https://www.instagram.com/mridula_sayma?igsh=MWh2ZnZ5bm1wcHhoeA=="><i class="fa-brands fa-instagram"></i></a>
                        <a href="https://www.facebook.com/sayma.mushsharat?mibextid=ZbWKwL"><i class="fa-brands fa-linkedin"></i></a>
                    </div>
                    <a href="images/SQL Notes.pdf"download class="btn btn2">Download CV</a>
                </div>


                <div class="contact-right">
         
        <div>
            <label for="txtName">Your Name:</label>
            <asp:TextBox ID="txtName" runat="server" placeholder="Your Name" CssClass="form-control" Required="true"></asp:TextBox>
        </div>
        <div>
            <label for="txtEmail">Your Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" type="email" placeholder="Your Email" CssClass="form-control" Required="true"></asp:TextBox>
        </div>
        <div>
            <label for="txtMessage">Your Message:</label>
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="6" placeholder="Your Message" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
        </div>
    

                    
                </div>
            </div>
        </div>
    </div>







                    
              






    <style>
        *{
    margin: 0;
    padding: 0;
    font-family: Arial, Helvetica, sans-serif;
    box-sizing: border-box;
}
html{
    scroll-behavior: smooth;
}
body{
    background: #080808 ;
    color: #fff ;
}

#header{
    width: 100%;
    height:95vh;
    
    background-image: url(images/);
    background-size: 100%;
    background-position: center;
}
.container{
    padding:5% 5% 5% 5%;
}
nav{
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-wrap: wrap;
    
}

.logo{
    width: 80px ;
    height: 60px;
}
nav ul li{
    display: inline-block;
    list-style: none;
    margin: 10px 20px;
}
nav ul li a{
    color: #b8a1b3;
    text-decoration: none;
    font-size: 18px;
    position: relative;
}
nav ul li a::after{
    content: '';
    width: 0;
    height: 3px;
    background: #ff004f;
    position: absolute;
    left: 0;
    bottom: -6px;
    transition: 0.5s;
}
nav ul li a:hover::after{
    width: 100%;
}
.header-text{
    margin-top: 20%;
    font-size: 30px;
}
.header-text h1{
    font-size: 60px;
    margin-top: 40px;
}
.header-text h1 span{
    color: #ff004f;

}
/*-------------about------------*/
#about{
    padding: 150px 0;
    color: #b1baba;
}
.row{
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
}
.about-col-1{
    flex-basis:35%;
}
.about-col-1 img{
    width: 100%;
    border-radius: 15px;
}
.about-col-2{
    flex-basis: 60%;
}
.sub-title{
    font-size: 60px;
    font-weight: 600;
    color: white;
}
.tab-titles{
    display: flex;
    margin: 20px 0 40px;

}
.tab-links{
    margin-right: 50px;
    font-size:18px ;
    font-weight: 505;
    cursor: pointer;
    position: relative;
}
.tab-links::after
{
content: '';
width: 0;
height: 3px;
background: #ff004f;
position: absolute;
left: 0;
bottom: -8px;
transition: 00.5s;
}
.tab-links.active-link::after{
    width: 50%;
}
.tab-contents ul li{
    list-style: none;
    margin: 10 px 0;
}.tab-contents ul li span{
    color: #b54769;
    font-size: 14px;
}
.tab-contents{
    display: none;
}
.tab-contents.active-tab{
    display: block;
}
/*--------services--------*/

#services{
    padding: 30px 0 ;
}
.services-list{
    display: grid;
    grid-template-columns: repeat(auto-fit,minmax(250px,1fr));
    grid-gap:40px;
    margin-top: 50px;

}
.services-list div{
    background: #353133;
    padding: 10px;
    font-size: 13px;
    font-weight:300 ;
    border-radius: 10px;
    transition: transform 0.5s;
}
.services-list div i{
    font-size: 50px;
    margin-bottom:30px;
    

}
.services-list div h2{
    font-size: 30px;
    font-weight: 500;
    margin-bottom:15px;
}
.services-list div a{
    text-decoration: none;
    color: #fff;
    font-size: 12px;
    margin-top: 20px;
    display: inline-block;
}



.services-list div:hover{
    background: #ff004f;
    transform: translateY(-10px);
}

#portfolio{
    padding: 50px 0;
}
.work-list{
    display: grid;
    grid-template-columns: repeat(auto-fit,minmax(250px,1fr));
    grid-gap:40px;
    margin-top: 50px;
}
.work{
    border-radius: 10px;
    position: relative;
    overflow: hidden;
}
.work img{
    width: 100%;
    border-radius: 10px;
    display: block;
    transition: transform 0.5s;
}
.layer{
    width: 100%;
    height: 00%;
    background: linear-gradient(rgba(0,0,0,0.6),#ff004f);
    border-radius: 10px;
    position: absolute;
    left: 0;
    bottom: 0;
    overflow: hidden;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    padding: 0 40px;
    text-align: center;
    font-size: 14px;
}
.layer h3{
    font-weight: 500;
    margin-bottom: 20px;
}
.layer a{
    margin-top:20px;
    color:#ff004f;
    text-decoration: none;
    font-size: 18px;
    line-height:60px;
    background:#fff;
    width: 60px;
    height: 60px;
    border-radius: 50%;
    text-align: center;
}
.work:hover img{
    transform: scale(1.1);

}
.work:hover .layer{
    height: 90%;
}
.btn{
    display: block;
    margin: 20px auto;
    height: auto;
    width: fit-content;
    border:1px solid #ff004f ;
    padding: 14px 50 px;
    border-radius: 2px;
    text-decoration: none;
    color: #fff;
    transition: 0.5s;

}

.btn:hover{
    background: #ff004f;

}
/*---------contact--------*/
.contact-left{
    flex-basis: 35%;

}
.contact-right{
    flex-basis: 60%;
}
.contact-left p{
    margin-top: 30px;
}
.contact-left p i{
    color:#ff004f;
    margin-right: 15px;
    font-size: 25px;
}
.social-icons{
    margin-top: 30px;
    ;
}
.social-icons a{
    text-decoration: none;
    font-size: 30px;
    margin-right: 15px;
    color:#ababab;
    display: inline-block;
    transition: 0.5s;

}
.social-icons a:hover{
    color: #ff004f;
    transform: translateY(-5px);
}
.btn.btn2{
    display: inline-block;
    background: #ff004f;
    height: 40px;
    width: 100px;
}
.contact-right form{
    width: 100%;
}
form input,form textarea{
    width: 100%;
    border: 0;
    outline: none;
    background: #262626;
    margin: 15px 0;
    color: #fff;
    font-size: 18px;
    border-radius: 6px;
}
form .btn2{
    padding: padding 14px 60px;
    font-size: 18px;
    margin-top: 20px;
    cursor:pointer;

}

nav .fa-solid{
    display: none;
}


@media only screen and (max-width:600px)
{
    #header{
        background-image: url(images/mini.jpg);
    }
    .header-text{
        margin-top: 100%;
        font-size: 16px;

    }
    .header-text h1{
        font-size: 30px;
    }
    nav .fa-solid{
        display: block;
    }
    nav ul{
        background: #ff004f;
        position:fixed;
        top: 0;
        right: -200px;
        width: 200px;
        height: 100vh;
        padding-top:50px ;
        z-index: 2;
        transition: 0.5s;
    }
    nav ul li{
        display: block;
        margin: 25px;
    } 
     nav ul .fa-solid{
        position: absolute;
        top: 25px;
        left: 25px;
        cursor: pointer;
    }
    .sub-title{
        font-size: 40px;
        
    }
    .about-col-1, .about-col-2{
        flex-basis: 100%;
    }
    .about-col-1{
        margin-bottom:30px ;
    }
    .about-col-2{
        font-size: 14px;
    }
    .tab-links{
        font-size: 16px;
        margin-right: 20px;
    }
    .contact-left,.contact-right{
        flex-basis: 100%;
    } 
}
    </style>

    <script>
    var tablinks=document.getElementsByClassName("tab-links");
    var tabcontents=document.getElementsByClassName("tab-contents");

    function opentab(tabname){
        for(tablink of tablinks)
        {
            tablink.classList.remove("active-link");
        }
        for(tabcontent of tabcontents)
        {
            tabcontent.classList.remove("active-tab");
        }
        event.currentTarget.classList.add("active-link");
        document.getElementById(tabname).classList.add("active-tab");
    }

</script>
<script>
    var sidemeu = document.getElementById("sidemenu");
    function openmenu() {
        sidemeu.style.right = "0";
    }
    function closemenu() {
        sidemeu.style.right = "-200px";
    }
</script>







   
    
</asp:Content>






                    
              






   