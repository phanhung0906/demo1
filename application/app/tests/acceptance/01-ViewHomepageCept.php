<?php 
$I = new AcceptanceTester($scenario);
$I->wantTo('View The Homepage');
$I->amOnPage('/');
$I->see('Highlight Anything Stupid');