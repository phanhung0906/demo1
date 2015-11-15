<?php

$I = new AcceptanceTester($scenario);
$I->wantTo('Testing Successful Signup, Login & Logout Functionality');
$I->amOnPage('/signup');
$user_time = time();
$I->fillField('#username', 'johndoe' . $user_time);
$I->fillField('#email','johndoe' . $user_time . '@gmail.com');
$I->fillField('#password','password');
$I->fillField('#password_confirmation','password');
$I->click('.form-signin button');

$I->reloadPage();
$I->click('.user-menu-desktop');
$I->wait(2);
$I->click('#user_logout_desktop');
$I->click('#login-button-desktop');
$I->fillField('#email','johndoe' . $user_time . '@gmail.com');
$I->fillField('#password','password');
$I->click('.btn-signin');

$I->reloadPage();
$I->click('.user-menu-desktop');
$I->click('#user_logout_desktop');