<?php

$I = new AcceptanceTester($scenario);
$I->wantTo('Test that Inactive Users Cannot Login');
$I->amOnPage('/signup');
$user_time = time();
$I->fillField('#username', 'johndoe' . $user_time);
$I->fillField('#email','johndoe' . $user_time . '@gmail.com');
$I->fillField('#password','password');
$I->fillField('#password_confirmation','password');

$I->click('.form-signin button');

$I->wait(2);
$I->click('.user-menu-desktop');

$I->wait(2);
$I->click('#user_logout_desktop');

$I->click('#login-button-desktop');
$I->fillField('#email','admin@admin.com');
$I->fillField('#password','password');
$I->click('.btn-signin');

$I->wait(2);
$I->click('.user-menu-desktop');

$I->wait(2);
$I->click('.admin_link_desktop');
$I->see('Admin Functionality');
$I->click('[data-section="users"]');
$I->seeElement('.fa-user');
$I->click('[data-section="users"]');
$I->click('.disable-username-johndoe' . $user_time);

$I->wait(3);
$I->click('.user-menu-desktop');

$I->wait(2);
$I->click('#user_logout_desktop');
$I->click('#login-button-desktop');
$I->fillField('#email','johndoe' . $user_time . '@gmail.com');
$I->fillField('#password','password');
$I->click('.btn-signin');
$I->see('no longer active');