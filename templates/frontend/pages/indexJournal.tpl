{**
 * templates/frontend/pages/indexJournal.tpl
 *
 * Modern, Intuitive, Bilingual Landing Page with Panoramic Hero Banner for JTRDCS
 * Published by Yota Inovasi
 *}
{include file="frontend/components/header.tpl" pageTitleTranslated=$currentJournal->getLocalizedName()}

<div class="page_index_journal jtrdcs-homepage">

	{* 2. Main Hero Welcome & Call for Papers Section *}
	<section class="jtrdcs-hero-banner">
		<div class="hero-split-grid">
			<div class="hero-content-col">
				<div class="hero-badge-wrap">
					<span class="hero-call-badge">
						<span class="pulse-dot"></span>
						{if $currentLocale == 'id'}
							Call for Papers &mdash; Vol. 1 No. 1 (2026) Terbuka
						{else}
							Call for Papers &mdash; Vol. 1 No. 1 (2026) Open
						{/if}
					</span>
					<span class="hero-freq-badge">
						{if $currentLocale == 'id'}Terbit Berkala 2x Setahun: April &amp; Oktober{else}Published Biannually: April &amp; October{/if}
					</span>
				</div>

				<h1 class="hero-main-title">
					{if $currentLocale == 'id'}
						Jurnal Riset Teknologi, Rekayasa Terapan &amp; Pengabdian Masyarakat
					{else}
						Journal of Technology Research, Applied Engineering &amp; Community Service
					{/if}
				</h1>

				<p class="hero-lead">
					{if $currentLocale == 'id'}
						<strong>Journal of Technology Research, Development and Community Service (JTRDCS)</strong> adalah jurnal ilmiah akses terbuka (Open Access) peer-reviewed yang dikelola dan diterbitkan oleh <strong>Yota Adiwidya Center</strong> di bawah naungan <strong>Yayasan Yota Wujudkan Asa (Lembaga Nirlaba)</strong>. Memfasilitasi diseminasi karya orisinal para peneliti, inovator, dan praktisi untuk menjembatani riset teknologi terdepan dengan kemaslahatan nyata masyarakat.
					{else}
						<strong>Journal of Technology Research, Development and Community Service (JTRDCS)</strong> is a peer-reviewed open-access scientific journal managed and published by <strong>Yota Adiwidya Center</strong> under the auspices of <strong>Yayasan Yota Wujudkan Asa (Non-Profit Foundation)</strong>. Dedicated to bridging cutting-edge technology research and applied prototyping with sustainable community empowerment.
					{/if}
				</p>

				<div class="hero-actions">
					<a href="{url page="about" op="submissions"}" class="btn-hero-primary">
						<span class="fa fa-paper-plane"></span>
						{if $currentLocale == 'id'}Kirim Naskah Online{else}Submit Paper Online{/if}
					</a>
					<a href="{$baseUrl}/public/journals/1/Template_Artikel_JTRDCS.docx" class="btn-hero-secondary" download>
						<span class="fa fa-download"></span>
						{if $currentLocale == 'id'}Unduh Template (.docx){else}Download Template (.docx){/if}
					</a>
					<a href="https://wa.me/6285862319524?text=Halo%20Redaksi%20JTRDCS" target="_blank" rel="noopener" class="btn-hero-wa">
						<span class="fa fa-whatsapp"></span>
						<span>{if $currentLocale == 'id'}Konsultasi Redaksi{else}Editorial Helpdesk{/if}</span>
					</a>
				</div>
			</div>

			<div class="hero-visual-col d-none d-md-flex">
				<div class="hero-card-showcase">
					<div class="card-logo-ring">
						<img src="{$baseUrl}/public/journals/1/logo_brandmark.png" alt="Logo JTRDCS Leaf-Tech" class="hero-logo-img" />
					</div>
					<div class="hero-card-meta">
						<span class="hero-card-tag">JTRDCS &bull; Yota Inovasi</span>
						<span class="hero-card-focus">AI &bull; IoT &bull; Agritech &bull; EWS &bull; Community</span>
					</div>
					<div class="hero-card-pills">
						<span class="c-pill"><i class="fa fa-check"></i> Free APC</span>
						<span class="c-pill"><i class="fa fa-eye-slash"></i> Double Blind</span>
						<span class="c-pill"><i class="fa fa-globe"></i> Open Access</span>
					</div>
				</div>
			</div>
		</div>

		<div class="hero-highlights-strip">
			<div class="highlight-item">
				<i class="fa fa-check-circle"></i>
				<span>{if $currentLocale == 'id'}Bebas Biaya Publikasi (Free APC){else}No Article Processing Charges (Free APC){/if}</span>
			</div>
			<div class="highlight-item">
				<i class="fa fa-bolt"></i>
				<span>{if $currentLocale == 'id'}Review Cepat &amp; Transparan (2-4 Pekan){else}Fast &amp; Rigorous Review (2-4 Weeks){/if}</span>
			</div>
			<div class="highlight-item">
				<i class="fa fa-unlock-alt"></i>
				<span>{if $currentLocale == 'id'}Akses Terbuka Penuh (CC-BY 4.0){else}Full Open Access (CC-BY 4.0){/if}</span>
			</div>
			<div class="highlight-item">
				<i class="fa fa-link"></i>
				<span>{if $currentLocale == 'id'}Terdaftar DOI Crossref{else}Crossref DOI Registered{/if}</span>
			</div>
		</div>
	</section>

	{* 3. 3 Core Pillars Section *}
	<section class="jtrdcs-section-block">
		<div class="section-heading-wrap">
			<span class="section-kicker">{if $currentLocale == 'id'}Fokus &amp; Ruang Lingkup{else}Focus &amp; Scope{/if}</span>
			<h2 class="section-title">
				{if $currentLocale == 'id'}Tiga Pilar Utama JTRDCS{else}Three Core Pillars of JTRDCS{/if}
			</h2>
			<p class="section-subtitle">
				{if $currentLocale == 'id'}
					JTRDCS menerima naskah berkualitas tinggi pada tiga rumpun keilmuan yang saling terintegrasi:
				{else}
					JTRDCS welcomes high-quality manuscripts within three integrated scientific streams:
				{/if}
			</p>
		</div>

		<div class="jtrdcs-pillars-grid">
			{* Pillar 1 *}
			<div class="pillar-card tr-pillar">
				<div class="pillar-icon-box">
					<span class="fa fa-microchip"></span>
				</div>
				<span class="pillar-tag tr-tag">Pilar 1</span>
				<h3>Technology Research</h3>
				<p class="pillar-summary">
					{if $currentLocale == 'id'}
						Penelitian orisinal, fundamental, dan eksploratif di bidang teknologi cerdas masa depan.
					{else}
						Original, foundational, and exploratory research in future smart technologies.
					{/if}
				</p>
				<ul class="pillar-topics">
					<li><strong>AI &amp; Machine Learning:</strong> Deep Learning, Computer Vision, NLP</li>
					<li><strong>Internet of Things (IoT):</strong> Smart Sensor Network, Telemetri</li>
					<li><strong>Agritech &amp; Smart Farming:</strong> Pertanian presisi, Monitoring iklim</li>
					<li><strong>Early Warning System (EWS):</strong> Deteksi dini bencana, Sensor lingkungan</li>
					<li><strong>Robotika &amp; Otomatisasi:</strong> Drone terapan, Sistem kendali cerdas</li>
					<li><strong>Teknologi Tepat Guna:</strong> Energi terbarukan ramah lingkungan</li>
				</ul>
			</div>

			{* Pillar 2 *}
			<div class="pillar-card dev-pillar">
				<div class="pillar-icon-box">
					<span class="fa fa-cogs"></span>
				</div>
				<span class="pillar-tag dev-tag">Pilar 2</span>
				<h3>Development</h3>
				<p class="pillar-summary">
					{if $currentLocale == 'id'}
						Rancang bangun prototipe, arsitektur sistem, dan rekayasa terapan siap pakai.
					{else}
						Design prototyping, system architectures, and applied engineering innovation.
					{/if}
				</p>
				<ul class="pillar-topics">
					<li><strong>Pengembangan Prototipe:</strong> Prototipe fisik dan digital teruji</li>
					<li><strong>Rekayasa Produk:</strong> Inovasi instrumen dan alat laboratorium</li>
					<li><strong>Arsitektur Sistem:</strong> Perangkat lunak, Cloud, &amp; Embedded systems</li>
					<li><strong>Pemodelan Komputasi:</strong> Simulasi rekayasa dan optimasi sistem</li>
					<li><strong>Inovasi Terapan Industri:</strong> Solusi teknologi manufaktur &amp; bisnis</li>
				</ul>
			</div>

			{* Pillar 3 *}
			<div class="pillar-card cs-pillar">
				<div class="pillar-icon-box">
					<span class="fa fa-users"></span>
				</div>
				<span class="pillar-tag cs-tag">Pilar 3</span>
				<h3>Community Service</h3>
				<p class="pillar-summary">
					{if $currentLocale == 'id'}
						Implementasi inovasi teknologi untuk pemberdayaan dan kemaslahatan masyarakat luas.
					{else}
						Technological innovation implementation for community empowerment and welfare.
					{/if}
				</p>
				<ul class="pillar-topics">
					<li><strong>Pemberdayaan Masyarakat:</strong> Transformasi digital desa &amp; komunitas</li>
					<li><strong>Penerapan Teknologi Tepat Guna:</strong> Peningkatan produktivitas lokal</li>
					<li><strong>Pendampingan UMKM:</strong> Digitalisasi rantai pasok dan inovasi produk</li>
					<li><strong>Alih Teknologi Terapan:</strong> Pelatihan berbasis sains dan kepakaran</li>
					<li><strong>Mitigasi Risiko Komunitas:</strong> Edukasi kebencanaan berbasis data</li>
				</ul>
			</div>
		</div>
	</section>

	{* 4. 4-Step Submission Flow for Authors *}
	<section class="jtrdcs-section-block jtrdcs-workflow-block">
		<div class="section-heading-wrap">
			<span class="section-kicker">{if $currentLocale == 'id'}Alur Publikasi{else}Publishing Flow{/if}</span>
			<h2 class="section-title">
				{if $currentLocale == 'id'}4 Langkah Mudah Publikasi Naskah{else}4 Easy Steps to Publish Your Paper{/if}
			</h2>
			<p class="section-subtitle">
				{if $currentLocale == 'id'}
					Proses pengiriman artikel dirancang ringkas, transparan, dan mudah dipantau melalui OJS.
				{else}
					A streamlined, transparent, and easy-to-track manuscript submission workflow.
				{/if}
			</p>
		</div>

		<div class="jtrdcs-steps-grid">
			<div class="step-card">
				<div class="step-num">1</div>
				<h4>{if $currentLocale == 'id'}Unduh Template{else}Download Template{/if}</h4>
				<p>{if $currentLocale == 'id'}Sesuaikan naskah dengan format template resmi (.docx) JTRDCS.{else}Format your draft according to the official JTRDCS Word template (.docx).{/if}</p>
			</div>
			<div class="step-card">
				<div class="step-num">2</div>
				<h4>{if $currentLocale == 'id'}Submit Online{else}Submit Online{/if}</h4>
				<p>{if $currentLocale == 'id'}Daftar akun dan unggah file naskah serta metadata penulis melalui sistem.{else}Register an account and upload your manuscript and author metadata.{/if}</p>
			</div>
			<div class="step-card">
				<div class="step-num">3</div>
				<h4>{if $currentLocale == 'id'}Peer Review{else}Peer Review{/if}</h4>
				<p>{if $currentLocale == 'id'}Naskah dinilai secara objektif oleh mitra bestari dengan metode Double-Blind.{else}Manuscript undergoes rigorous double-blind peer review by qualified experts.{/if}</p>
			</div>
			<div class="step-card">
				<div class="step-num">4</div>
				<h4>{if $currentLocale == 'id'}Publikasi Open Access{else}Open Access Publication{/if}</h4>
				<p>{if $currentLocale == 'id'}Artikel terbit berstatus Open Access permanen (Bebas APC) dengan pengidentifikasi digital dan preservasi arsip berkala.{else}Articles published under permanent Gold Open Access (Zero APC) with digital preservation and archival indexing.{/if}</p>
			</div>
		</div>
	</section>

	{* 5. Fast Contact / Helpdesk Banner *}
	<section class="jtrdcs-helpdesk-banner">
		<div class="helpdesk-banner-content">
			<div class="helpdesk-icon-wrap">
				<i class="fa fa-comments"></i>
			</div>
			<div class="helpdesk-text">
				<h3>{if $currentLocale == 'id'}Butuh Bantuan Submit atau Konsultasi Naskah?{else}Need Help with Submission or Publishing Inquiries?{/if}</h3>
				<p>
					{if $currentLocale == 'id'}
						Tim redaksi <strong>JTRDCS</strong> &bull; <strong>Yota Adiwidya Center (Yayasan Yota Wujudkan Asa - Nirlaba)</strong> siap mendampingi Anda melalui email resmi atau layanan konsultasi WhatsApp.
					{else}
						The editorial team of <strong>JTRDCS</strong> &bull; <strong>Yota Adiwidya Center (Yayasan Yota Wujudkan Asa - Non-Profit)</strong> is ready to assist you via official email or WhatsApp helpdesk.
					{/if}
				</p>
			</div>
			<div class="helpdesk-buttons">
				<a href="mailto:yotaadiwidyacenter@gmail.com" class="btn-helpdesk-email">
					<i class="fa fa-envelope"></i> yotaadiwidyacenter@gmail.com
				</a>
				<a href="https://wa.me/6285862319524?text=Halo%20Redaksi%20JTRDCS" target="_blank" rel="noopener" class="btn-helpdesk-wa">
					<i class="fa fa-whatsapp"></i> WhatsApp: 085862319524
				</a>
			</div>
		</div>
	</section>

	{* 6. Indexing & Partnership Showcase *}
	<section class="jtrdcs-section-block jtrdcs-indexing-block">
		<div class="section-heading-wrap">
			<span class="section-kicker">{if $currentLocale == 'id'}Pengindeksan{else}Indexing &amp; Abstracting{/if}</span>
			<h2 class="section-title">
				{if $currentLocale == 'id'}Mitra Indeksasi &amp; Repository Ilmiah{else}Indexing Partners &amp; Scientific Repositories{/if}
			</h2>
		</div>

		<div class="jtrdcs-indexing-badges">
			<div class="idx-badge"><i class="fa fa-graduation-cap"></i> Google Scholar</div>
			<div class="idx-badge"><i class="fa fa-globe"></i> Garuda Kemdikbud</div>
			<div class="idx-badge"><i class="fa fa-link"></i> Crossref DOI</div>
			<div class="idx-badge"><i class="fa fa-cubes"></i> Dimensions</div>
			<div class="idx-badge"><i class="fa fa-database"></i> Scilit</div>
			<div class="idx-badge"><i class="fa fa-certificate"></i> SINTA Alignment</div>
			<div class="idx-badge"><i class="fa fa-book"></i> PKP Index</div>
			<div class="idx-badge"><i class="fa fa-archive"></i> BASE Search</div>
		</div>
	</section>

	{* Announcements (if any) *}
	{include file="frontend/objects/announcements_list.tpl" numAnnouncements=$numAnnouncementsHomepage}

	{* Current Issue (if published) *}
	{if $issue}
		<section class="current_issue">
			<a id="homepageIssue"></a>
			<h2>{translate key="journal.currentIssue"}</h2>
			<div class="current_issue_title">
				{$issue->getIssueIdentification()|escape}
			</div>
			{include file="frontend/objects/issue_toc.tpl" heading="h3"}
			<a href="{url router=PKP\core\PKPApplication::ROUTE_PAGE page="issue" op="archive"}" class="read_more">
				{translate key="journal.viewAllIssues"}
			</a>
		</section>
	{/if}

</div><!-- .page -->

{include file="frontend/components/footer.tpl"}
