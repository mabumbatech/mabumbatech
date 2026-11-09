<?php
/**
 * Root entry point.
 * Serves the homepage at the bare domain (https://www.mabumbatech.co.tz/) so Google shows and
 * indexes the clean address instead of /frontend/html/home.html. The page itself is unchanged:
 * a <base> tag makes every relative link/script/style resolve exactly as it does on home.html.
 * If the site is ever installed in a sub-folder, or home.html can't be read, it falls back to
 * the original redirect.
 */
$base = rtrim(dirname($_SERVER['SCRIPT_NAME']), '/');
$home = __DIR__ . '/frontend/html/home.html';

if ($base === '' && is_readable($home)) {
    $html = file_get_contents($home);
    if ($html !== false && stripos($html, '<head>') !== false) {
        header('Content-Type: text/html; charset=UTF-8');
        echo preg_replace('/<head>/i', "<head>\n    <base href=\"/frontend/html/\">", $html, 1);
        exit;
    }
}

header('Location: ' . $base . '/frontend/html/home.html');
exit;
