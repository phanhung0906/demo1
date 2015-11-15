<?php

$I = new AcceptanceTester($scenario);
$I->wantTo('Testing user liking media on (Home Page, Single Page, User Profile Page)');

$I->amOnPage('/signin');

$I->fillField('#email','admin@admin.com');
$I->fillField('#password','password');
$I->click('.btn-signin');

$I->wait(2);

$I->amOnPage('/media/conspiracy');
$I->dontSeeElementInDOM('.home-media-like.active');
$I->click('.home-media-like');
$I->wait(1);

$I->seeElementInDOM('.home-media-like.active');
$I->wait(1);
$I->click('.home-media-like.active');
$I->wait(1);
$I->dontSeeElementInDOM('.home-media-like.active');

$I->wait(1);

$I->amOnPage('/');
$I->dontSeeElementInDOM('#media .item:first-child .home-media-like.active');
$I->click('#media .item:first-child .home-media-like');
$I->wait(1);

$I->seeElementInDOM('#media .item:first-child .home-media-like.active');
$I->wait(1);
$I->click('#media .item:first-child .home-media-like.active');
$I->wait(1);
$I->dontSeeElementInDOM('#media .item:first-child .home-media-like.active');
$I->click('#media .item:first-child .home-media-like');


$I->wait(1);
$I->amOnPage('/user/admin/likes');
$I->see('Burger Video');

