# TaskPivotree
> A Web-based application for purchasing textile products by giving details of the products, showing images of the products, etc.
  Verifying most critical funtionalities of the app such as , searching a product, log in etc.

## Table of contents
* [General info](#general-info)
* [Screenshots](#screenshots)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Status](#status)

## General info
Testing the critical features(log in, buy a product,etc.) of the app to make sure that is ready to go product release and free bug...

## Screenshots
![alt text](https://github.com/elifsenaC/TaskPivotree/blob/master/selenium-screenshot-5.png "Logo Title Text 1")

## Technologies
*Robot framework 4.0
*robotframework-seleniumlibrary  2.2.1
*Selenium  3.41
*Python 3.9

## Setup
https://github.com/elifsenaC/TaskPivotree
 git clone https://github.com/elifsenaC/TaskPivotree.git
  demo version - http://automationpractice.com/index.php

## Code Examples
*** Settings ***
Library   SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Variables ***
${browser}   chrome
${websiteUrl}   http://automationpractice.com/index.php
*** Keywords ***
Open the browser
    open browser  ${websiteUrl}  ${browser}

## Features
List of features ready and TODOs for future development
* Sign up to the app
* Log in to app
* Search product/ add to cart
* Buy product etc.

## Status
Project is: _finished_
