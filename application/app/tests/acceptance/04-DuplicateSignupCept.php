<?php

$I = new AcceptanceTester($scenario);
$I->wantTo('Test Duplicate Email/Username Signup');
$I->amOnPage('/signup');
$I->fillField('#username', 'admin');
$I->fillField('#email','admin@admin.com');
$I->fillField('#password','password');
$I->fillField('#password_confirmation','password');
$I->click('.form-signin button');
$I->see('Error');