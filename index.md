---
layout: home
---

<section class="hero">
  <h1>Description <span>stuff</span></h1>
  <div class="hero-buttons">
    <a href="#" class="btn btn-primary" id="downloadBtn">Download Now</a>
    <a href="{{ '/docs/getting-started/' | relative_url }}" class="btn btn-secondary">Documentation</a>
  </div>
</section>

<script>
(function() {
  var btn = document.getElementById('downloadBtn');
  if (!btn) return;
  var ua = navigator.userAgent;
  if (/Mac/i.test(ua)) {
    btn.textContent = 'Download for macOS';
    btn.href = '#download-macos';
  } else if (/Win/i.test(ua)) {
    btn.textContent = 'Download for Windows';
    btn.href = '#download-windows';
  } else if (/Linux/i.test(ua)) {
    btn.textContent = 'Download for Linux';
    btn.href = '#download-linux';
  }
})();
</script>

<section class="features">
  <div class="features-col">
    <h2>Features</h2>

    <div class="feature-group">
      <h3>Powerful</h3>
      <ul>
        <li>Blazing fast performance with zero-config setup</li>
        <li>Built-in support for modern workflows and tooling</li>
        <li>Extensible plugin architecture for any use case</li>
        <li>First-class API that is <a href="#">discoverable</a>, <a href="#">versioned</a>, and <a href="#">documented</a></li>
      </ul>
    </div>

    <div class="feature-group">
      <h3>Developer Experience</h3>
      <ul>
        <li>Strong defaults with a clean, minimalist interface</li>
        <li>Built-in <a href="#">LSP support</a> for code intelligence</li>
        <li>Live reload and hot module replacement</li>
        <li>Comprehensive CLI with intuitive commands</li>
      </ul>
    </div>

    <div class="feature-group">
      <h3>Flexible</h3>
      <ul>
        <li>Deploy anywhere — cloud, edge, or on-premise</li>
        <li>Integrate with your existing stack seamlessly</li>
        <li>Scale from prototype to production effortlessly</li>
      </ul>
    </div>
  </div>

  <div class="features-video">
    <div class="video-embed">
      <iframe src="https://www.youtube.com/embed/watch?v=3ymwOvzhwHs&list=RD3ymwOvzhwHs&start_radio=1" title="Product Demo" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
  </div>
</section>