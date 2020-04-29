<script src="logout.js"></script>

<?php include('confiq.php'); ?>

<script>
function logoutfully(safeLocation, redirUrl) {
	$.post("update_session.php?logout");
	logout(safeLocation, redirUrl);
};

function backup() {
	$.get("backup-db.php?geturl", function(backupurl) {
		location.href = backupurl;
	});
}
</script>

<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="index.html"><?php echo HEADING;?></a>
		</div>
		
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      	<ul class="nav navbar-nav">
      		<li><a href="calendar.php">Calendar</a></li>
      		<li><a href="bookings.php">Bookings</a></li>
      		<li><a href="bookers.php">Pengguna</a></li>		
			<li><a href="facilities.php">Iventori</a></li>	

      	</ul>
      	<ul class="nav navbar-nav navbar-right">
      		<li><a role="button" onclick="logoutfully('bookings.php', '<?php echo LOGOUT_URL; ?>')">Logout</a>	
      	</ul>
      </div>
	</div>
</nav>