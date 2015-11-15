<style type="text/css">
ul.themes{
	padding-left:0px;
}
ul.themes li{
	list-style:none;
	float:left;
	padding:5px;
	border-radius:2px;
	margin-right:15px;
	background:#f1f1f1;
	cursor:pointer;
}



ul.themes li:hover{
	background:#393C44;
	color:#fff;
}

ul.themes li.active, ul.themes li.active:hover{
	background-color:#fff;
	border-color:#fff;
}

ul.themes li.active:hover{
	color:#333;
}

ul.themes li span.label{
	display:none;
}

ul.themes li.active span.label{
	display:block;
}

ul.themes li p{
	padding:5px;
	padding-bottom:0px;
	margin-bottom:2px;
}

ul.themes li div.thumb{
	width:300px;
	height:200px;
	position:relative;
}

ul.themes li div.thumb .dim{
	background:rgba(0, 0, 0, 0.0);
	width:100%;
	height:100%;
	position:absolute;
}

ul.themes li div.thumb button{
	display:block;
	position:absolute;
	width:150px;
	height:50px;
	top:50%;
	margin-top:-25px;
	margin-left:-75px;
	left:50%;
	display:none;
}

ul.themes li:hover div.thumb button{
	display:block;
}

ul.themes li.active:hover div.thumb button{
	display:none;
}

ul.themes li:hover div.thumb .dim, ul.themes li.active div.thumb .dim{
	background:none;
}

ul.themes li img{
	width:100%;
	height:100%;
	padding:2px;
}
</style>

<ul class="themes">
<?php foreach($themes as $theme): ?>

	<li class="<?php if($theme['slug'] == $active_theme): ?>active<?php endif; ?>" data-theme="<?= $theme['slug']; ?>">
		<div class="thumb">
			<div class="dim"></div>
				<img src="/content/themes/<?= $theme['slug']; ?>/thumbnail.jpg" />
			<button class="btn btn-success">Set Active</button>
		</div>
		<p><?= $theme['name']; ?> version <?= $theme['version']; ?><span class="label label-success" style="float:right;">Active</span></p>
		<p><?= $theme['description']; ?></p>

	</li>

<?php endforeach; ?>
</ul>

<script>
$(document).ready(function(){
	$('ul.themes li').click(function(){
		window.location = '/admin/activate_theme/' + $(this).data('theme');
	});
});
</script>