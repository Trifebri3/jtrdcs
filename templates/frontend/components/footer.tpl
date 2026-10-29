{**
 * templates/frontend/components/footer.tpl
 *
 * Professional, Clean, Elegant Footer & Responsive Sidebar for JTRDCS
 * Published by Yota Inovasi
 *}

	</div><!-- pkp_structure_main -->

	{* Sidebars *}
	{if empty($isFullWidth)}
		{capture assign="sidebarCode"}{call_hook name="Templates::Common::Sidebar"}{/capture}
		<div class="pkp_structure_sidebar left" role="complementary">
			{* Custom Author Quick Actions Widget *}
			<div class="pkp_block jtrdcs-action-block">
				<h2 class="title">
					{if $currentLocale == 'id'}Pusat Penulis{else}Author Center{/if}
				</h2>
				<div class="content jtrdcs-action-box">
					<a href="{$baseUrl}/public/journals/1/Template_Artikel_JTRDCS.docx" class="jtrdcs-btn-block btn-template" download>
						<span class="fa fa-file-word-o" aria-hidden="true"></span>
						<div>
							<strong>{if $currentLocale == 'id'}Unduh Template (.docx){else}Download Template (.docx){/if}</strong>
							<small>{if $currentLocale == 'id'}Format Naskah Resmi JTRDCS{else}Official Manuscript Format{/if}</small>
						</div>
					</a>
					<a href="{url page="about" op="submissions"}" class="jtrdcs-btn-block btn-submit">
						<span class="fa fa-cloud-upload" aria-hidden="true"></span>
						<div>
							<strong>{if $currentLocale == 'id'}Kirim Naskah Online{else}Submit Paper Online{/if}</strong>
							<small>{if $currentLocale == 'id'}Klik untuk submit naskah{else}Click to submit article{/if}</small>
						</div>
					</a>
				</div>
			</div>

			{* Quick Links Widget *}
			<div class="pkp_block jtrdcs-links-block">
				<h2 class="title">
					{if $currentLocale == 'id'}Panduan &amp; Kebijakan{else}Guidelines &amp; Policies{/if}
				</h2>
				<div class="content">
					<ul class="jtrdcs-quick-list">
						<li>
							<a href="{url page="about" op="submissions"}#authorGuidelines">
								<span class="fa fa-angle-right"></span>
								{if $currentLocale == 'id'}Pedoman Penulisan (Author Guidelines){else}Author Guidelines{/if}
							</a>
						</li>
						<li>
							<a href="{url page="about"}#focusAndScope">
								<span class="fa fa-angle-right"></span>
								{if $currentLocale == 'id'}Fokus dan Ruang Lingkup{else}Focus &amp; Scope{/if}
							</a>
						</li>
						<li>
							<a href="{url page="about" op="editorialMasthead"}">
								<span class="fa fa-angle-right"></span>
								{if $currentLocale == 'id'}Dewan Redaksi (Editorial Team){else}Editorial Team{/if}
							</a>
						</li>
						<li>
							<a href="{url page="about"}#peerReview">
								<span class="fa fa-angle-right"></span>
								{if $currentLocale == 'id'}Proses Peer Review (Double-Blind){else}Peer Review Process{/if}
							</a>
						</li>
						<li>
							<a href="{url page="about"}#publicationEthics">
								<span class="fa fa-angle-right"></span>
								{if $currentLocale == 'id'}Etika Publikasi (Publication Ethics){else}Publication Ethics{/if}
							</a>
						</li>
						<li>
							<a href="{url page="about"}#authorFees">
								<span class="fa fa-angle-right"></span>
								{if $currentLocale == 'id'}Biaya Publikasi: Bebas Biaya (Free APC){else}Publication Fees: Free APC{/if}
							</a>
						</li>
					</ul>
				</div>
			</div>

			{* Writing Tools Widget *}
			<div class="pkp_block jtrdcs-tools-block">
				<h2 class="title">
					{if $currentLocale == 'id'}Tools Pendukung{else}Recommended Tools{/if}
				</h2>
				<div class="content">
					<div class="jtrdcs-tools-grid">
						<span class="tool-tag"><i class="fa fa-bookmark"></i> Mendeley</span>
						<span class="tool-tag"><i class="fa fa-book"></i> Zotero</span>
						<span class="tool-tag"><i class="fa fa-check-circle"></i> Turnitin</span>
						<span class="tool-tag"><i class="fa fa-spell-check"></i> Grammarly</span>
					</div>
					<p class="tool-note">
						<small>
							{if $currentLocale == 'id'}
								Batas maksimal kemiripan (plagiarisme) naskah adalah 20%.
							{else}
								Maximum allowable similarity index is 20%.
							{/if}
						</small>
					</p>
				</div>
			</div>

			{* Hook for existing sidebar blocks (LanguageToggle, etc.) *}
			{if $sidebarCode}
				{$sidebarCode}
			{/if}

			{* Editorial Contact Widget *}
			<div class="pkp_block jtrdcs-contact-widget">
				<h2 class="title">
					{if $currentLocale == 'id'}Kontak Redaksi &amp; Helpdesk{else}Editorial Office &amp; Helpdesk{/if}
				</h2>
				<div class="content">
					<div class="contact-publisher-badge">
						<strong>Yota Inovasi</strong>
						<span class="badge-role">{if $currentLocale == 'id'}Penerbit Jurnal{else}Publisher{/if}</span>
					</div>
					<p class="contact-item">
						<i class="fa fa-envelope" style="color:var(--jtrdcs-primary);"></i> 
						<strong>Email:</strong> <a href="mailto:hello@yotainovasi.id">hello@yotainovasi.id</a>
					</p>
					<p class="contact-item">
						<i class="fa fa-whatsapp" style="color:#25d366;"></i> 
						<strong>WhatsApp:</strong> <a href="https://wa.me/6285862319524?text=Halo%20Redaksi%20JTRDCS" target="_blank" rel="noopener">085862319524</a>
					</p>
					<a href="https://wa.me/6285862319524?text=Halo%20Redaksi%20JTRDCS" target="_blank" rel="noopener" class="jtrdcs-wa-btn">
						<i class="fa fa-whatsapp"></i> {if $currentLocale == 'id'}Chat WhatsApp Redaksi{else}Chat Editorial via WhatsApp{/if}
					</a>
					<p class="contact-hours">
						<small>{if $currentLocale == 'id'}Layanan responsif: Senin - Jumat 08.00 - 17.00 WIB{else}Fast response: Mon - Fri 08.00 - 17.00 UTC+7{/if}</small>
					</p>
				</div>
			</div>
		</div><!-- pkp_structure_sidebar -->
	{/if}
