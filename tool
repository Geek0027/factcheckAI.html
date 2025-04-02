<!DOCTYPE html>
<html lang="en" data-theme="light">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="FactCheck.AI - AI-powered real-time fact-checking platform for text, audio, and video content. Verify news accuracy across multiple sources instantly.">
    <meta name="keywords" content="AI fact-checking, fake news detection, media verification, truth verification, news accuracy">
    <title>FactCheck.AI | Real-Time AI Fact-Checking Platform</title>
    
    <!-- Favicon -->
    <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.png">
    
    <!-- Preconnects -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="preconnect" href="https://cdnjs.cloudflare.com">
    
    <!-- CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    
    <style>
        :root {
            --primary: #1a237e;
            --primary-light: #534bae;
            --primary-dark: #000051;
            --secondary: #00897b;
            --secondary-light: #4ebaaa;
            --secondary-dark: #005b4f;
            --accent: #ffc107;
            --accent-light: #fff350;
            --accent-dark: #c79100;
            --neutral: #f5f5f5;
            --neutral-dark: #e0e0e0;
            --text: #212121;
            --text-light: #757575;
            --white: #ffffff;
            --black: #000000;
            --error: #d32f2f;
            --success: #388e3c;
            
            --shadow-sm: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
            --shadow-md: 0 4px 6px rgba(0,0,0,0.1), 0 1px 3px rgba(0,0,0,0.08);
            --shadow-lg: 0 10px 25px rgba(0,0,0,0.1), 0 5px 10px rgba(0,0,0,0.05);
            --shadow-xl: 0 20px 40px rgba(0,0,0,0.15), 0 10px 10px rgba(0,0,0,0.05);
            
            --radius-sm: 4px;
            --radius-md: 8px;
            --radius-lg: 12px;
            --radius-full: 9999px;
            
            --transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
        }
        
        [data-theme="dark"] {
            --primary: #534bae;
            --primary-light: #7a71d8;
            --primary-dark: #1a237e;
            --secondary: #4ebaaa;
            --secondary-light: #80e5d5;
            --secondary-dark: #00897b;
            --neutral: #121212;
            --neutral-dark: #1e1e1e;
            --text: #e0e0e0;
            --text-light: #9e9e9e;
            --white: #1e1e1e;
            --black: #e0e0e0;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Inter', sans-serif;
            line-height: 1.6;
            color: var(--text);
            background-color: var(--neutral);
            transition: var(--transition);
        }
        
        h1, h2, h3, h4 {
            font-family: 'Playfair Display', serif;
            line-height: 1.2;
            margin-bottom: 1rem;
        }
        
        h1 { font-size: 2.5rem; }
        h2 { font-size: 2rem; }
        h3 { font-size: 1.75rem; }
        h4 { font-size: 1.5rem; }
        
        @media (min-width: 768px) {
            h1 { font-size: 3.5rem; }
            h2 { font-size: 2.5rem; }
            h3 { font-size: 2rem; }
        }
        
        a {
            color: var(--primary);
            text-decoration: none;
            transition: var(--transition);
        }
        
        a:hover {
            color: var(--primary-light);
        }
        
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 1.5rem;
        }
        
        .btn {
            display: inline-block;
            padding: 0.75rem 1.5rem;
            border-radius: var(--radius-md);
            font-weight: 600;
            text-align: center;
            cursor: pointer;
            transition: var(--transition);
            border: none;
        }
        
        .btn-primary {
            background-color: var(--primary);
            color: var(--white);
        }
        
        .btn-primary:hover {
            background-color: var(--primary-light);
            box-shadow: var(--shadow-md);
        }
        
        .btn-secondary {
            background-color: var(--secondary);
            color: var(--white);
        }
        
        .btn-secondary:hover {
            background-color: var(--secondary-light);
            box-shadow: var(--shadow-md);
        }
        
        .btn-accent {
            background-color: var(--accent);
            color: var(--black);
        }
        
        .btn-accent:hover {
            background-color: var(--accent-light);
            box-shadow: var(--shadow-md);
        }
        
        .btn-outline {
            background-color: transparent;
            border: 2px solid var(--primary);
            color: var(--primary);
        }
        
        .btn-outline:hover {
            background-color: var(--primary);
            color: var(--white);
        }
        
        /* Header Styles */
        header {
            background-color: var(--white);
            box-shadow: var(--shadow-sm);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            transition: var(--transition);
        }
        
        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem 0;
        }
        
        .logo {
            display: flex;
            align-items: center;
            gap: 0.75rem;
        }
        
        .logo img {
            height: 40px;
        }
        
        .logo-text {
            font-family: 'Playfair Display', serif;
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--primary);
        }
        
        .nav-desktop {
            display: none;
        }
        
        .nav-mobile {
            display: block;
        }
        
        .nav-list {
            display: flex;
            list-style: none;
            gap: 1.5rem;
        }
        
        .nav-link {
            font-weight: 500;
            color: var(--text);
        }
        
        .nav-link:hover {
            color: var(--primary);
        }
        
        .auth-buttons {
            display: flex;
            gap: 1rem;
        }
        
        .hamburger {
            display: flex;
            flex-direction: column;
            gap: 5px;
            cursor: pointer;
            padding: 0.5rem;
        }
        
        .hamburger-line {
            width: 25px;
            height: 2px;
            background-color: var(--text);
            transition: var(--transition);
        }
        
        .mobile-menu {
            position: fixed;
            top: 70px;
            left: 0;
            width: 100%;
            background-color: var(--white);
            box-shadow: var(--shadow-md);
            padding: 1.5rem;
            transform: translateY(-150%);
            opacity: 0;
            transition: var(--transition);
            z-index: 999;
        }
        
        .mobile-menu.active {
            transform: translateY(0);
            opacity: 1;
        }
        
        .mobile-nav-list {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 1rem;
        }
        
        .mobile-auth-buttons {
            display: flex;
            flex-direction: column;
            gap: 1rem;
            margin-top: 1.5rem;
        }
        
        @media (min-width: 992px) {
            .nav-desktop {
                display: flex;
                align-items: center;
                gap: 2rem;
            }
            
            .nav-mobile {
                display: none;
            }
            
            .mobile-menu {
                display: none;
            }
        }
        
        /* Hero Section */
        .hero {
            padding: 8rem 0 4rem;
            background: linear-gradient(135deg, var(--primary) 0%, var(--primary-dark) 100%);
            color: var(--white);
            position: relative;
            overflow: hidden;
        }
        
        .hero::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" preserveAspectRatio="none"><path fill="rgba(255,255,255,0.05)" d="M0,0 L100,0 L100,100 L0,100 Z" /><path fill="none" stroke="rgba(255,255,255,0.1)" stroke-width="0.5" d="M0,50 L100,50 M50,0 L50,100" /></svg>');
            background-size: 50px 50px;
            opacity: 0.5;
        }
        
        .hero-content {
            position: relative;
            z-index: 1;
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }
        
        .hero h1 {
            margin-bottom: 1.5rem;
            color: var(--white);
        }
        
        .hero p {
            font-size: 1.25rem;
            margin-bottom: 2.5rem;
            color: rgba(255,255,255,0.9);
        }
        
        .hero-buttons {
            display: flex;
            gap: 1rem;
            justify-content: center;
            flex-wrap: wrap;
        }
        
        .hero-buttons .btn {
            min-width: 150px;
        }
        
        .verification-icons {
            display: flex;
            justify-content: center;
            gap: 2rem;
            margin-top: 3rem;
            flex-wrap: wrap;
        }
        
        .verification-icon {
            background-color: rgba(255,255,255,0.1);
            border-radius: var(--radius-full);
            width: 60px;
            height: 60px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
            animation: float 6s ease-in-out infinite;
        }
        
        .verification-icon:nth-child(2) {
            animation-delay: 1s;
        }
        
        .verification-icon:nth-child(3) {
            animation-delay: 2s;
        }
        
        .verification-icon:nth-child(4) {
            animation-delay: 3s;
        }
        
        @keyframes float {
            0% { transform: translateY(0); }
            50% { transform: translateY(-15px); }
            100% { transform: translateY(0); }
        }
        
        /* Features Section */
        .features {
            padding: 5rem 0;
            background-color: var(--white);
        }
        
        .section-title {
            text-align: center;
            margin-bottom: 3rem;
        }
        
        .section-title h2 {
            color: var(--primary);
            position: relative;
            display: inline-block;
        }
        
        .section-title h2::after {
            content: "";
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 3px;
            background-color: var(--secondary);
        }
        
        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
        }
        
        .feature-card {
            background-color: var(--white);
            border-radius: var(--radius-lg);
            padding: 2rem;
            box-shadow: var(--shadow-sm);
            transition: var(--transition);
            text-align: center;
            border: 1px solid var(--neutral-dark);
        }
        
        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-md);
        }
        
        .feature-icon {
            font-size: 2.5rem;
            color: var(--primary);
            margin-bottom: 1.5rem;
        }
        
        .feature-card h3 {
            margin-bottom: 1rem;
            color: var(--primary);
        }
        
        /* How It Works Section */
        .how-it-works {
            padding: 5rem 0;
            background-color: var(--neutral);
        }
        
        .steps {
            display: flex;
            flex-direction: column;
            gap: 2rem;
            max-width: 800px;
            margin: 0 auto;
            position: relative;
        }
        
        .steps::before {
            content: "";
            position: absolute;
            top: 0;
            left: 30px;
            height: 100%;
            width: 2px;
            background-color: var(--secondary);
            z-index: 1;
        }
        
        .step {
            display: flex;
            gap: 1.5rem;
            position: relative;
            z-index: 2;
        }
        
        .step-number {
            background-color: var(--secondary);
            color: var(--white);
            width: 60px;
            height: 60px;
            border-radius: var(--radius-full);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
            font-weight: 700;
            flex-shrink: 0;
        }
        
        .step-content {
            background-color: var(--white);
            border-radius: var(--radius-lg);
            padding: 1.5rem;
            box-shadow: var(--shadow-sm);
            flex-grow: 1;
        }
        
        .step-content h3 {
            color: var(--secondary-dark);
            margin-bottom: 0.5rem;
        }
        
        /* Demo Section */
        .demo {
            padding: 5rem 0;
            background-color: var(--white);
        }
        
        .demo-container {
            display: grid;
            grid-template-columns: 1fr;
            gap: 2rem;
        }
        
        @media (min-width: 992px) {
            .demo-container {
                grid-template-columns: 1fr 1fr;
            }
        }
        
        .demo-panel {
            background-color: var(--neutral);
            border-radius: var(--radius-lg);
            padding: 2rem;
            box-shadow: var(--shadow-sm);
        }
        
        .demo-panel h3 {
            color: var(--primary);
            margin-bottom: 1.5rem;
            text-align: center;
        }
        
        .input-group {
            margin-bottom: 1.5rem;
        }
        
        .input-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 500;
        }
        
        .input-group input,
        .input-group textarea,
        .input-group select {
            width: 100%;
            padding: 0.75rem 1rem;
            border: 1px solid var(--neutral-dark);
            border-radius: var(--radius-sm);
            font-family: inherit;
            font-size: 1rem;
            transition: var(--transition);
        }
        
        .input-group input:focus,
        .input-group textarea:focus,
        .input-group select:focus {
            outline: none;
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(26, 35, 126, 0.2);
        }
        
        .upload-area {
            border: 2px dashed var(--neutral-dark);
            border-radius: var(--radius-sm);
            padding: 2rem;
            text-align: center;
            cursor: pointer;
            transition: var(--transition);
            margin-bottom: 1.5rem;
        }
        
        .upload-area:hover {
            border-color: var(--primary);
        }
        
        .upload-area i {
            font-size: 2rem;
            color: var(--primary);
            margin-bottom: 1rem;
        }
        
        .upload-area p {
            color: var(--text-light);
        }
        
        .file-types {
            display: flex;
            gap: 0.5rem;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 1rem;
        }
        
        .file-type {
            background-color: var(--secondary-light);
            color: var(--white);
            padding: 0.25rem 0.75rem;
            border-radius: var(--radius-full);
            font-size: 0.75rem;
            font-weight: 600;
        }
        
        .sample-toggle {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            margin-bottom: 1.5rem;
            color: var(--text-light);
            font-size: 0.9rem;
        }
        
        .toggle-switch {
            position: relative;
            display: inline-block;
            width: 50px;
            height: 24px;
        }
        
        .toggle-switch input {
            opacity: 0;
            width: 0;
            height: 0;
        }
        
        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: var(--neutral-dark);
            transition: var(--transition);
            border-radius: var(--radius-full);
        }
        
        .slider:before {
            position: absolute;
            content: "";
            height: 16px;
            width: 16px;
            left: 4px;
            bottom: 4px;
            background-color: var(--white);
            transition: var(--transition);
            border-radius: var(--radius-full);
        }
        
        input:checked + .slider {
            background-color: var(--secondary);
        }
        
        input:checked + .slider:before {
            transform: translateX(26px);
        }
        
        .demo-results {
            background-color: var(--neutral);
            border-radius: var(--radius-lg);
            padding: 2rem;
            box-shadow: var(--shadow-sm);
            min-height: 300px;
            display: flex;
            flex-direction: column;
        }
        
        .result-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 1.5rem;
            padding-bottom: 1rem;
            border-bottom: 1px solid var(--neutral-dark);
        }
        
        .result-title {
            font-weight: 700;
            color: var(--primary);
        }
        
        .credibility-score {
            background-color: var(--secondary);
            color: var(--white);
            padding: 0.25rem 0.75rem;
            border-radius: var(--radius-full);
            font-weight: 700;
        }
        
        .result-details {
            flex-grow: 1;
        }
        
        .detail-item {
            margin-bottom: 1rem;
        }
        
        .detail-item h4 {
            font-size: 1rem;
            color: var(--text-light);
            margin-bottom: 0.25rem;
        }
        
        .sources-list {
            list-style: none;
        }
        
        .source-item {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            margin-bottom: 0.5rem;
        }
        
        .source-verification {
            width: 12px;
            height: 12px;
            border-radius: var(--radius-full);
            flex-shrink: 0;
        }
        
        .source-verification.verified {
            background-color: var(--success);
        }
        
        .source-verification.partial {
            background-color: var(--accent);
        }
        
        .source-verification.unverified {
            background-color: var(--error);
        }
        
        .bias-meter {
            height: 10px;
            background: linear-gradient(to right, #f44336, #ff9800, #8bc34a, #4caf50);
            border-radius: var(--radius-full);
            margin-top: 0.5rem;
            position: relative;
        }
        
        .bias-indicator {
            position: absolute;
            top: -5px;
            width: 2px;
            height: 20px;
            background-color: var(--black);
        }
        
        .bias-labels {
            display: flex;
            justify-content: space-between;
            font-size: 0.75rem;
            color: var(--text-light);
            margin-top: 0.25rem;
        }
        
        /* Testimonials Section */
        .testimonials {
            padding: 5rem 0;
            background-color: var(--neutral);
        }
        
        .testimonial-slider {
            max-width: 800px;
            margin: 0 auto;
            position: relative;
        }
        
        .testimonial-slide {
            background-color: var(--white);
            border-radius: var(--radius-lg);
            padding: 2rem;
            box-shadow: var(--shadow-sm);
            text-align: center;
            display: none;
        }
        
        .testimonial-slide.active {
            display: block;
            animation: fadeIn 0.5s ease-in-out;
        }
        
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        
        .testimonial-quote {
            font-size: 1.25rem;
            font-style: italic;
            margin-bottom: 1.5rem;
            color: var(--text);
            position: relative;
        }
        
        .testimonial-quote::before,
        .testimonial-quote::after {
            content: '"';
            font-size: 2rem;
            color: var(--secondary-light);
            opacity: 0.5;
        }
        
        .testimonial-quote::before {
            margin-right: 0.5rem;
        }
        
        .testimonial-quote::after {
            margin-left: 0.5rem;
        }
        
        .testimonial-author {
            font-weight: 700;
            color: var(--primary);
            margin-bottom: 0.5rem;
        }
        
        .testimonial-role {
            color: var(--text-light);
            font-size: 0.9rem;
        }
        
        .slider-controls {
            display: flex;
            justify-content: center;
            gap: 1rem;
            margin-top: 2rem;
        }
        
        .slider-dot {
            width: 12px;
            height: 12px;
            border-radius: var(--radius-full);
            background-color: var(--neutral-dark);
            cursor: pointer;
            transition: var(--transition);
        }
        
        .slider-dot.active {
            background-color: var(--secondary);
            transform: scale(1.2);
        }
        
        .trust-badges {
            display: flex;
            justify-content: center;
            gap: 2rem;
            flex-wrap: wrap;
            margin-top: 3rem;
        }
        
        .trust-badge {
            height: 40px;
            opacity: 0.7;
            transition: var(--transition);
        }
        
        .trust-badge:hover {
            opacity: 1;
        }
        
        /* API Section */
        .api {
            padding: 5rem 0;
            background-color: var(--white);
        }
        
        .api-content {
            display: grid;
            grid-template-columns: 1fr;
            gap: 2rem;
        }
        
        @media (min-width: 768px) {
            .api-content {
                grid-template-columns: 1fr 1fr;
            }
        }
        
        .api-description {
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
        }
        
        .api-description p {
            color: var(--text-light);
        }
        
        .code-sample {
            background-color: var(--neutral);
            border-radius: var(--radius-lg);
            padding: 1.5rem;
            overflow-x: auto;
        }
        
        .code-sample pre {
            margin: 0;
            font-family: 'Courier New', Courier, monospace;
            font-size: 0.9rem;
            line-height: 1.5;
            color: var(--text);
        }
        
        .code-keyword {
            color: #569cd6;
        }
        
        .code-string {
            color: #ce9178;
        }
        
        .code-comment {
            color: #6a9955;
        }
        
        .code-function {
            color: #dcdcaa;
        }
        
        .api-cta {
            margin-top: 2rem;
            text-align: center;
        }
        
        /* Ad Sections */
        .ad-section {
            background-color: var(--white);
            padding: 1.5rem;
            border-radius: var(--radius-sm);
            margin: 2rem 0;
            text-align: center;
            border: 1px dashed var(--neutral-dark);
        }
        
        .ad-label {
            font-size: 0.75rem;
            color: var(--text-light);
            margin-bottom: 0.5rem;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        
        /* Footer */
        footer {
            background-color: var(--primary-dark);
            color: var(--white);
            padding: 4rem 0 2rem;
        }
        
        .footer-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
            margin-bottom: 3rem;
        }
        
        .footer-logo {
            display: flex;
            align-items: center;
            gap: 0.75rem;
            margin-bottom: 1.5rem;
        }
        
        .footer-logo-text {
            font-family: 'Playfair Display', serif;
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--white);
        }
        
        .footer-about p {
            color: rgba(255,255,255,0.7);
            margin-bottom: 1.5rem;
        }
        
        .footer-social {
            display: flex;
            gap: 1rem;
        }
        
        .social-icon {
            width: 40px;
            height: 40px;
            border-radius: var(--radius-full);
            background-color: rgba(255,255,255,0.1);
            display: flex;
            align-items: center;
            justify-content: center;
            transition: var(--transition);
        }
        
        .social-icon:hover {
            background-color: var(--secondary);
            transform: translateY(-3px);
        }
        
        .footer-links h4 {
            color: var(--white);
            margin-bottom: 1.5rem;
            font-size: 1.25rem;
        }
        
        .footer-links ul {
            list-style: none;
        }
        
        .footer-links li {
            margin-bottom: 0.75rem;
        }
        
        .footer-links a {
            color: rgba(255,255,255,0.7);
        }
        
        .footer-links a:hover {
            color: var(--white);
            text-decoration: underline;
        }
        
        .newsletter h4 {
            color: var(--white);
            margin-bottom: 1.5rem;
            font-size: 1.25rem;
        }
        
        .newsletter p {
            color: rgba(255,255,255,0.7);
            margin-bottom: 1.5rem;
        }
        
        .newsletter-form {
            display: flex;
            gap: 0.5rem;
        }
        
        .newsletter-form input {
            flex-grow: 1;
            padding: 0.75rem 1rem;
            border: none;
            border-radius: var(--radius-sm);
            font-family: inherit;
        }
        
        .newsletter-form button {
            background-color: var(--secondary);
            color: var(--white);
            border: none;
            border-radius: var(--radius-sm);
            padding: 0 1.5rem;
            cursor: pointer;
            transition: var(--transition);
        }
        
        .newsletter-form button:hover {
            background-color: var(--secondary-light);
        }
        
        .footer-bottom {
            border-top: 1px solid rgba(255,255,255,0.1);
            padding-top: 2rem;
            text-align: center;
            color: rgba(255,255,255,0.5);
            font-size: 0.9rem;
        }
        
        /* Dark Mode Toggle */
        .theme-toggle {
            position: fixed;
            bottom: 2rem;
            right: 2rem;
            width: 50px;
            height: 50px;
            border-radius: var(--radius-full);
            background-color: var(--primary);
            color: var(--white);
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            box-shadow: var(--shadow-lg);
            z-index: 999;
            transition: var(--transition);
        }
        
        .theme-toggle:hover {
            transform: scale(1.1);
        }
        
        /* Loading Animation */
        .loading {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0,0,0,0.7);
            z-index: 9999;
            justify-content: center;
            align-items: center;
        }
        
        .loading.active {
            display: flex;
        }
        
        .loading-spinner {
            width: 50px;
            height: 50px;
            border: 5px solid rgba(255,255,255,0.3);
            border-radius: var(--radius-full);
            border-top-color: var(--secondary);
            animation: spin 1s ease-in-out infinite;
        }
        
        @keyframes spin {
            to { transform: rotate(360deg); }
        }
        
        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .hero {
                padding: 6rem 0 3rem;
            }
            
            .hero h1 {
                font-size: 2.5rem;
            }
            
            .hero-buttons {
                flex-direction: column;
                align-items: center;
            }
            
            .hero-buttons .btn {
                width: 100%;
                max-width: 300px;
            }
            
            .newsletter-form {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container header-container">
            <a href="index.html" class="logo">
                <img src="logo.svg" alt="FactCheck.AI Logo">
                <span class="logo-text">FactCheck.AI</span>
            </a>
            
            <nav class="nav-desktop">
                <ul class="nav-list">
                    <li><a href="#home" class="nav-link">Home</a></li>
                    <li><a href="#how-it-works" class="nav-link">How It Works</a></li>
                    <li><a href="#features" class="nav-link">Features</a></li>
                    <li><a href="#demo" class="nav-link">Demo</a></li>
                    <li><a href="#api" class="nav-link">API</a></li>
                    <li><a href="#contact" class="nav-link">Contact</a></li>
                </ul>
            </nav>
            
            <div class="auth-buttons">
                <button class="btn btn-outline">Login</button>
                <button class="btn btn-primary">Sign Up</button>
            </div>
            
            <div class="nav-mobile">
                <div class="hamburger" id="hamburger">
                    <div class="hamburger-line"></div>
                    <div class="hamburger-line"></div>
                    <div class="hamburger-line"></div>
                </div>
            </div>
        </div>
        
        <div class="mobile-menu" id="mobileMenu">
            <ul class="mobile-nav-list">
                <li><a href="#home" class="nav-link">Home</a></li>
                <li><a href="#how-it-works" class="nav-link">How It Works</a></li>
                <li><a href="#features" class="nav-link">Features</a></li>
                <li><a href="#demo" class="nav-link">Demo</a></li>
                <li><a href="#api" class="nav-link">API</a></li>
                <li><a href="#contact" class="nav-link">Contact</a></li>
            </ul>
            
            <div class="mobile-auth-buttons">
                <button class="btn btn-outline">Login</button>
                <button class="btn btn-primary">Sign Up</button>
            </div>
        </div>
    </header>
    
    <!-- Hero Section -->
    <section class="hero" id="home">
        <div class="container hero-content">
            <h1>AI-Powered Fact-Checking in Real Time</h1>
            <p>Verify any news across text, audio, and video sources instantly with our advanced artificial intelligence platform.</p>
            
            <div class="hero-buttons">
                <button class="btn btn-accent">Try Now</button>
                <button class="btn btn-secondary">See Demo</button>
            </div>
            
            <div class="verification-icons">
                <div class="verification-icon">
                    <i class="fas fa-check-circle"></i>
                </div>
                <div class="verification-icon">
                    <i class="fas fa-search"></i>
                </div>
                <div class="verification-icon">
                    <i class="fas fa-robot"></i>
                </div>
                <div class="verification-icon">
                    <i class="fas fa-globe"></i>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Ad Section -->
    <div class="container">
        <div class="ad-section">
            <div class="ad-label">Advertisement</div>
            <!-- Google AdSense Ad Unit -->
            <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-YOUR_ADSENSE_ID"
                crossorigin="anonymous"></script>
            <!-- FactCheck.AI Header Ad -->
            <ins class="adsbygoogle"
                style="display:block"
                data-ad-client="ca-pub-YOUR_ADSENSE_ID"
                data-ad-slot="YOUR_AD_SLOT_ID"
                data-ad-format="auto"
                data-full-width-responsive="true"></ins>
            <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
        </div>
    </div>
    
    <!-- Features Section -->
    <section class="features" id="features">
        <div class="container">
            <div class="section-title">
                <h2>Key Features</h2>
                <p>Our platform offers comprehensive verification capabilities</p>
            </div>
            
            <div class="features-grid">
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-bolt"></i>
                    </div>
                    <h3>Real-time Verification</h3>
                    <p>Get instant fact-checking results as news breaks, with continuous updates as new information emerges.</p>
                </div>
                
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-file-alt"></i>
                    </div>
                    <h3>Multi-format Support</h3>
                    <p>Analyze text articles, audio recordings, and video content with equal accuracy across all media types.</p>
                </div>
                
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-code-branch"></i>
                    </div>
                    <h3>Source Cross-Referencing</h3>
                    <p>Automatically compare claims against hundreds of trusted sources to establish veracity.</p>
                </div>
                
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-balance-scale"></i>
                    </div>
                    <h3>Bias Detection</h3>
                    <p>Identify political leanings and potential bias in news reporting with our advanced NLP algorithms.</p>
                </div>
                
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-history"></i>
                    </div>
                    <h3>Historical Accuracy Tracking</h3>
                    <p>See how often specific sources and authors have been accurate or misleading over time.</p>
                </div>
                
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-plug"></i>
                    </div>
                    <h3>API Access</h3>
                    <p>Integrate our verification engine directly into your applications with our developer-friendly API.</p>
                </div>
            </div>
        </div>
    </section>
    
    <!-- How It Works Section -->
    <section class="how-it-works" id="how-it-works">
        <div class="container">
            <div class="section-title">
                <h2>How It Works</h2>
                <p>Verify information in just four simple steps</p>
            </div>
            
            <div class="steps">
                <div class="step">
                    <div class="step-number">1</div>
                    <div class="step-content">
                        <h3>Submit Content</h3>
                        <p>Paste a URL, upload text, or provide audio/video files for analysis. Our system accepts multiple formats and languages.</p>
                    </div>
                </div>
                
                <div class="step">
                    <div class="step-number">2</div>
                    <div class="step-content">
                        <h3>AI Analysis</h3>
                        <p>Our algorithms process the content, extracting claims and comparing them against 100+ trusted sources in real-time.</p>
                    </div>
                </div>
                
                <div class="step">
                    <div class="step-number">3</div>
                    <div class="step-content">
                        <h3>Get Credibility Score</h3>
                        <p>Receive an immediate assessment with a confidence rating and key evidence supporting or contradicting the claims.</p>
                    </div>
                </div>
                
                <div class="step">
                    <div class="step-number">4</div>
                    <div class="step-content">
                        <h3>Detailed Report</h3>
                        <p>Access a comprehensive breakdown with source citations, historical context, and bias analysis for complete transparency.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Demo Section -->
    <section class="demo" id="demo">
        <div class="container">
            <div class="section-title">
                <h2>Try It Yourself</h2>
                <p>Experience our fact-checking capabilities with this interactive demo</p>
            </div>
            
            <div class="demo-container">
                <div class="demo-panel">
                    <h3>Submit Content for Verification</h3>
                    
                    <div class="input-group">
                        <label for="content-url">Article URL</label>
                        <input type="url" id="content-url" placeholder="https://example.com/news-article">
                    </div>
                    
                    <div class="input-group">
                        <label for="content-text">Or paste text</label>
                        <textarea id="content-text" rows="4" placeholder="Paste the text you want to verify..."></textarea>
                    </div>
                    
                    <div class="upload-area" id="uploadArea">
                        <i class="fas fa-cloud-upload-alt"></i>
                        <p>Drag & drop audio/video files here or click to browse</p>
                        <div class="file-types">
                            <span class="file-type">MP3</span>
                            <span class="file-type">WAV</span>
                            <span class="file-type">MP4</span>
                            <span class="file-type">MOV</span>
                        </div>
                    </div>
                    
                    <div class="sample-toggle">
                        <span>Use sample content</span>
                        <label class="toggle-switch">
                            <input type="checkbox" id="sampleToggle">
                            <span class="slider"></span>
                        </label>
                    </div>
                    
                    <button class="btn btn-primary" id="verifyButton" style="width: 100%;">Verify Now</button>
                </div>
                
                <div class="demo-results" id="demoResults">
                    <div class="result-header">
                        <h3 class="result-title">Verification Results</h3>
                        <span class="credibility-score" id="credibilityScore">--</span>
                    </div>
                    
                    <div class="result-details">
                        <div class="detail-item">
                            <h4>Claim Detection</h4>
                            <p id="claimDetection">Submit content to see detected claims</p>
                        </div>
                        
                        <div class="detail-item">
                            <h4>Source Verification</h4>
                            <ul class="sources-list" id="sourcesList">
                                <li>No sources analyzed yet</li>
                            </ul>
                        </div>
                        
                        <div class="detail-item">
                            <h4>Bias Analysis</h4>
                            <div class="bias-meter">
                                <div class="bias-indicator" id="biasIndicator" style="left: 50%;"></div>
                            </div>
                            <div class="bias-labels">
                                <span>Left</span>
                                <span>Neutral</span>
                                <span>Right</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Ad Section -->
    <div class="container">
        <div class="ad-section">
            <div class="ad-label">Advertisement</div>
            <!-- Google AdSense Ad Unit -->
            <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-YOUR_ADSENSE_ID"
                crossorigin="anonymous"></script>
            <!-- FactCheck.AI Midpage Ad -->
            <ins class="adsbygoogle"
                style="display:block"
                data-ad-client="ca-pub-YOUR_ADSENSE_ID"
                data-ad-slot="YOUR_AD_SLOT_ID"
                data-ad-format="auto"
                data-full-width-responsive="true"></ins>
            <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
        </div>
    </div>
    
    <!-- Testimonials Section -->
    <section class="testimonials">
        <div class="container">
            <div class="section-title">
                <h2>Trusted by Professionals</h2>
                <p>What industry experts say about FactCheck.AI</p>
            </div>
            
            <div class="testimonial-slider">
                <div class="testimonial-slide active">
                    <p class="testimonial-quote">FactCheck.AI has revolutionized our fact-checking process, reducing verification time by 80% while improving accuracy. An essential tool for modern journalism.</p>
                    <p class="testimonial-author">Sarah Johnson</p>
                    <p class="testimonial-role">Investigative Reporter, The Daily Chronicle</p>
                </div>
                
                <div class="testimonial-slide">
                    <p class="testimonial-quote">As a researcher, I rely on FactCheck.AI to quickly validate claims across multiple sources. The bias detection feature is particularly valuable for academic work.</p>
                    <p class="testimonial-author">Dr. Michael Chen</p>
                    <p class="testimonial-role">Political Science Professor, Stanford University</p>
                </div>
                
                <div class="testimonial-slide">
                    <p class="testimonial-quote">Our newsroom integrated FactCheck.AI into our editorial workflow, and it's become indispensable for maintaining our reputation as a trusted source.</p>
                    <p class="testimonial-author">Emma Rodriguez</p>
                    <p class="testimonial-role">Editor-in-Chief, Global News Network</p>
                </div>
                
                <div class="slider-controls">
                    <div class="slider-dot active" data-slide="0"></div>
                    <div class="slider-dot" data-slide="1"></div>
                    <div class="slider-dot" data-slide="2"></div>
                </div>
            </div>
            
            <div class="trust-badges">
                <img src="trust-badge-1.svg" alt="Trusted by Journalists" class="trust-badge">
                <img src="trust-badge-2.svg" alt="Academic Partner" class="trust-badge">
                <img src="trust-badge-3.svg" alt="Verified Technology" class="trust-badge">
                <img src="trust-badge-4.svg" alt="Media Council Approved" class="trust-badge">
            </div>
        </div>
    </section>
    
    <!-- API Section -->
    <section class="api" id="api">
        <div class="container">
            <div class="section-title">
                <h2>Developer API</h2>
                <p>Integrate our fact-checking capabilities into your applications</p>
            </div>
            
            <div class="api-content">
                <div class="api-description">
                    <p>Our comprehensive API allows developers to integrate FactCheck.AI's verification engine directly into their applications, websites, and services.</p>
                    
                    <p>With simple RESTful endpoints, you can submit content for analysis and receive structured verification results in JSON format, complete with credibility scores, source references, and bias assessments.</p>
                    
                    <p>Key API features include:</p>
                    <ul>
                        <li>Real-time text, audio, and video analysis</li>
                        <li>Batch processing for high-volume needs</li>
                        <li>Webhook support for asynchronous processing</li>
                        <li>Comprehensive documentation with code samples</li>
                        <li>Developer dashboard with usage analytics</li>
                    </ul>
                </div>
                
                <div class="code-sample">
                    <pre><code><span class="code-keyword">const</span> <span class="code-function">verifyContent</span> = <span class="code-keyword">async</span> (content) => {
  <span class="code-keyword">const</span> response = <span class="code-keyword">await</span> fetch(<span class="code-string">'https://api.factcheck.ai/v1/verify'</span>, {
    method: <span class="code-string">'POST'</span>,
    headers: {
      <span class="code-string">'Content-Type'</span>: <span class="code-string">'application/json'</span>,
      <span class="code-string">'Authorization'</span>: <span class="code-string">'Bearer YOUR_API_KEY'</span>
    },
    body: <span class="code-function">JSON</span>.stringify({
      content: content,
      format: <span class="code-string">'text'</span>, <span class="code-comment">// or 'audio', 'video', 'url'</span>
      detailed: <span class="code-keyword">true</span>
    })
  });
  
  <span class="code-keyword">return</span> <span class="code-keyword">await</span> response.<span class="code-function">json</span>();
};

<span class="code-comment">// Example usage</span>
<span class="code-keyword">const</span> results = <span class="code-keyword">await</span> <span class="code-function">verifyContent</span>(<span class="code-string">'Sample claim to verify...'</span>);
<span class="code-function">console</span>.log(results.credibilityScore);</code></pre>
                </div>
            </div>
            
            <div class="api-cta">
                <button class="btn btn-primary">Get API Keys</button>
                <a href="#" class="btn btn-outline" style="margin-left: 1rem;">View Full Documentation</a>
            </div>
        </div>
    </section>
    
    <!-- Footer -->
    <footer id="contact">
        <div class="container">
            <div class="footer-grid">
                <div class="footer-about">
                    <div class="footer-logo">
                        <img src="logo-white.svg" alt="FactCheck.AI Logo">
                        <span class="footer-logo-text">FactCheck.AI</span>
                    </div>
                    <p>Our mission is to combat misinformation and promote media literacy through advanced AI technology and transparent verification processes.</p>
                    
                    <div class="footer-social">
                        <a href="#" class="social-icon"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-github"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                
                <div class="footer-links">
                    <h4>Quick Links</h4>
                    <ul>
                        <li><a href="#home">Home</a></li>
                        <li><a href="#features">Features</a></li>
                        <li><a href="#how-it-works">How It Works</a></li>
                        <li><a href="#demo">Demo</a></li>
                        <li><a href="#api">API</a></li>
                        <li><a href="#">Pricing</a></li>
                    </ul>
                </div>
                
                <div class="footer-links">
                    <h4>Resources</h4>
                    <ul>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Documentation</a></li>
                        <li><a href="#">Case Studies</a></li>
                        <li><a href="#">Media Kit</a></li>
                        <li><a href="#">Research Papers</a></li>
                        <li><a href="#">Help Center</a></li>
                    </ul>
                </div>
                
                <div class="footer-links">
                    <h4>Company</h4>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Team</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Partners</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                
                <div class="newsletter">
                    <h4>Stay Updated</h4>
                    <p>Subscribe to our newsletter for the latest updates on fact-checking technology and media literacy.</p>
                    
                    <form class="newsletter-form">
                        <input type="email" placeholder="Your email address" required>
                        <button type="submit"><i class="fas fa-paper-plane"></i></button>
                    </form>
                </div>
            </div>
            
            <div class="footer-bottom">
                <p>&copy; 2023 FactCheck.AI. All rights reserved.</p>
                <p>
                    <a href="#">Privacy Policy</a> | 
                    <a href="#">Terms of Service</a> | 
                    <a href="#">Cookie Policy</a>
                </p>
            </div>
        </div>
    </footer>
    
    <!-- Theme Toggle -->
    <div class="theme-toggle" id="themeToggle">
        <i class="fas fa-moon"></i>
    </div>
    
    <!-- Loading Overlay -->
    <div class="loading" id="loadingOverlay">
        <div class="loading-spinner"></div>
    </div>
    
    <!-- JavaScript -->
    <script>
        // Mobile Menu Toggle
        const hamburger = document.getElementById('hamburger');
        const mobileMenu = document.getElementById('mobileMenu');
        
        hamburger.addEventListener('click', () => {
            mobileMenu.classList.toggle('active');
            hamburger.classList.toggle('active');
        });
        
        // Demo Functionality
        const verifyButton = document.getElementById('verifyButton');
        const demoResults = document.getElementById('demoResults');
        const credibilityScore = document.getElementById('credibilityScore');
        const claimDetection = document.getElementById('claimDetection');
        const sourcesList = document.getElementById('sourcesList');
        const biasIndicator = document.getElementById('biasIndicator');
        const sampleToggle = document.getElementById('sampleToggle');
        const uploadArea = document.getElementById('uploadArea');
        const loadingOverlay = document.getElementById('loadingOverlay');
        
        // Sample data for demo
        const sampleResults = {
            score: 82,
            claim: "The platform detected 3 primary claims about economic growth, healthcare policy, and climate change.",
            sources: [
                { name: "Reuters", verification: "verified", url: "#" },
                { name: "Associated Press", verification: "verified", url: "#" },
                { name: "PolitiFact", verification: "verified", url: "#" },
                { name: "FactCheck.org", verification: "partial", url: "#" },
                { name: "Unknown Blog", verification: "unverified", url: "#" }
            ],
            bias: 65 // 0-100 scale (50 = neutral)
        };
        
        verifyButton.addEventListener('click', () => {
            // Show loading
            loadingOverlay.classList.add('active');
            
            // Simulate API call delay
            setTimeout(() => {
                loadingOverlay.classList.remove('active');
                
                // Update results with sample data
                credibilityScore.textContent = sampleResults.score;
                claimDetection.textContent = sampleResults.claim;
                
                // Update sources list
                sourcesList.innerHTML = '';
                sampleResults.sources.forEach(source => {
                    const li = document.createElement('li');
                    li.className = 'source-item';
                    
                    const verification = document.createElement('div');
                    verification.className = `source-verification ${source.verification}`;
                    
                    const link = document.createElement('a');
                    link.href = source.url;
                    link.textContent = source.name;
                    link.target = '_blank';
                    
                    li.appendChild(verification);
                    li.appendChild(link);
                    sourcesList.appendChild(li);
                });
                
                // Update bias indicator
                biasIndicator.style.left = `${sampleResults.bias}%`;
                
                // Scroll to results
                demoResults.scrollIntoView({ behavior: 'smooth', block: 'nearest' });
            }, 1500);
        });
        
        // Sample toggle functionality
        sampleToggle.addEventListener('change', (e) => {
            const contentUrl = document.getElementById('content-url');
            const contentText = document.getElementById('content-text');
            
            if (e.target.checked) {
                contentUrl.value = 'https://example.com/sample-news-article';
                contentText.value = 'The government announced a new economic plan that will create 2 million jobs in the next year, according to officials. Critics argue the plan underestimates inflation risks.';
            } else {
                contentUrl.value = '';
                contentText.value = '';
            }
        });
        
        // Upload area interaction
        uploadArea.addEventListener('click', () => {
            // In a real implementation, this would trigger file selection
            console.log('File upload triggered');
        });
        
        // Testimonial slider
        const testimonialSlides = document.querySelectorAll('.testimonial-slide');
        const sliderDots = document.querySelectorAll('.slider-dot');
        let currentSlide = 0;
        
        function showSlide(index) {
            testimonialSlides.forEach(slide => slide.classList.remove('active'));
            sliderDots.forEach(dot => dot.classList.remove('active'));
            
            testimonialSlides[index].classList.add('active');
            sliderDots[index].classList.add('active');
            currentSlide = index;
        }
        
        sliderDots.forEach((dot, index) => {
            dot.addEventListener('click', () => showSlide(index));
        });
        
        // Auto-advance slides
        setInterval(() => {
            let nextSlide = (currentSlide + 1) % testimonialSlides.length;
            showSlide(nextSlide);
        }, 5000);
        
        // Theme toggle
        const themeToggle = document.getElementById('themeToggle');
        const themeIcon = themeToggle.querySelector('i');
        
        themeToggle.addEventListener('click', () => {
            const html = document.documentElement;
            const isDark = html.getAttribute('data-theme') === 'dark';
            
            if (isDark) {
                html.setAttribute('data-theme', 'light');
                themeIcon.classList.replace('fa-sun', 'fa-moon');
            } else {
                html.setAttribute('data-theme', 'dark');
                themeIcon.classList.replace('fa-moon', 'fa-sun');
            }
        });
        
        // Smooth scrolling for anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function(e) {
                e.preventDefault();
                
                const targetId = this.getAttribute('href');
                if (targetId === '#') return;
                
                const targetElement = document.querySelector(targetId);
                if (targetElement) {
                    // Close mobile menu if open
                    mobileMenu.classList.remove('active');
                    hamburger.classList.remove('active');
                    
                    // Scroll to target
                    targetElement.scrollIntoView({
                        behavior: 'smooth'
                    });
                }
            });
        });
    </script>
</body>
</html>
