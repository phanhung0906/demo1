<?php
require_once('Uploader.php');

class ImageHandler
{

    public static function uploadImage($image, $folder, $filename = '', $type = 'upload')
    {
        return call_user_func(Config::get('site.media_upload_function'), array('image' => $image, 'folder' => $folder, 'filename' => $filename, 'type' => $type));
    }

    public static function upload($args)
    {
        $image = $args['image'];
        $folder = $args['folder'];
        $filename = $args['filename'];
        $type = $args['type'];

        if ($folder == 'images') {
            $month_year = date('FY') . '/';
        } else {
            $month_year = '';
        }

        $upload_folder = Constant::FOLDER_CLOUDINARY . '/' . $month_year;
        $arrayAllMedia = Media::all();

        if (@getimagesize($image)) {

            if ($type == 'upload') {
                $filename = str_replace(" ", "-", $image->getClientOriginalName());

                // if the file exists give it a unique name
                foreach ($arrayAllMedia as $media) {
                    if ($month_year . $filename == $media->pic_url) {
                        $filename = uniqid() . '-' . $filename;
                    }
                }

                // Store in cloudinary
                \Cloudinary\Uploader::upload($_FILES['pic_url']['tmp_name'], array("public_id" => $upload_folder . '/' . pathinfo($filename, PATHINFO_FILENAME)));
//				$uploadSuccess = $image->move($upload_folder, $filename);

                if (strpos($filename, '.gif') > 0) {
                    $new_filename = str_replace('.gif', '-animation.gif', $filename);
//					copy($upload_folder . $filename, $upload_folder . $new_filename);
                    \Cloudinary\Uploader::upload($_FILES['pic_url']['tmp_name'], array("public_id" => $upload_folder . '/' . pathinfo($new_filename, PATHINFO_FILENAME)));
                }

            } elseif ($type = 'url') {
//                $file = file_get_contents($image);

                if (strpos($image, '.gif') > 0) {
                    $extension = '-animation.gif';
                } else {
                    $extension = '.jpg';
                }

                $filename = str_replace(" ", "-", $filename . $extension);

                // if the file exists give it a unique name
                foreach ($arrayAllMedia as $media) {
                    if ($month_year . $filename == $media->pic_url) {
                        $filename = uniqid() . '-' . $filename . $extension;
                    }
                }

                if (strpos($image, '.gif') > 0) {
                    // Store in cloudinary
                    \Cloudinary\Uploader::upload($image, array("public_id" => $upload_folder . '/' .  pathinfo($filename, PATHINFO_FILENAME)));
                    $filename = str_replace('-animation.gif', '.gif', $filename);
                }

                \Cloudinary\Uploader::upload($image, array("public_id" => $upload_folder . '/' .  pathinfo($filename, PATHINFO_FILENAME)));
            }


            $settings = Setting::first();

            if ($settings->enable_watermark && $folder == 'images') {
                // Setting watermark + resize
                cl_image_tag($upload_folder . '/' . $filename,
                    array("overlay" => Config::get('site.uploads_dir') . '/settings/' . $settings->watermark_image,
                        "x" => $settings->watermark_offset_x,
                        "y" => $settings->watermark_offset_y
                    ));
            } else {
                // Setting watermark + resize
                cl_image_tag($upload_folder . '/' . $filename,
                    array("width" => 200, "height" => 200));
            }

            return $month_year . $filename;

        } else {
            return false;
        }
    }

}