</div><!-- pkp_structure_content -->

{* Global Footer (Clean, Full-Width, Completely Cleared) *}
<div class="pkp_structure_footer_wrapper" role="contentinfo">
	<a id="pkp_content_footer"></a>

	<footer class="jtrdcs-footer-container">
		<div class="jtrdcs-footer-row">
			<div class="jtrdcs-footer-col col-main">
				<div class="jtrdcs-footer-brand">
					<img src="{$baseUrl}/public/journals/1/logo_brandmark.png" alt="JTRDCS Logo" class="footer-mini-logo" />
					<div class="footer-brand-text">
						<span class="footer-title">Journal of Technology Research, Development and Community Service</span>
						<span class="footer-acronym">(JTRDCS)</span>
					</div>
				</div>
				<p class="footer-desc">
					{if $currentLocale == 'id'}
						Jurnal ilmiah akses terbuka (Open Access) yang dikelola oleh <strong>Yota Adiwidya Center</strong> di bawah naungan <strong>Yayasan Yota Wujudkan Asa</strong> (Lembaga Nirlaba), berfokus pada integrasi riset teknologi cerdas, perancangan prototipe inovatif terapan, dan program pengabdian masyarakat berkelanjutan.
					{else}
						An open-access peer-reviewed scientific journal managed by <strong>Yota Adiwidya Center</strong> under the auspices of <strong>Yayasan Yota Wujudkan Asa</strong> (Non-Profit Foundation), dedicated to smart technology research, applied prototype innovation, and sustainable community empowerment programs.
					{/if}
				</p>
				<div class="footer-cc-badge">
					<p class="license-text">
						<img src="https://licensebuttons.net/l/by/4.0/88x31.png" alt="CC BY 4.0" style="margin-bottom:6px; display:inline-block;" />
						<br />
						{if $currentLocale == 'id'}
							Artikel dalam jurnal ini dilisensikan di bawah <a href="https://creativecommons.org/licenses/by/4.0/" target="_blank" rel="noopener">Creative Commons Attribution 4.0 International License (CC BY 4.0)</a>.
						{else}
							Articles in this journal are licensed under a <a href="https://creativecommons.org/licenses/by/4.0/" target="_blank" rel="noopener">Creative Commons Attribution 4.0 International License (CC BY 4.0)</a>.
						{/if}
					</p>
				</div>
			</div>

			<div class="jtrdcs-footer-col col-nav">
				<h4>{if $currentLocale == 'id'}Tautan Cepat{else}Quick Navigation{/if}</h4>
				<ul class="footer-links">
					<li><a href="{url page="index"}">{if $currentLocale == 'id'}Beranda{else}Home{/if}</a></li>
					<li><a href="{url page="about"}">{if $currentLocale == 'id'}Tentang Jurnal{else}About the Journal{/if}</a></li>
					<li><a href="{url page="about" op="submissions"}">{if $currentLocale == 'id'}Penyerahan Naskah{else}Submissions{/if}</a></li>
					<li><a href="{url page="issue" op="current"}">{if $currentLocale == 'id'}Terbitan Terkini{else}Current Issue{/if}</a></li>
					<li><a href="{url page="issue" op="archive"}">{if $currentLocale == 'id'}Arsip Terbitan{else}Archives{/if}</a></li>
					<li><a href="{url page="about" op="privacy"}">{if $currentLocale == 'id'}Pernyataan Privasi{else}Privacy Statement{/if}</a></li>
					<li><a href="{url page="about" op="contact"}">{if $currentLocale == 'id'}Kontak Redaksi{else}Contact{/if}</a></li>
				</ul>
			</div>

			<div class="jtrdcs-footer-col col-contact">
				<h4>{if $currentLocale == 'id'}Kantor Redaksi &amp; Penerbit{else}Editorial Office &amp; Publisher{/if}</h4>
				<p>
					<strong>Penerbit / Pengelola:</strong> Yota Adiwidya Center<br />
					<strong>Naungan:</strong> Yayasan Yota Wujudkan Asa <span class="jtrdcs-pill-nirlaba"><i class="fa fa-heart"></i> Nirlaba</span><br />
					<strong>Redaksi JTRDCS</strong> &bull; Indonesia<br />
					Email: <a href="mailto:yotaadiwidyacenter@gmail.com">yotaadiwidyacenter@gmail.com</a><br />
					WhatsApp Official: <a href="https://wa.me/6285862319524?text=Halo%20Redaksi%20JTRDCS" target="_blank" rel="noopener">085862319524</a>
				</p>
				<div class="footer-lang-pills">
					<span>{if $currentLocale == 'id'}Ganti Bahasa:{else}Switch Language:{/if}</span>
					<a href="{url router=PKP\core\PKPApplication::ROUTE_PAGE page="user" op="setLocale" path="id" source=$smarty.server.REQUEST_URI}" class="f-pill {if $currentLocale == 'id'}active{/if}">ID - Indonesia</a>
					<a href="{url router=PKP\core\PKPApplication::ROUTE_PAGE page="user" op="setLocale" path="en" source=$smarty.server.REQUEST_URI}" class="f-pill {if $currentLocale == 'en'}active{/if}">EN - English</a>
				</div>
			</div>
		</div>

		<div class="jtrdcs-footer-bottom">
			<div class="footer-copy">
				&copy; 2026 <strong>Journal of Technology Research, Development and Community Service (JTRDCS)</strong> &bull; Diterbitkan oleh <strong>Yota Adiwidya Center</strong> &bull; <strong>Yayasan Yota Wujudkan Asa</strong> (Lembaga Nirlaba). All Rights Reserved.
			</div>
			<div class="footer-ojs">
				<a href="{url page="about" op="aboutThisPublishingSystem"}">
					<img alt="Open Journal Systems" src="{$baseUrl}/templates/images/ojs_brand.png" style="height:24px; vertical-align:middle; filter:grayscale(30%);">
				</a>
			</div>
		</div>
	</footer>
