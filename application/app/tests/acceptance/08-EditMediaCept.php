<?php

$I = new AcceptanceTester($scenario);
$I->wantTo('Test Editing Media Functionality');

$I->amOnPage('/');

$I->click('#login-button-desktop');
$I->fillField('#email','admin@admin.com');
$I->fillField('#password','password');
$I->click('.btn-signin');

$I->wait(2);
$I->click('Cool Burgers Bob');

$I->wait(2);
$I->click('Edit');
$I->wait(2);
$I->fillField('#title','Bobs Burgers is Cool');
$I->fillField('#source', 'http://www.fox.com/bobs-burgers');
//$I->fillField('#tags', 'bob, burgers, bobs burgers, fox, cartoon');
$I->fillField('#slug', 'bobs-burgers-is-cool');
$I->wait(2);
$I->click('Update Media');

$I->wait(3);
$I->click('Bobs Burgers is Cool');
$I->wait(1);
$I->see('Bobs Burgers is Cool');


