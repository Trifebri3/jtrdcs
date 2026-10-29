{**
 * templates/frontend/components/headerHead.tpl
 *
 * Enhanced High-Performance <head> for JTRDCS with Google Fonts & Brand Meta
 * Published by Yota Inovasi
 *}
<head>
	<meta charset="{$defaultCharset|escape}">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
	<meta name="theme-color" content="#0f766e">
	<title>
		{$pageTitleTranslated|strip_tags}
		{if $requestedPage|escape|default:"index" != 'index' && $currentContext && $currentContext->getLocalizedName()}
			| {$currentContext->getLocalizedName()}
		{/if}
	</title>

	{* SEO & Social Sharing Meta *}
	<meta name="description" content="Journal of Technology Research, Development and Community Service (JTRDCS) dikelola oleh Yota Adiwidya Center di bawah naungan Yayasan Yota Wujudkan Asa (Lembaga Nirlaba). Jurnal riset AI, IoT, agritech, EWS, robotika, teknologi tepat guna, prototipe, dan pengabdian masyarakat.">
	<meta property="og:title" content="{$pageTitleTranslated|strip_tags} | JTRDCS">
	<meta property="og:description" content="Journal of Technology Research, Development and Community Service (JTRDCS) &bull; Yota Adiwidya Center (Yayasan Yota Wujudkan Asa - Nirlaba)">
	<meta property="og:image" content="{$baseUrl}/public/journals/1/logo_512.png">
	<meta property="og:type" content="website">

	{* Favicons & Mobile Icons *}
	<link rel="icon" type="image/png" sizes="32x32" href="{$baseUrl}/public/journals/1/logo_32.png">
	<link rel="icon" type="image/png" sizes="64x64" href="{$baseUrl}/public/journals/1/logo_64.png">
	<link rel="apple-touch-icon" sizes="180x180" href="{$baseUrl}/public/journals/1/logo_180.png">

	{* Preconnect Google Fonts *}
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:ital,wght@0,400;0,500;0,600;0,700;0,800;1,400;1,600&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">

	{load_header context="frontend"}
	{load_stylesheet context="frontend"}
	<link rel="stylesheet" href="{$baseUrl}/public/journals/1/styleSheet.css?v={$smarty.now}" type="text/css">
</head>
