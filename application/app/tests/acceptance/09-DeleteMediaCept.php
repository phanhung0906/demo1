<?php

$I = new AcceptanceTester($scenario);
$I->wantTo('Testing Deleting Media Functionality');

$I->amOnPage('/');

$I->click('#login-button-desktop');
$I->fillField('#email','admin@admin.com');
$I->fillField('#password','password');
$I->click('.btn-signin');

$I->wait(2);

$I->click('New Kicks');

$I->wait(2);
$I->click('Delete');
$I->wait(1);
$I->acceptPopup();
$I->wait(2);
$I->see('successful');

$I->wait(2);
$I->click('.table tr:nth-child(2) td .btn-danger');
$I->wait(1);
$I->acceptPopup();
$I->wait(2);
$I->see('successful');

