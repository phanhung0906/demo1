<?php

$I = new AcceptanceTester($scenario);
$I->wantTo('Test Adding, Editing, Deleting, and Voting on Comments');

$I->amOnPage('/signin');

$I->fillField('#email','admin@admin.com');
$I->fillField('#password','password');
$I->click('.btn-signin');

$I->amOnPage('/media/highlight-anything-stupid');
$I->fillField('#comment','Haha, this is an awesome comic strip. I love Cyanide and Happiness :)');
$I->click('#comment-submit');

$I->wait(1);

$I->seeInPageSource('<p class="comment_data">Haha, this is an awesome comic strip. I love Cyanide and Happiness :)</p>');

