#!/bin/bash

# Function to create a page
create_page() {
    local filename=$1
    local title=$2
    local content=$3

    cat > "pages/$filename" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$title - Global Symposium and 38th ACSIC 2026</title>
    <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>
    <header>
        <div class="header-top">
            <div class="logo"><span class="logo-text">CGTMSE</span></div>
            <nav>
                <ul>
                    <li><a href="../index.html">Home</a></li>
                    <li class="dropdown"><a href="#">Menu</a>
                        <ul class="dropdown-menu">
                            <li><a href="welcome-message.html">Welcome</a></li>
                            <li><a href="theme-topics.html">Theme & Topics</a></li>
                            <li><a href="visiting-india.html">Visiting India</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <a href="login.html" class="login-btn">Login</a>
        </div>
    </header>

    <main>
        <section class="section">
            <div class="container">
                <div class="section-title">
                    <h2>$title</h2>
                </div>
                <div style="max-width: 900px; margin: 0 auto; font-size: 16px; line-height: 1.8; color: #666;">
                    $content
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="footer-bottom">
            <p>&copy; 2026 CGTMSE. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
EOF
    echo "Created $filename"
}

# Create Key Vision page
create_page "key-vision.html" "Key Vision" "
<h3>Primary Objective</h3>
<p>The event seeks to gather international experts and leaders to examine innovative credit guarantee approaches. The conference aims to bring together thought leaders, policymakers, financial institutions, and practitioners from across the globe.</p>

<h3 style='margin-top: 30px;'>Core Goals</h3>
<p>The symposium pursues three main objectives:</p>
<ul class='feature-list'>
<li><strong>Financial Access:</strong> Strengthening how small and medium enterprises can obtain financing</li>
<li><strong>Economic Development:</strong> Promoting sustainable growth through entrepreneurial support</li>
<li><strong>Institutional Cooperation:</strong> Encouraging collaboration via knowledge-sharing and policy discussions</li>
</ul>

<h3 style='margin-top: 30px;'>Strategic Focus</h3>
<p>The platform emphasizes driving innovation within credit guarantee systems while empowering micro, small, and medium enterprises globally.</p>
"

# Create CGTMSE page
create_page "cgtmse.html" "CGTMSE" "
<h3>Organization Overview</h3>
<p><strong>Credit Guarantee Fund Trust for Micro and Small Enterprises (CGTMSE)</strong> is India's national credit guarantee mechanism. It provides guarantee cover on collateral-free loans to reduce financing barriers for smaller businesses.</p>

<h3 style='margin-top: 30px;'>Key Functions</h3>
<p>The organization supports micro and small enterprises by:</p>
<ul class='feature-list'>
<li>Enabling access to institutional credit without collateral requirements</li>
<li>Reducing lender risk through guarantee coverage</li>
<li>Promoting entrepreneurship and financial inclusion</li>
<li>Supporting employment generation</li>
</ul>

<h3 style='margin-top: 30px;'>Leadership</h3>
<p>The organizing committee includes Mr. Manoj Mittal (Chairman & MD of SIDBI) and Mr. Manish Sinha (CEO). CGTMSE is positioned as a critical pillar of India's credit support framework.</p>

<div style='background: #f8f9fa; padding: 20px; border-radius: 8px; margin-top: 30px;'>
<p><strong>Contact:</strong> +91 93217 02103 / +91 93217 02104</p>
<p><strong>Email:</strong> global.38acsic@cgtmse.in</p>
</div>
"

# Create ACSIC page
create_page "acsic.html" "ACSIC" "
<h3>Organization Overview</h3>
<p><strong>ACSIC</strong> functions as an international association of credit guarantee and credit supplementation institutions across Asia and other regions. The confederation facilitates member collaboration through conferences, research initiatives, and technical cooperation.</p>

<h3 style='margin-top: 30px;'>Purpose & Mission</h3>
<p>ACSIC focuses on strengthening SME finance systems and credit guarantee mechanisms across member countries. The confederation promotes best practice exchange and institutional development.</p>

<h3 style='margin-top: 30px;'>38th Conference 2026</h3>
<p>The conference is organized by CGTMSE under India's Ministry of Micro, Small and Medium Enterprises. This prestigious gathering brings together policymakers, financial institutions, and practitioners from across the globe.</p>
"

# Create Ministry page
create_page "ministry.html" "Ministry of Micro, Small and Medium Enterprises" "
<h3>Ministry Overview</h3>
<p>The <strong>Ministry of Micro, Small and Medium Enterprises (MSME)</strong> serves as India's primary governmental body for the MSME sector. The Ministry works to promote entrepreneurship, innovation, competitiveness, and access to finance.</p>

<h3 style='margin-top: 30px;'>Key Responsibilities</h3>
<p>The ministry handles policy creation and execution for India's micro, small, and medium enterprise sector. A notable focus area involves overseeing credit guarantee programs, which the organization views as central to its mission.</p>

<h3 style='margin-top: 30px;'>Strategic Focus</h3>
<ul class='feature-list'>
<li>Promoting entrepreneurship and business development</li>
<li>Enhancing risk-sharing frameworks</li>
<li>Improving enterprise financing accessibility</li>
<li>Supporting sustainable economic development</li>
</ul>
"

# Create Theme & Topics page
create_page "theme-topics.html" "Theme & Topics" "
<h3>Event Theme</h3>
<p><strong>Strengthening Global Credit Guarantee Ecosystems Through Cooperation, Innovation & Resilience</strong></p>

<h3 style='margin-top: 30px;'>Key Discussion Topics</h3>
<p>The program features panel discussions spanning the event covering:</p>
<ul class='feature-list'>
<li>Cross-border cooperation in credit guarantee schemes</li>
<li>Impact measurement and policy design</li>
<li>Reinsurance strategies for institutional resilience</li>
<li>Green finance and ESG integration</li>
<li>Financial inclusion and underserved segments</li>
<li>Digital and AI-enabled guarantees</li>
<li>Economic shocks and resilience building</li>
</ul>

<h3 style='margin-top: 30px;'>Thematic Strands</h3>
<p>Sessions address:</p>
<ul class='feature-list'>
<li>Risk management in credit guarantee schemes</li>
<li>Innovation and technological transformation</li>
<li>Outreach to women entrepreneurs and rural MSMEs</li>
<li>Data-driven credit assessment approaches</li>
</ul>

<div style='text-align: center; margin-top: 40px;'>
<a href='login.html' class='btn'>Register Now</a>
</div>
"

