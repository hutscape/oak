**[Option A]: Install new board in Arduino IDE**

[Copy and paste the JSON URL](https://raw.githubusercontent.com/hutscape/arduino-board-index/main/package_hutscape_index.json) into the File > Preferences > "Additional Boards Manager" textbox in Arduino IDE

[![Paste board URL]({{site.url}}/images/code/paste-board-url.png)]({{site.url}}/images/code/paste-board-url.png)

Restart Arduino IDE. Go to Tools > Boards Manager > Search for Hutscape or Oak

[![Install custom board]({{site.url}}/images/code/install-custom-board.png)]({{site.url}}/images/code/install-custom-board.png)

[![Installation of custom board is successful]({{site.url}}/images/code/custom-board-installed.png)]({{site.url}}/images/code/custom-board-installed.png)

**[Option B]: Use Makefile**

Run `make` to upload the sketch to the board.

[![Run the command make to upload the code to the board]({{site.url}}/images/code/make-to-install.png)]({{site.url}}/images/code/make-to-install.png)

[![Successfully uploaded the code to the board]({{site.url}}/images/code/make-successful.png)]({{site.url}}/images/code/make-successful.png)
