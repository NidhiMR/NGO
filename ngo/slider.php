


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="slider.css">
</head>
<body>
<header>
        <div class="container">
            <div class="logo">
                <img src="./imag/logo.png" alt="Logo">
                <h4 class="logotext">ImpactLink</h4>
            </div>
            <nav>
                <ul>
                    <li>
                        <a href="logged.html">Home</a>
                    </li>
                    <li>
                        <a href="logged.html">About Us</a>
                    </li>
                    <li>
                        <a href="don.html">Donation</a>
                    </li>
                    <li>
                        <a href="slider.php">Activities</a>
                    </li>
                    <li>
                        <a href="profil.php">Profile</a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>
<div class="slider">
<div class="list">
            <div class="item active">
                <img src="./imag/1.env.jpg">
                <div class="content">
                    <p>Activity Hours:4 Credits:3</p>
                    <h2>Forest Regeneration </h2>
                    
                    <p>Join us in our Forest Regeneration and Conservation Project as we work to restore degraded forest areas through tree planting . Lets combat deforestation and preserve biodiversity for future generations. Be a part of this vital initiative to create healthier forests and sustainable ecosystems.</p>

                </div>
            </div>
            <div class="item">
                    <img src="./imag/2.animals.jpg">
                    <div class="content">
                        <p>Activity Credits:4</p>
                        <h2>Animal Rescue and Rehabilitation </h2>
                        Join us in creating a safe haven for animals in need at the "Healing Paws" sanctuary. Our center provides a nurturing environment for injured, orphaned, or abused animals, offering them medical care, rehabilitation, and a chance at a new life. 
            </div></div>
            <div class="item">
                        <img src="./imag/3.kids.jpg">
                        <div class="content">
                            <p>Activity </p>
                            <h2>Children's Education Workshops</h2>
                            <p>Empower children through interactive learning experiences with our Children's Education Workshops! Engage with us as we provide hands-on sessions covering STEM, arts, and essential life skills. Join our initiative to inspire young minds and cultivate a lifelong love for learning.

                </div>
            </div>
            <div class="item">
                            <img src="./imag/4.money.jpg">
                            <div class="content">
                                <p>Activity Date:25/03/2024</p>
                                <h2>Fundraiser Run</h2>
                                <p>Join us for the "Hope for Tomorrow Charity Run," where every step you take will help us create a brighter future for those in need. Lace up your running shoes and join fellow supporters in a scenic run through the community, all while raising funds to support our education and healthcare initiatives for underprivileged children. </p>
                </div>
            </div>
            <div class="item">
                    <img src="./imag/5.elderly.jpg">
                    <div class="content">
                        <p>Activity</p>
                        <h2>Elderly Care Volunteer Program</h2>
                        <p>Join our Elderly Care Volunteer Program and make a difference in the lives of seniors. Offer companionship, assistance with daily tasks, and transportation services to elderly individuals. Your time and compassion can bring joy and comfort to those in their golden years.</p>

                </div>
            </div>
    </div>
</div>

<div class="arrows">
            <button id="prev"><</button>     
            <button id="next">></button>
</div>

<div class="thumbnail">
    <div class="item active">
        <img src="./imag/1.env.jpg">
        <div class="content" >
       <button activity_id="1" onclick="window.location.href='https://www.savegreen.in/savegreen/join-us.html';">Register</button>
         <!---<form method="POST" action="register_activity.php">
    <input type="hidden" name="username" value="<?php echo $_SESSION['user_username']; ?>">
    <input type="hidden" name="activity_id" value="1">
    <button type="submit" name="register">Register</button>
</form>------>
        </div>
    </div>   
    <div class="item">
        <img src="./imag/2.animals.jpg" >
        <div class="content" >
        <button activity_id="2" onclick="window.location.href='https://cupabangalore.org/volunteer/';">Register</button>
       <!--- <form method="POST" action="register_activity.php">
    <input type="hidden" name="username" value="<?php echo $_SESSION['user_username']; ?>">
    <input type="hidden" name="activity_id" value="2">
    <button type="submit" name="register">Register</button>
</form>------>
            
        </button>
        </div>
    </div> 
    <div class="item">
        <img src="./imag/3.kids.jpg">
        <div class="content" >
    <button activity_id="3" onclick="window.location.href='https://www.nmgct.org/volunteer.html';">Register</button>
    <!---<form method="POST" action="register_activity.php">
    <input type="hidden" name="username" value="<?php echo $_SESSION['user_username']; ?>">
    <input type="hidden" name="activity_id" value="3">
    <button type="submit" name="register">Register</button>
</form>------>
        
        </div>
    </div>
    <div class="item">
        <img src="./imag/4.money.jpg">
        <div class="content" >
        <button activity_id="4"onclick="window.location.href='https://www.indiarunning.com/events/pawathon--fundraiser-run-12394';">Register</button>
      <!-----  <form method="POST" action="register_activity.php">
        <form method="POST" action="register_activity.php">
    <input type="hidden" name="username" value="<?php echo $_SESSION['user_username']; ?>">
    <input type="hidden" name="activity_id" value="4">
    <button type="submit" name="register">Register</button>
</form> ------>
            
        </div>
    </div>
    <div class="item">
        <img src="./imag/5.elderly.jpg" >
        <div class="content" >
    <button activity_id="5" onclick="window.location.href='https://www.vtvo.org/pv';">Register</button>

    <!---<form method="POST" action="register_activity.php">
    <input type="hidden" name="username" value="<?php echo $_SESSION['user_username']; ?>">
    <input type="hidden" name="activity_id" value="5">
    <button type="submit" name="register">Register</button>
</form> ------> 
            
        </div>
    </div>
    </div>
    </div>
    <script src="app.js"></script>
</body>
</html> 
