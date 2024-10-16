<?php require "./include/header.php";
?>
<style>
     .notifications {
	position: fixed;
	top: 30px;
	right: 20px;
    z-index: 50;
}
.toast{
    position: relative;
    padding: 10px;
    margin-bottom: 10px;
    color: #fff;
    width: 400px;
    display: grid;
    grid-template-columns: 70px 1fr 70px;
    border-radius: 5px;
    --color: #0abf30;
    background-image: linear-gradient(to right, #0abf3055, #22242F 30%);
    animation: show_toast 0.3s ease forwards;
}
.toast i{
    color: var(--color);
}
.toast .title{
    font-size: x-large;
    font-weight: bold;
}
.toast i{
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: x-large;
}
.toast span,
.toast .close{
    opacity: 0.6;
    color: #fff
}

@keyframes show_toast {
	0% {
		transform: translateX(100%);
	}
	40% {
		transform: translateX(-5%);
	}
	80% {
		transform: translateX(0%);
	}
	100% {
		transform: translateX(-10%);
	}
}
.toast::before{
    position: absolute;
    bottom: 0;
    left: 0;
    background-color: var(--color);
    box-shadow: 0 0 10px var(--color);
    content: '';
    width: 100%;
    height: 3px;
    animation: timeOut 5s linear 1 forwards;
}
@keyframes timeOut{
    to{
        width: 0%;  
    }
}
/* error */
.toast.error{
   --color: #f24d4c;
   background-image: linear-gradient(to right, #f24d4c55, #22242F 30%);
}
.progress-label-left
{
    float: left;
    margin-right: 0.5em;
    line-height: 1em;
}
.progress-label-right
{
    float: right;
    margin-left: 0.3em;
    line-height: 1em;
}
.star-light
{
	color:#e9ecef;
}
.text-warning {
    color: #ffc107 !important;
}
@media (max-width: 600px) {
    .toast{
        width: 300px !important;
    }
}
</style>
        <div class="carousel">
            <!-- list item -->
            <div class="list">
                <!-- item 1 -->
                <div class="item" data-slide="1">
                    <img src="./icon_wed/01.png">
                    <div class="content">
                        <div class="author">JULY</div>
                        <div class="title">SILVER JEWELERY</div>
                        <div class="topic">RING</div>
                        <div class="des">
                            <!-- lorem 50 -->
                            The ring is made from high-quality S925 silver with a fragrant design that makes women attractive and attractive, very suitable for you when going out, going down the street and even going to work. Combine it with an outfit. Favorite and automatically perform the steps you love!
                        </div>
        
                    </div>
                </div>
                <!-- item 2 -->
                <div class="item" data-slide="2">
                    <img src="./icon_wed/02.png">
                    <div class="content">
                        <div class="author">JULY</div>
                        <div class="title">SILVER JEWELERY</div>
                        <div class="topic">NECKLACE</div>
                        <div class="des">
                            You will not only look more pretty and elegant when wearing this silver necklace with a unique mermaid design, but also show off your very own aesthetic taste. Imagine how charming and attractive you will be when you wear this necklace to work, on a date or out with friends. It is made from specialized 925 silver, highlighted by high-quality Cubic Zirconia stones and meticulously crafted by skilled artisans. Let's go out and shine with her!!
                        </div>
                        
                    </div>
                </div>
                <!-- item 3 -->
                <div class="item" data-slide="3">
                    <img src="./icon_wed/03.png">
                    <div class="content">
                        <div class="author">JULY</div>
                        <div class="title">SILVER JEWELERY</div>
                        <div class="topic">BRACELET</div>
                        <div class="des">
                            The bracelet is made of S925 silver studded with Cubic Zirconia with a starlight rabbit design, bringing charm and elegance to you. Surely this bracelet will be one of the most worthy items in your jewelry cabinet!
                        </div>
                       
                    </div>
                </div>
                <!-- item 4 -->
                <div class="item" data-slide="4">
                    <img src="./icon_wed/04.png">
                    <div class="content">
                    <div class="author">JULY</div>
                        <div class="title">SILVER JEWELERY</div>
                        <div class="topic">EARRING</div>
                        <div class="des">
                        The earrings are made from S925 silver and studded with high-quality Cubic Zirconia stones. It is one of the most beautiful earring models today, with a design that is the perfect choice for you in formal party outfits and is an indispensable piercing for those who have pierced earrings. Do you want to dress up as a gorgeous princess with her?
                        </div>
                        
                    </div>
                </div>
            </div>
        
            <!-- thumbnail -->
            <div class="arrows-thumbnail">
                <div class="arrows arrows-next"><button id="next">></button>  </div>


                <div class="thumbnail">

                    <!-- thumbnail item 1 -->
                    <div class="item" data-slide="1">
                        <img src="./icon_wed/01.png">
                        <div class="content">
                            <div class="title">
                                Name Slider
                            </div>
                            <div class="description">
                                Description
                            </div>
                        </div>
                    </div>
                    <!-- thumbnail item 2 -->
                    <div class="item" data-slide="2">
                        <img src="./icon_wed/02.png">
                        <div class="content">
                            <div class="title">
                                Name Slider
                            </div>
                            <div class="description">
                                Description
                            </div>
                        </div>
                    </div>
                    <!-- thumbnail item 3 -->
                    <div class="item" data-slide="3">
                        <img src="./icon_wed/03.png">
                        <div class="content">
                            <div class="title">
                                Name Slider
                            </div>
                            <div class="description">
                                Description
                            </div>
                        </div>
                    </div>
                    <!-- thumbnail item 4 -->
                    <div class="item" data-slide="4">
                        <img src="./icon_wed/04.png">
                        <div class="content">
                            <div class="title">
                                Name Slider
                            </div>
                            <div class="description">
                                Description
                            </div>
                        </div>
                    </div>
                    
                </div>  
                <div class="arrows arrows-prev"><button  id="prev"><</button></div>
            </div>

            <!-- time running -->
            <div class="time"></div>
        </div>
        
            <script src="./assets/script/app.js"></script>

        <div id="content">
            <div id="product">
                
            
                <div class="wrapper">
                    <section class="intro">
                        <div class="logo" data-aos="fade-up" data-aos-duration="1000">
                            New product
                        </div>
                        <div class="line"></div>
                    </section>
            
                    <section class="saitama character" >
                        <div class="block"></div>
                        <img src="./icon_wed/pd01.png" alt=""><span class="huge-text">Elfleda</span>
                        <div class="caption">
                            This high-end ring is crafted from S925 silver adorned with a 1-carat Moissanite diamond. It will bring you sophistication and elegance wherever you go. Whether you're at work, attending a party, or hanging out with friends, your hands will surely stand out.
                        </div>
                        <div class="nickname"><span>Nickname</span>Moissanite Elfleda</div>
                        <div class="quote">
                        Your jewelry will introduce you before you speak.
                        </div>
                    </section>
            
                    <section class="genos character">
                        <div class="block"></div>
                        <img src="./icon_wed/pd02.png" alt=""><span class="huge-text">Lumina</span>
                        <div class="caption">
                        Made from S925 silver and decorated with sparkling Swarovski crystals, this bracelet is not only a classy fashion accessory but also a symbol of nobility and elegance. Whether in work work, parties or meetings with friends, the shine of this bracelet will highlight your confident beauty.
                        </div>
                        <div class="nickname"><span>Nickname</span>Moissanite Lumina</div>
                        <div class="quote">
                        Your jewelry will introduce you before you speak.
                        </div>
                    </section>
                    <section class="saitama character">
                        <div class="block"></div>
                        <img src="./icon_wed/pd03.png" alt=""><span class="huge-text">Zyvora</span>
                        <div class="caption">
                        Crafted from premium S925 silver and adorned with a dazzling 1-carat Moissanite, this exquisite necklace promises to add an air of sophistication and elegance to your every ensemble. Whether at work, a soirée, or enjoying time with friends, let your neckline radiate with confidence and grace.
                        </div>
                        <div class="nickname"><span>Nickname</span>Zyvora</div>
                        <div class="quote">
                        Your jewelry will introduce you before you speak.
                        </div>
                    </section>
                    <section class="genos character">
                        <div class="block"></div>
                        <img src="./icon_wed/pd04.png" alt=""><span class="huge-text">Vivara</span>
                        <div class="caption">
                        These premium earrings are crafted from S925 silver and adorned with a sparkling 1-carat Moissanite diamond. They are designed to exude elegance and sophistication wherever you go. Whether you're at work, attending a party, or enjoying a night out with friends, these earrings will surely make you stand out with grace
                        </div>
                        <div class="nickname"><span>Nickname</span>Vivara </div>
                        <div class="quote">
                        Your jewelry will introduce you before you speak.
                        </div>
                    </section>
                    
            
                </div>
            
                <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.3/gsap.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.3/ScrollTrigger.min.js"></script>
                <script src="./assets/script/app1.js"></script>
            </div>
            <div id="about" >

            <div class="backroutext" >
                <div class="auto">
                    <div class="me aos-init aos-animate introduce"  data-aos="fade-up" data-aos-duration="500">
                        JULY JEWELRY
                    </div>
                <div>
                    <div class="img1" 
                    data-aos="fade-up" data-aos-duration="1000" class="aos-init aos-animate">
                                <img src="./icon_wed/img1.png" alt="" style="
                                    width: 100%;
                                    box-shadow: -7px 8px 10px 1px rgb(0 0 0 / 43%);
                                    height: 100%;
                                    border-radius: 15px;
                            ">
                    </div>
                    <div class="text1 text"
                    data-aos="fade-up" data-aos-duration="1000" class="aos-init aos-animate">
                        <div class="text-1" >   Welcome to July Jewelry</div>
                            <div class="text-2" data-aos="fade-up" data-aos-duration="1000" class="aos-init aos-animate">   where we turn dreams of luxury and sophistication in jewelry into reality. We are a team of passion and creativity, committed to bringing the most exquisite and unique jewelry products. At July Jewelry, each piece of jewelry is not just a beautiful item, but also a marvelous work of art, crafted with meticulous attention and passion by talented artisans. When you come to us, you will experience the magic of natural gemstones and diamonds, carved by skilled hands, creating incomparable masterpieces of jewelry. Let July Jewelry be your destination in the world of jewelry, where each product carries its own story and value.
                            </div>
                    </div>
                </div>
                <div>
                    <div class="img2" 
                    data-aos="fade-up" data-aos-duration="1000" class="aos-init aos-animate">
                            <img src="./icon_wed/img2.png" alt="" style="
                                width: 100%;
                                box-shadow: 7px 8px 10px 1px rgb(0 0 0 / 43%);
                                height: 100%;
                                border-radius: 15px;
                        ">
                    </div>
                    <div class="text2 text"
                    data-aos="fade-up" data-aos-duration="1000" class="aos-init aos-animate">
                        <div class="text-1" >   Modern Fashion </div>
                        <div class="text-2"  data-aos="fade-up" data-aos-duration="1000" class="aos-init aos-animate">   In the modern fashion world, diversity and creativity are top principles, and JULY is proud to be the ideal destination for fashion lovers who want to express their personal style. With a delicate combination Between modern and unique designs, our jewelry products are not only symbols of luxury but also great accents to any outfit.

                            JULY always takes advantage of the most advanced technology and production processes to bring customers the most unique and quality products. From the selection of raw materials to the meticulous manufacturing process, each product is unique. Created with meticulousness and dedication.
                        </div>
                    </div>
                </div>
                    <div class="img3" 
                    data-aos="fade-up" data-aos-duration="1000" class="aos-init aos-animate">
                        <img src="./icon_wed/img3.png" alt="" style="
                            width: 100%;
    box-shadow: -7px 8px 10px 1px rgb(0 0 0 / 43%);
    height: 100%;
    border-radius: 15px;
                    ">
                    </div>
                    <div class="text3 text" 
                    data-aos="fade-up" data-aos-duration="1000" class="aos-init aos-animate">
                        <div class="text-1" >Product Design</div>
                        <div class="text-2"  data-aos="fade-up" data-aos-duration="1000" class="aos-init aos-animate">JULY jewelry is not only a product, but also a symbol of uniqueness and creativity in design. From choosing natural gemstones to applying advanced technology in the production process, we constantly strive to bring customers quality and classy jewelry products. With respect and listening to customers' opinions, we always improve and develop products to meet the diverse needs of the market. Anyone looking for a unique gift or wanting to treat themselves, JULY jewelry is always the top choice for fashion lovers and beauty enthusiasts.
                        </div>
                    </div>
                    <div class="text4" data-aos="fade-up" data-aos-duration="1000" class="aos-init aos-animate" >
                            Join us in exploring the beauty and power of jewelry at July Jewelry. We are not just a brand, but also a companion in every journey towards style and personalization. Let us accompany you as you discover the perfect expression of your individuality through our stunning pieces. With July Jewelry, every moment becomes an opportunity to shine and to celebrate your unique essence.
                    </div>
                </div>
            </div>
        
    </div>
            
            <!-- Tour -->
            <!-- contact -->
            <div id="Contact" class="content-section">
                <h2 class="section-heading">CONTACT</h2>
                <!-- <p class="section-sub-heading">Fan? Drop a note!</p> -->
                <div class="Contact-text" style="

                ">
                    <div>We warmly welcome any feedback from our customers regarding our products and services. Please fill out the form below or contact us via phone or email to share your thoughts. We commit to utilizing all feedback to continuously improve and optimize your experience.</div>
                    <div>For customers interested in custom jewelry orders or requiring face-to-face consultations, please contact us via the phone or email provided below. We will provide prompt and professional assistance and advice.</div>
                </div>
                <div class="row contact-concent">
                    <div class="colum colum-two contact-info">
                        <p><i class="fa-solid fa-location-dot" style="color: #19191a;"></i>HCM CITY, VIET NAM</p>
                        <p><i class="fa-solid fa-phone"></i>Phone: 0346019375</p>
                        <p><i class="fa-solid fa-envelope"></i>Email: Contact@July.Vn</p>
                    </div>
                    <div class="colum colum-two contact-form">
                    <form id="review_form">
                            <div class="row">
                                <div class="colum colum-two">
                                    <input type="text" name="user_name" placeholder="Name" required="" class="user_name" style="
                            padding: 10px;
                            width: 100%;
                        ">                                
                                </div>
                                <div class="colum colum-two ">
                                    <input type="email" name="email" placeholder="Email" required="" class="email" style="
                            width: 100%;
                            padding: 10px;
                        ">                                
                                </div>  
                            </div>
                            <div class="row mt-8">
                                <div class="colum colum-full ">
                                    <input type="text" name="user_review" placeholder="Message" required="" class="user_review" style="
                            width: 100%;
                            padding: 10px;
                        ">                                
                                </div>
                            </div>
                            <button type="button" class="btn btn-primary" id="save_review" style="
                            float: right;
                            margin: 10px 18px;
                            padding: 10px;
                            font-size: 14px;
                        ">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="map-section">
                <img src="./assets/img/map.png" alt="">
            </div>
            <?php require "./include/footer.php";?>
        </div>
    </div>
    <script>
        AOS.init();
      </script>
    <?php require "./include/card.php";?>
    <div class="notifications">
    <!-- Notification messages will be displayed here -->
</div>
</body>
</html>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

<script>
let notifications = document.querySelector('.notifications');
let canShowToast = true; // Biến để kiểm tra xem có thể hiển thị thông báo mới hay không

function createToast(type, icon, title, text){
    if (canShowToast) { // Kiểm tra trạng thái hiển thị của thông báo
        let newToast = document.createElement('div');
        newToast.innerHTML = `
            <div class="toast ${type}">
                <i class="${icon}"></i>
                <div class="content">
                    <div class="title">${title}</div>
                    <span>${text}</span>
                </div>
                <i class="close fa-solid fa-xmark" onclick="(this.parentElement).remove(); canShowToast = true;"></i>
            </div>`;
        notifications.appendChild(newToast);
        newToast.timeOut = setTimeout(() => {
            newToast.remove();
            canShowToast = true; // Thiết lập lại biến sau khi thông báo biến mất
        }, 5000);
        canShowToast = false; // Đặt biến để ngăn không hiển thị thông báo mới
    }
}

$(document).ready(function(){
    $('#save_review').click(function(){
        
        var user_name = $('.user_name').val();
        var email = $('.email').val();
        var user_review = $('.user_review').val();

        if(user_name == '' || email == '' || user_review == ''){
            createToast('error', 'fa-solid fa-times-circle', 'Error', 'Please complete all information.');
            return false;
        } else {
            $.ajax({
                url:"connnec_submit.php",
                method:"POST",
                data:{
                    user_name: user_name,
                    email: email,
                    user_review: user_review,
                },
                success:function(response){
                    createToast('success', 'fa-solid fa-check-circle', 'Success', response);
                    $('#review_form')[0].reset(); // Reset form sau khi gửi thành công
                },
                error:function(jqXHR, textStatus, errorThrown){
                    createToast('error', 'fa-solid fa-times-circle', 'Error', 'An error occurred, please try again later.');
                }
            });
        }
    });
});


</script>
