#import ("dart:html");

String template = @'
<div style="position: fixed; bottom: 0; right: 0" id="soundclicker">
	Start SoundClicker: <button>Go</button>
</div>';
void main() {
	// var ctrl_panel = new Element(template);
	// document.query("body").nodes.add(ctrl_panel);
	var t = document.query("#myform table tr:last-child td:not(.label)");
	if(t.innerHTML.contains("Sorry")) {
		//window.location.href = window.location.href;
		print("Would reload");
	}
}
