
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title>Multi Step Progress Bar Form Using Bootstrap And Jquery</title>
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.progress {border-radius:25px; }
h1 {color:#5bc0de;}
</style>
 </head>
 <body>
   <h1 align="center">Multi Step Progress Bar Form Using Bootstrap And Jquery</h1>
   <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- How To Add Font Awesome Social Icons In Blog Or Website3 -->


   <div class="container">
	<br><br>
	  <div class="col-md-8 col-md-offset-2">   	
		<div class="progress">
		  <div class="progress-bar progress-bar-info progress-bar-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
		</div>

		<div class="step well">
			<div class="form-group">
  <label for="usr">First Name:</label>
  <input type="text" class="form-control" id="usr">
</div>
<div class="form-group">
  <label for="usr">Last Name:</label>
  <input type="text" class="form-control" id="usr">
</div>
		</div>
		<div class="step well">
			<label for="usr">Mobile Number:</label>
  <input type="text" class="form-control" id="usr">
		</div>
		<div class="step well">
			 <form role="form">
			 <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email">
  </div>
  <form>
		</div>
		<div class="step well">
			<form role="form">
 
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd">
  </div>
   <div class="form-group">
    <label for="pwd">Retype Password:</label>
    <input type="password" class="form-control" id="pwd">
  </div>
  
</form>
		</div>
		
		

		<button class="action back btn btn-info">Back</button>
		<button class="action next btn btn-info">Next</button>
		<button class="action submit btn btn-success">Submit</button>
	 </div> 
   </div>
<br><br><br><br>
  <a href="http://seowebsitedesigning.com" target="_blank" style="float:left;" class="btn btn-info">Back to Home</a>

 </body>
</html>
<script type="text/javascript">
	$(document).ready(function(){
		var current = 1;
		
		widget      = $(".step");
		btnnext     = $(".next");
		btnback     = $(".back"); 
		btnsubmit   = $(".submit");

		// Init buttons and UI
		widget.not(':eq(0)').hide();
		hideButtons(current);
		setProgress(current);

		// Next button click action
		btnnext.click(function(){
			if(current < widget.length){
				widget.show();
				widget.not(':eq('+(current++)+')').hide();
				setProgress(current);
			}
			hideButtons(current);
		})

		// Back button click action
		btnback.click(function(){
			if(current > 1){
				current = current - 2;
				btnnext.trigger('click');
			}
			hideButtons(current);
		})			
	});

	// Change progress bar action
	setProgress = function(currstep){
		var percent = parseFloat(100 / widget.length) * currstep;
		percent = percent.toFixed();
		$(".progress-bar").css("width",percent+"%").html(percent+"%");		
	}

	// Hide buttons according to the current step
	hideButtons = function(current){
		var limit = parseInt(widget.length); 

		$(".action").hide();

		if(current < limit) btnnext.show();
		if(current > 1) btnback.show();
		if (current == limit) { btnnext.hide(); btnsubmit.show(); }
	}

</script>

