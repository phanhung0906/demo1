<?php

$I = new AcceptanceTester($scenario);
$I->wantTo('Test User Uploads Work Successful');
$I->amOnPage('/signup');
$I->fillField('#username', 'bobsburgers' . time());
$I->fillField('#email','bob' . time() . '@bobsburgers.com');
$I->fillField('#password','password');
$I->fillField('#password_confirmation','password');
$I->click('.form-signin button');
$I->wait(2);

// Upload picture from file
$I->click('.upload-btn-desktop');
$I->seeElement('.icon-cloud-upload');
$I->fillField('#title','Bobs Burgers');
$I->attachFile('#pic_url', 'bobs-burgers.jpg');
$I->click('.submit-media');
$I->see('Bobs Burgers');
$I->wait(2);

// Upload picture from URL
$I->click('.upload-btn-desktop');
$I->seeElement('.icon-cloud-upload');
$I->fillField('#title','Cool Burgers Bob');
$I->fillField('#img_url', 'http://pmcdeadline2.files.wordpress.com/2011/04/bobs-burgers_20110407175535.jpg');
$I->click('.submit-media');
$I->see('Cool Burgers Bob');
$I->wait(2);

// Upload Youtube Video from URL
$I->click('.upload-btn-desktop');
$I->seeElement('.icon-cloud-upload');
$I->click('.vid-radio-btn');
$I->fillField('#title','Burger Video');
$I->fillField('#vid_url', 'https://www.youtube.com/watch?v=8KH97Sp5jRE');
$I->click('.submit-media');
$I->see('Burger Video');
$I->wait(2);

// Upload Vimeo Video from URL
$I->click('.upload-btn-desktop');
$I->seeElement('.icon-cloud-upload');
$I->click('.vid-radio-btn');
$I->fillField('#title','Skateboarding');
$I->fillField('#vid_url', 'http://vimeo.com/42864902');
$I->click('.submit-media');
$I->see('Skateboarding');
$I->wait(2);

// Upload Vine Video from URL
$I->click('.upload-btn-desktop');
$I->seeElement('.icon-cloud-upload');
$I->click('.vid-radio-btn');
$I->fillField('#title','New Kicks');
$I->fillField('#vid_url', 'https://vine.co/v/MDve2ubvna5');
$I->click('.submit-media');
$I->see('New Kicks');