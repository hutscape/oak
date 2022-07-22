---
layout: start
title: Getting Started
permalink: /
sequence: 1

manufacturing: true
downloads:
  schematic: true
  layout: true
  kicad: true
  gerber: true
  bom: true
software:
  - name: Demo firmware
    code: _code/demo
features:
  - detail: Configure the 2 nodes with addresses <code>0xAA</code> and <code>0xBB</code> so that they can communicate with each other via LoRa
  - detail: Know when the current node does not have any GPS fix yet
  - detail: Display the current latitude-longitude
  - detail: Display the latitude-longitude with a relative time ago, which is the last GPS fix time
  - detail: Display the Haversine distance with the peer nodes
  - detail: Display the Haversine distance with a relative time ago when both nodes had a GPS fix
---
<section class="section is-small">
  <div class="container">
    <h2 class="title is-1">Getting Started</h2>
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
              <p class="subtitle">[Option A]: Install new board in Arduino IDE</p>
              <p>Copy and paste the following URL into the File > Preferences > "Additional Boards Manager" textbox in Arduino IDE</p>
              <code> https://raw.githubusercontent.com/hutscape/arduino-board-index/main/package_hutscape_index.json</code>
              <a href="{{site.url}}/images/code/paste-board-url.png">
                <img src="{{site.url}}/images/code/paste-board-url.png" alt="Paste board URL">
              </a>
              <p>Restart Arduino IDE. Go to Tools > Boards Manager > Search for Hutscape or Oak</p>
              <a href="{{site.url}}/images/code/install-custom-board.png">
                <img src="{{site.url}}/images/code/install-custom-board.png" alt="Install custom board">
              </a>
              <a href="{{site.url}}/images/code/custom-board-installed.png">
                <img src="{{site.url}}/images/code/custom-board-installed.png" alt="Installation of custom board is successful">
              </a>
              <p class="subtitle">[Option B]: Use Makefile</p>
              <p>Run <code>make</code> to upload the sketch to the board.</p>
              <a href="{{site.url}}/images/code/make-to-install.png">
                <img src="{{site.url}}/images/code/make-to-install.png" alt="Run the command make to upload the code to the board">
              </a>
              <a href="{{site.url}}/images/code/make-successful.png">
                <img src="{{site.url}}/images/code/make-successful.png" alt="Successfully uploaded the code to the board">
              </a>
            </article>
          </div>
          <div class="tile is-parent">
            <article class="tile is-child notification">
              <div class="content">
                <p class="title">Step 3</p>
                <p class="subtitle">Try the <a href="{{site.url}}/code/hello-world">Blinky LED code</a> or other <a href="{{site.url}}/code">code examples</a>.</p>
                <a href="{{site.url}}/images/code/eink-prototype.jpg">
                  <img src="{{site.url}}/images/code/eink-prototype.jpg" alt="Typical setup">
                </a>
                <p class="subtitle">[Option A]: Use Arduino IDE</p>
                <a href="{{site.url}}/images/code/option-a-ide-blinky.png">
                  <img src="{{site.url}}/images/code/option-a-ide-blinky.png" alt="Use Arduino IDE to upoad blinky firmware">
                </a>
                <p class="subtitle">[Option B]: Use Makefile</p>
                <a href="{{site.url}}/images/code/option-b-makefile-blinky.png">
                  <img src="{{site.url}}/images/code/option-b-makefile-blinky.png" alt="Use Makefile to upload the blinky firmware">
                </a>
              </div>
            </article>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
