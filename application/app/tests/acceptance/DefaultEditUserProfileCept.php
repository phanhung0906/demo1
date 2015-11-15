<?php

$I = new AcceptanceTester($scenario);
$I->wantTo('Edit User Profile');
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
$I->executeJS('return $(".user-menu-desktop").parent().addClass("open")');
$I->waitForElement('.user-profile-link-desktop', 10); // secs
$I->click('.user-profile-link-desktop');

$I->click('.edit-user-profile');

$I->fillField('#username','bobsburgers');
$I->wait(2);
$I->fillField('#email','bob@bobsburgers.com');
$I->wait(2);
$I->attachFile('input[name="avatar"]',  'bobsburgersavatar.jpg');
$I->click('.submit-update-profile');
$I->wait(2);
$I->see('successful');