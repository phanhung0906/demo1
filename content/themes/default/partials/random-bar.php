<style type="text/css">
.gallery-sub-header{
	top:0px;
}
.main_home_container{
	padding-top:0px;
}
</style>

<?php 
	$random = Media::where('active', '=', 1)->orderBy(DB::raw('RAND()'))->take(18)->get();
?>

<div id="random-bar">
	<div id="random-left"><i class="fa fa-angle-left"></i></div>
	<div id="random-right"><i class="fa fa-angle-right"></i></div>
	<div class="container random-container">
		<div id="random-slider">
			<?php foreach($random as $random_media): ?>
					<?php $image = Config::get('site.uploads_dir') . '/images/' . $random_media->pic_url; ?>
					<div class="random-item" >
						<a class="random-img" href="<?= URL::to('media') . '/' . $random_media->slug ?>" style="background-image:url(<?= $image ?>); display:block; min-height:100px; background-size:cover; background-position-y:center"></a>
					</div>

			<?php endforeach; ?>
		</div>
	</div>
</div>