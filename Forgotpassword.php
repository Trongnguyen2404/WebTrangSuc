<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In & Sign Up | sL Code Hub</title>
    <link rel="stylesheet" href="./assets/fontawesome-free-6.2.1-web/css/all.css">
    <link rel="icon" type="image/x-icon" href="./icon_wed/JULY.png">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="./aos-master/dist/aos.css">
    <script src="./aos-master/dist/aos.js"></script>
    <link rel="stylesheet" href="./assets/css/responsive.css">
</head>
<style>
    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap");

* {
  overflow: hidden;
  padding: 0;
  margin: 0;
  box-sizing: border-box;
  font-family: "Popping", sans-serif;
  text-decoration: none;
}
.container {
  position: relative;
  width: 100%;
  min-height: 100vh;
  background-color: #fff;
  overflow: hidden;
}
.container::before {
  content: "";
  position: absolute;
  width: 2000px;
  height: 2000px;
  border-radius: 50%;
  background: linear-gradient(-45deg, #0ef, #4481ed);
  top: -10%;
  right: 48%;
  transform: translateY(-50%);
  z-index: 6;
  transition: 1.8s ease-in-out;
}
.forms-container {
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
}
.signIn-signUp {
  position: absolute;
  top: 50%;
  left: 75%;
  transform: translate(-50%, -50%);
  width: 50%;
  display: grid;
  grid-template-columns: 1fr;
  z-index: 5;
  transition: 1s 0.7s ease-in-out;
}
form {
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    padding: 0 5rem;
    overflow: hidden;
    grid-column: 1 / 2;
    grid-row: 1 / 2;
    transition: 0.2s 0.7s ease-in-out;
    width: 500px;
    position: absolute;
    left: 0;
    right: 0;
    margin: auto;
    top: 0;
    bottom: 0;
}
form.sign-in-form {
  z-index: 2;
}
form.sign-up-form {
  z-index: 1;
  opacity: 0;
}
.title {
  font-size: 2.2rem;
  color: #444;
  margin-bottom: 10px;
}
.input-field {
  max-width: 380px;
  width: 100%;
  height: 55px;
  background-color: #f0f0f0;
  margin: 10px 0;
  border-radius: 55px;
  display: flex;
  grid-template-columns: 15% 85%;
  padding: 0.4rem;
}
.input-field i {
  text-align: center;
  line-height: 40px;
  color: #acacac;
  font-size: 1.5rem;
}
.input-field input {
  background: none;
  outline: none;
  border: none;
  line-height: 1;
  font-weight: 600;
  font-size: 1.1rem;
  color: #333;
}
.input-field input::placeholder {
  color: #807f7f;
  font-weight: 400;
}
.btn {
  width: 150px;
  height: 49px;
  border: none;
  outline: none;
  border-radius: 49px;
  cursor: pointer;
  background-color: #0ef;
  color: #000;
  text-transform: uppercase;
  font-weight: 600;
  margin: 10px 0;
  transition: 0.5s;
}
.btn:hover {
  background-color: #4d84e2;
  color: #fff;
}
.social-text {
  padding: 0.7rem 0;
  font-size: 1rem;
}
.social-media {
  display: flex;
  justify-content: center;
}
.social-icon {
  height: 46px;
  width: 46px;
  border: 1px solid #333;
  margin: 0 0.45rem;
  display: flex;
  justify-content: center;
  align-items: center;
  color: #333;
  font-size: 1.1rem;
  border-radius: 50%;
  transition: 0.3s;
}
.social-icon:hover {
  background: #0ef;
  color: #fff;
  border: none;
}
.panels-container {
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  display: grid;
  grid-template-columns: repeat(2, 1fr);
}
.panel {
  display: flex;
  flex-direction: column;
  align-items: flex-end;
  justify-content: space-around;
  text-align: center;
  z-index: 7;
}
.left-panel {
  pointer-events: all;
  padding: 3rem 17% 2rem 12%;
}
.right-panel {
  pointer-events: none;
  padding: 3rem 12% 2rem 17%;
}
.panel .content {
  color: #fff;
  transition: 0.9s 0.6s ease-in-out;
}
.panel h3 {
  font-weight: 600;
  line-height: 1;
  font-size: 1.5rem;
}
.panel p {
  font-size: 0.95rem;
  padding: 0.7rem 0;
}
.btn.transparent {
  margin: 0;
  background: none;
  border: 2px solid #fff;
  width: 130px;
  height: 41px;
  font-weight: 600;
  font-size: 0.8rem;
}
.img {
  width: 100%;
  transition: 0.9s 0.6s ease-in-out;
}
.right-panel .content,
.right-panel .img {
  transform: translateX(800px);
}
.container.sign-up-mode::before {
  transform: translate(100%, -50%);
  right: 52%;
}
.container.sign-up-mode .left-panel .img,
.container.sign-up-mode .left-panel .content {
  transform: translateX(-800px);
}
.container.sign-up-mode .right-panel .content,
.container.sign-up-mode .right-panel .img {
  transform: translateX(0px);
}
.container.sign-up-mode .left-panel {
  pointer-events: none;
}
.container.sign-up-mode .right-panel {
  pointer-events: all;
}
.container.sign-up-mode .signIn-signUp {
  left: 25%;
}
.container.sign-up-mode form.sign-in-form {
  z-index: 1;
  opacity: 0;
}
.container.sign-up-mode form.sign-up-form {
  z-index: 2;
  opacity: 1;
}

@media (max-width: 870px) {
  .container {
    min-height: 800px;
    height: 100vh;
  }
  .container::before {
    width: 1500px;
    height: 1500px;
    left: 30%;
    bottom: 68%;
    transform: translateX(-50%);
    right: initial;
    top: initial;
    transition: 2s ease-in-out;
  }
  .signIn-signUp {
    width: 100%;
    left: 50%;
    top: 95%;
    transform: translate(-50%, -100%);
  }
  .panels-container {
    grid-template-columns: 1fr;
    grid-template-rows: 1fr 2fr 1fr;
  }
  .panel {
    flex-direction: row;
    justify-content: space-around;
    align-items: center;
    padding: 2.5rem 8%;
  }
  .panel .content {
    padding-right: 15%;
    transition: 0.9s 0.8s ease-in-out;
  }
  .panel h3 {
    font-size: 1.2rem;
  }
  .panel p {
    font-size: 0.7rem;
    padding: 0.5rem 0;
  }
  .btn.transparent {
    width: 110px;
    height: 35px;
    font-size: 0.7rem;
  }
  .img {
    width: 200px;
    transition: 0.9s 0.6s ease-in-out;
  }
  .left-panel {
    grid-row: 1 / 2;
  }
  .right-panel {
    grid-row: 3 / 4;
  }
  .right-panel .content,
  .right-panel .img {
    transform: translateY(300px);
  }
  .container.sign-up-mode::before {
    transform: translate(-50%, 100%);
    bottom: 32%;
    right: initial;
  }
  .container.sign-up-mode .left-panel .img,
  .container.sign-up-mode .left-panel .content {
    transform: translateY(-300px);
  }
  .container.sign-up-mode .signIn-signUp {
    top: 5%;
    transform: translate(-50%, 0);
    left: 50%;
  }
}
@media (max-width: 570px) {
  form {
    padding: 0 1.5rem;
  }
  .img {
    display: none;
  }
  .panel .content {
    padding: 0.5rem 1rem;
  }
  .content::before {
    bottom: 72%;
    left: 50%;
  }
  .container.sign-up-mode::before {
    bottom: 28%;
    left: 50%;
  }
}
.notifications {
	position: fixed;
	top: 30px;
	right: 20px;
    z-index: 50;
}
@media (max-width: 600px) {
    .toast{
        width: 300px !important;
    }
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
.with-img{
  width: 20% ;
        height: 40% ;
}
.toast.error{
   --color: #f24d4c;
   background-image: linear-gradient(to right, #f24d4c55, #22242F 30%);
}
</style>
<body>
<div class="notifications">
        
</div>
<div class="with-img" data-aos="fade-down-right" data-aos-duration="2000" style="
    position: absolute;
    background: #00dcff;

    left: 0;
    top: 0;
    border-radius: 0px 0px 400px 0;
"></div>
<div class="with-img" data-aos="fade-down-left" data-aos-duration="2000" style="
    position: absolute;
    background: #00dcff;

    right: 0;
    top: 0;
    border-radius: 0px 0  0 400px;
"></div>
<div class="with-img" data-aos="fade-up-right" data-aos-duration="2000"  style="
    position: absolute;
    background: #00dcff;

    bottom: 0;
    left: 0;
    border-radius: 0px 400px 0 0;
"></div>
<div class="with-img" data-aos="fade-up-left" data-aos-duration="2000" style="
    position: absolute;
    background: #00dcff;

    right: 0;
    bottom: 0;
    border-radius: 400px 0  0 0;
"></div>
<form class="form-form" data-aos="zoom-in" data-aos-duration="2000" action="xulyquenpass.php" method="post" class="col-5 m-auto bg-secondary p-2 text-white">
  <h2 class="title">Forgot password</h2>
    <div class="input-field">
        <i class='bx bx-user'></i>
        <input  name="email" type="email" class="form-control" placeholder="Enter email">
      </div>
    </div>
      <button type="submit" name="btn1" class="btn btn-primary">Send require</button>
</form>
<script>
        AOS.init();
      </script>
</body>

</html>
