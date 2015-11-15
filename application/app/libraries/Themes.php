<?php

class Themes {

	public static function get_themes() {

		$themes = array();
		$theme_folder = 'content/themes';

		$themes_dir = @ opendir( $theme_folder);
		$themes_files = array();
		
		if ( $themes_dir ) {

			while (($folder = readdir( $themes_dir ) ) !== false ) {

				if( @is_readable("$theme_folder/$folder/info.json") ){
					$theme_info = file_get_contents("$theme_folder/$folder/info.json");
					$theme_info = json_decode($theme_info, true);
					$theme_info['slug'] = $folder;
					array_push($themes, $theme_info);
				}

			}

			closedir( $themes_dir );
		}

		return $themes;
	}

	public static function get_theme($slug){

		$theme_folder = 'content/themes';

		if( @is_readable("$theme_folder/$slug/info.json") ){
			$theme_info = file_get_contents("$theme_folder/$slug/info.json");
			$theme_info = json_decode($theme_info, true);
			$theme_info['slug'] = $slug;
		}

		return $theme_info;
	}

}