</div><!-- pkp_structure_footer_wrapper -->

</div><!-- pkp_structure_page -->

<script src="{$baseUrl}/js/build/jquery/jquery.min.js?v=3.5.0.5" type="text/javascript"></script>
<script src="{$baseUrl}/js/build/jquery-ui/jquery-ui.min.js?v=3.5.0.5" type="text/javascript"></script>
<script src="{$baseUrl}/plugins/themes/default/js/lib/popper/popper.js?v=3.5.0.5" type="text/javascript"></script>
<script src="{$baseUrl}/plugins/themes/default/js/lib/bootstrap/util.js?v=3.5.0.5" type="text/javascript"></script>
<script src="{$baseUrl}/plugins/themes/default/js/lib/bootstrap/dropdown.js?v=3.5.0.5" type="text/javascript"></script>
<script src="{$baseUrl}/plugins/themes/default/js/lib/swiper/swiper-bundle.min.js?v=3.5.0.5" type="text/javascript"></script>
{literal}
<script type="text/javascript">
var pkpDefaultThemeI18N = {"nextSlide":"Berikutnya","prevSlide":"Sebelumnya"};

// Mobile navigation toggle
document.addEventListener('DOMContentLoaded', function() {
    var toggleBtn = document.querySelector('.jtrdcs-mobile-toggle');
    var navWrapper = document.getElementById('jtrdcsNavWrapper');
    if (toggleBtn && navWrapper) {
        toggleBtn.addEventListener('click', function(e) {
            e.preventDefault();
            navWrapper.classList.toggle('jtrdcs-nav--open');
        });
    }

    // Dropdown hover/click helper for Bootstrap/PKP dropdowns and JTRDCS menus
    var dropdownToggles = document.querySelectorAll('.jtrdcs-nav-primary-list [aria-haspopup], .jtrdcs-user-nav-list [aria-haspopup], .pkp_navigation_primary [aria-haspopup], .pkp_navigation_user [aria-haspopup]');
    dropdownToggles.forEach(function(el) {
        el.addEventListener('click', function(e) {
            e.preventDefault();
            var parentLi = el.closest('li');
            if (parentLi) {
                parentLi.classList.toggle('is_open');
            }
        });
    });

    // Close dropdowns when clicking outside
    document.addEventListener('click', function(e) {
        if (!e.target.closest('.jtrdcs-nav-primary-list, .jtrdcs-user-nav-list, .pkp_navigation_primary, .pkp_navigation_user')) {
            document.querySelectorAll('.is_open').forEach(function(el) {
                el.classList.remove('is_open');
            });
        }
    });
});
</script>
{/literal}
<script src="{$baseUrl}/plugins/themes/default/js/main.js?v=3.5.0.5" type="text/javascript"></script>

</body>
</html>
