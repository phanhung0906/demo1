<?php

class ApiController extends BaseController {

	private $default_limit = 50;
	private $public_settings = array('website_name', 'website_description', 'logo', 'favicon', 'theme', 'fb_key', 'facebook_page_id', 'google_key', 'google_page_id', 'twitter_page_id', 'primary_color', 'secondary_color', 'analytics', 'media_description', 'pages_in_menu', 'pages_in_menu_text', 'system_email');

	// ********** Main API page ********** //

	public function getIndex()
	{
		echo 'API Configuration Coming Soon';
	}

	// ********** API to show all media ********** //

	public function getMedia(){

		$response = Media::where('active', '=', '1');
		if(Input::get('offset')){
			$reponse = $response->skip(Input::get('offset'));
		}
		if( Input::get('filter') && Input::get('order') ){
			$response = $response->orderBy(Input::get('filter'), Input::get('order'));
		} else {
			$response = $response->orderBy('created_at', 'desc');
		}
		if(Input::get('limit')){
			$response = $response->take(Input::get('limit'));
		} else {
			$response = $response->take($this->default_limit);
		}
		return Response::json($response->get(), 200);
	}

	public function getSettings(){
		$settings = Setting::first($this->public_settings);

		// Include the Uploads URL
		$settings['uploads_dir'] = Config::get('site.uploads_dir');

		// Include Site URL
		$settings['url'] = URL::to('/');
		
		return Response::json($settings);
	}

	// ********** API to show comments based on media ********** //

	public function getComments($id){
		$comments = Comment::where('media_id', '=', $id)->get();
		return Response::json($comments);
	}

	// ********** API to show comment votes for a specific comment ********** //

	public function getCommentvotes($id){
		$upVotes = DB::table('comment_votes')->where('comment_id', '=', $id)->sum('up');
		$downVotes = DB::table('comment_votes')->where('comment_id', '=', $id)->sum('down');
		$totalVotes = $upVotes - $downVotes;
		return Response::json($totalVotes);
	}

	// ********** API to show comment flags from comment ********** //

	public function getCommentflags($id){
		$num_flags = DB::table('comment_flags')->where('comment_id', '=', $id)->count();
		return Response::json($num_flags);
	}

	// ********** API to show media based on media ID ********** //

	public function getMediaflags($id){
		$num_flags = DB::table('media_flags')->where('media_id', '=', $id)->count();
		return Response::json($num_flags);
	}

}