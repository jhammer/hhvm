<?php
ini_set("intl.error_level", E_WARNING);
ini_set("intl.default_locale", "nl");

$locales = IntlCalendar::getAvailableLocales();
var_dump(count($locales) > 100);

$locales = intlcal_get_available_locales();
var_dump(in_array('pt', $locales));

?>
==DONE==
