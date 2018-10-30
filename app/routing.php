<?php
/**
 * This file hold all routes definitions.
 *
 * PHP version 7
 *
 * @author   WCS <contact@wildcodeschool.fr>
 *
 * @link     https://github.com/WildCodeSchool/simple-mvc
 */

$routes = [

    'Enigmes' => [ // Controller
        ['index', '/', 'GET'], // action, url, method
        ['add', '/enigme/add', ['GET', 'POST']], // action, url, method
        ['edit', '/enigme/edit/{id:\d+}', ['GET', 'POST']], // action, url, method
        ['show', '/enigme/{id:\d+}', 'GET'], // action, url, method
        ['delete', '/enigme/delete/{id:\d+}', 'GET'], // action, url, method

    ],

    'Bonbon' => [ // Controller
        ['indexBonbon', '/Bonbon/index', 'GET'], // action, url, method
       // ['add', '/item/add', ['GET', 'POST']], // action, url, method
      //  ['edit', '/item/edit/{id:\d+}', ['GET', 'POST']], // action, url, method
        ['show', '/item/{id:\d+}', 'GET'], // action, url, method
      //  ['delete', '/item/delete/{id:\d+}', 'GET'], // action, url, method

    ],
];
