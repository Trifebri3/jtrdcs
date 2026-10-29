{**
 * templates/frontend/components/header.tpl
 *
 * Professional, Clean, Elegant Top Bar, Brand Header & Panoramic Banner for JTRDCS
 * Published by Yota Adiwidya Center • Yayasan Yota Wujudkan Asa (Lembaga Nirlaba)
 *}
{strip}
	{assign var="showingLogo" value=true}
	{if !$displayPageHeaderLogo}
		{assign var="showingLogo" value=false}
	{/if}
{/strip}
<!DOCTYPE html>
<html lang="{$currentLocale|replace:"_":"-"}" xml:lang="{$currentLocale|replace:"_":"-"}">
{if !$pageTitleTranslated}{capture assign="pageTitleTranslated"}{translate key=$pageTitle}{/capture}{/if}
{include file="frontend/components/headerHead.tpl"}
<body class="pkp_page_{$requestedPage|escape|default:"index"} pkp_op_{$requestedOp|escape|default:"index"}{if $showingLogo} has_site_logo{/if}" dir="{$currentLocaleLangDir|escape|default:"ltr"}">

	<div class="pkp_structure_page">

		{* 1. Top Utility Bar *}
		<div class="jtrdcs-topbar">
			<div class="jtrdcs-container jtrdcs-topbar-flex">
				<div class="jtrdcs-topbar-left">
					<span class="jtrdcs-badge-oa"><i class="fa fa-unlock-alt"></i> Open Access</span>
					<span class="jtrdcs-badge-nirlaba"><i class="fa fa-heart"></i> Nirlaba</span>
					<span class="jtrdcs-topbar-issn">E-ISSN: 3025-XXXX &bull; P-ISSN: 3025-YYYY</span>
					<span class="jtrdcs-topbar-sep d-none d-md-inline">|</span>
					<span class="jtrdcs-topbar-contact d-none d-lg-inline">
						<a href="mailto:yotaadiwidyacenter@gmail.com" class="tb-link"><i class="fa fa-envelope"></i> yotaadiwidyacenter@gmail.com</a>
						<span class="sep">&bull;</span>
						<a href="https://wa.me/6285862319524?text=Halo%20Redaksi%20JTRDCS" target="_blank" rel="noopener" class="tb-link"><i class="fa fa-whatsapp"></i> 085862319524</a>
					</span>
				</div>

				<div class="jtrdcs-topbar-right">
					{* Language Switcher (Clean Minimalist Pills) *}
					<div class="jtrdcs-lang-group">
						<span class="lang-label">{if $currentLocale == 'id'}Bahasa:{else}Lang:{/if}</span>
						<a href="{url router=PKP\core\PKPApplication::ROUTE_PAGE page="user" op="setLocale" path="id" source=$smarty.server.REQUEST_URI}" 
						   class="lang-pill {if $currentLocale == 'id'}active{/if}" 
						   title="Bahasa Indonesia">
							ID
						</a>
						<a href="{url router=PKP\core\PKPApplication::ROUTE_PAGE page="user" op="setLocale" path="en" source=$smarty.server.REQUEST_URI}" 
						   class="lang-pill {if $currentLocale == 'en'}active{/if}" 
						   title="English">
							EN
						</a>
					</div>

					{* CTA Buttons *}
					<a href="{$baseUrl}/public/journals/1/Template_Artikel_JTRDCS.docx" class="tb-btn tb-btn-outline" download>
						<i class="fa fa-download"></i>
						<span>{if $currentLocale == 'id'}Template (.docx){else}Template{/if}</span>
					</a>
					<a href="{url page="about" op="submissions"}" class="tb-btn tb-btn-solid">
						<i class="fa fa-paper-plane"></i>
						<span>{if $currentLocale == 'id'}Kirim Naskah{else}Submit Paper{/if}</span>
					</a>

					{* User Account / Login / Register / Admin Menu (Using Custom Isolated Classes to Prevent Default Theme Floating!) *}
					<div class="jtrdcs-user-nav" id="jtrdcsUserNav">
						{load_menu name="user" id="jtrdcsUserMenu" ulClass="jtrdcs-user-nav-list" liClass="jtrdcs-user-item"}
					</div>
				</div>
			</div>
		</div>

		{* 2. Clean White Brand Header with Leaf-Tech Emblem *}
		<header class="jtrdcs-main-header" role="banner">
			{include file="frontend/components/skipLinks.tpl"}
			<div class="jtrdcs-container jtrdcs-header-flex">
				{capture assign="homeUrl"}
					{url page="index" router=PKP\core\PKPApplication::ROUTE_PAGE}
				{/capture}

				<a href="{$homeUrl}" class="jtrdcs-brand-lockup">
					<div class="jtrdcs-brand-logo-wrap">
						<img src="{$baseUrl}/public/journals/1/logo_emblem.png" 
						     alt="Logo JTRDCS - Journal of Technology Research, Development and Community Service" 
						     class="jtrdcs-brand-logo-img" />
					</div>
					<div class="jtrdcs-brand-titles">
						<span class="jtrdcs-brand-name">Journal of Technology Research, Development and Community Service</span>
						<div class="jtrdcs-brand-sub">
							<span class="pub-badge">YOTA INOVASI</span>
							<span class="sub-text">
								{if $currentLocale == 'id'}
									Riset Teknologi, Inovasi Terapan &amp; Pengabdian Masyarakat
								{else}
									Technology Research, Applied Innovation &amp; Community Service
								{/if}
							</span>
						</div>
					</div>
				</a>

				<div class="jtrdcs-header-extras d-none d-xl-flex">
					<div class="header-stat-box">
						<span class="stat-num">Vol. 1 No. 1</span>
						<span class="stat-lbl">{if $currentLocale == 'id'}Edisi Perdana (2026){else}Inaugural Issue (2026){/if}</span>
					</div>
					<div class="header-stat-box">
						<span class="stat-num">Free APC</span>
						<span class="stat-lbl">{if $currentLocale == 'id'}Bebas Biaya Publikasi{else}Zero Processing Fees{/if}</span>
					</div>
				</div>
			</div>
		</header>

		{* 3. Primary Navigation Bar (Strict 46px Sleek Bar with Right-Aligned Search) *}
		<nav class="jtrdcs-navbar" role="navigation" aria-label="{translate|escape key="common.navigation.site"}">
			<div class="jtrdcs-container jtrdcs-navbar-flex">
				<button class="jtrdcs-mobile-toggle" aria-label="Toggle Navigation">
					<i class="fa fa-bars"></i>
					<span>Menu Navigasi</span>
				</button>

				<div class="jtrdcs-nav-menu-wrapper" id="jtrdcsNavWrapper">
					{load_menu name="primary" id="jtrdcsNavPrimary" ulClass="jtrdcs-nav-primary-list" liClass="jtrdcs-nav-primary-item"}
				</div>

				{if $currentContext && $requestedPage !== 'search'}
					<div class="jtrdcs-navbar-search">
						<a href="{url page="search"}" class="search-trigger">
							<i class="fa fa-search"></i>
							<span>{translate key="common.search"}</span>
						</a>
					</div>
				{/if}
			</div>
		</nav>

		{* 4. Official Hero Banner Image Section *}
		{if $requestedPage == 'index' || !$requestedPage}
			{* Panoramic Hero Banner for Homepage *}
			<div class="jtrdcs-hero-panoramic-wrapper">
				<div class="jtrdcs-container">
					<div class="jtrdcs-hero-panoramic-card">
						<img src="{$baseUrl}/public/journals/1/hero_banner.jpg" 
						     alt="Banner Resmi JTRDCS - Riset Teknologi, Inovasi Terapan &amp; Pengabdian Masyarakat" 
						     class="hero-panoramic-img" />
						<div class="hero-panoramic-overlay">
							<div class="hero-panoramic-badges">
								<span class="badge-leaf"><i class="fa fa-leaf"></i> LEAF-TECH INNOVATION</span>
								<span class="badge-open"><i class="fa fa-unlock-alt"></i> OPEN ACCESS (FREE APC)</span>
								<span class="badge-nirlaba"><i class="fa fa-heart"></i> YAYASAN NIRLABA</span>
							</div>
							<h1 class="hero-panoramic-title">
								{if $currentLocale == 'id'}
									Jurnal Riset Teknologi Terapan, Inovasi Cerdas &amp; Pengabdian Masyarakat
								{else}
									Journal of Technology Research, Applied Engineering &amp; Community Service
								{/if}
							</h1>
							<p class="hero-panoramic-subtitle">
								{if $currentLocale == 'id'}
									Dikelola dan diterbitkan oleh <strong>Yota Adiwidya Center</strong> di bawah naungan <strong>Yayasan Yota Wujudkan Asa (Lembaga Nirlaba)</strong>. Memfasilitasi diseminasi artikel ilmiah orisinal, prototipe aplikatif AI &amp; IoT, serta pengabdian masyarakat berdaya guna.
								{else}
									Published and managed by <strong>Yota Adiwidya Center</strong> under the auspices of <strong>Yayasan Yota Wujudkan Asa (Non-Profit Foundation)</strong>. Dedicated to advancing applied technological research, AI &amp; IoT prototyping, and sustainable community empowerment.
								{/if}
							</p>
							<div class="hero-panoramic-actions">
								<a href="{url page="about" op="submissions"}" class="btn-banner-submit">
									<i class="fa fa-paper-plane"></i> {if $currentLocale == 'id'}Kirim Naskah Online{else}Submit Paper Online{/if}
								</a>
								<a href="{$baseUrl}/public/journals/1/Template_Artikel_JTRDCS.docx" class="btn-banner-template" download>
									<i class="fa fa-download"></i> {if $currentLocale == 'id'}Unduh Template (.docx){else}Download Template (.docx){/if}
								</a>
								<a href="{url page="issue" op="current"}" class="btn-banner-current">
									<i class="fa fa-book"></i> {if $currentLocale == 'id'}Terbitan Terkini{else}Current Issue{/if}
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		{else}
			{* Compact Academic Header Strip for Inner Pages *}
			<div class="jtrdcs-page-header-strip">
				<div class="jtrdcs-container jtrdcs-page-header-flex">
					<div class="page-header-left">
						<span class="page-header-context">JTRDCS &bull; YOTA INOVASI &bull; OPEN ACCESS</span>
						<h1 class="page-header-title">{$pageTitleTranslated|strip_tags}</h1>
					</div>
					<div class="page-header-right d-none d-md-flex">
						<span class="page-header-pill"><i class="fa fa-shield"></i> Double-Blind Review</span>
						<span class="page-header-pill"><i class="fa fa-check-circle"></i> Free APC</span>
						<span class="page-header-pill"><i class="fa fa-calendar"></i> April, Agustus, Desember</span>
					</div>
				</div>
			</div>
		{/if}

		{* 5. Main Content & Sidebar Wrapper *}
		{if $isFullWidth}
			{assign var=hasSidebar value=0}
		{/if}
		<div class="pkp_structure_content{if $hasSidebar} has_sidebar{/if}">
			<div class="pkp_structure_main" role="main">
				<a id="pkp_content_main"></a>
