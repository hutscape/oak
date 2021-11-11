---
layout: start
title: Getting Started
permalink: /
sequence: 1

manufacturing: true
downloads: true
download_schematic: true
download_layout: true
download_kicad: true
download_gerber: false
download_bom: true
---
<section class="section is-small">
  <div class="container">
    <h2 class="title is-1">Getting Started</h2>
    <div class="tags has-addons">
      <span class="tag is-medium is-light">status</span>
      <span class="tag is-medium is-warning">ongoing</span>
    </div>

  <div class="tile is-ancestor">
    <div class="tile is-vertical is-12">
      <div class="tile">
        <div class="tile is-parent">
          <article class="tile is-child notification">
            <p class="title">Step 1</p>
            <p class="subtitle">Assemble the components.</p>
            <p>Screw in the E-Ink screen, the LoRa antenna and insert the 18650 battery at the back.</p>
            <a href="{{site.url}}/images/prototype/front.jpg">
              <img src="{{site.url}}/images/prototype/front.jpg" alt="Final assembly">
            </a>
            <a href="{{site.url}}/images/prototype/back.jpg">
              <img src="{{site.url}}/images/prototype/back.jpg" alt="With the battery">
            </a>
          </article>
        </div>
        <div class="tile is-parent">
          <article class="tile is-child notification">
            <p class="title">Step 2</p>
            <p class="subtitle">Install the custom Arduino board in the Arduino IDE.</p>
            <p>Copy and paste the following URL into the File > Preferences > "Additional Boards Manager" textbox in Arduino IDE</p>
            <a href="{{site.url}}/images/examples/paste-board-url.png">
              <img src="{{site.url}}/images/examples/paste-board-url.png" alt="Paste board URL">
            </a>
            <p>Restart Arduino IDE. Go to Tools > Boards Manager > Search for Hutscape or Oak</p>
            <a href="{{site.url}}/images/examples/install-custom-board.png">
              <img src="{{site.url}}/images/examples/install-custom-board.png" alt="Install custom board">
            </a>
            <a href="{{site.url}}/images/examples/custom-board-installed.png">
              <img src="{{site.url}}/images/examples/custom-board-installed.png" alt="Installation of custom board is successful">
            </a>
          </article>
        </div>
        <div class="tile is-parent">
          <article class="tile is-child notification">
            <div class="content">
              <p class="title">Step 3</p>
              <p class="subtitle">Try the <a href="/examples/hello-world">Blinky LED code</a> or other <a href="/examples">examples</a>.</p>
              <a href="{{site.url}}/images/examples/eink-prototype.jpg">
                <img src="{{site.url}}/images/examples/eink-prototype.jpg" alt="Typical setup">
              </a>
            </div>
          </article>
        </div>
      </div>
    </div>
  </div>
  </div>
</section>
