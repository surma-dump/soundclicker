#import ("dart:html");

String template = @'
<div style="position: fixed; bottom: 0; right: 0; background-color: white; border: 2px solid black;" id="soundclicker">
	Start SoundClicker: <button>Go</button>
</div>';

void injectHTML(String html) {
	var ctrl_panel = new Element.html(html);
	document.query("body").nodes.add(ctrl_panel);
}

void reloadPage() {
	var url = window.location.href;
	if(!isActive()) {
		url += "&active";
	}
	window.location.href = url;
}

bool isActive() {
	var url = window.location.href;
	return url.contains("&active");
}

void main() {
	injectHTML(template);
	document.query("#soundclicker button").on.click.add((event) {
		print("in here");
		reloadPage();
	});

	var t = document.query("#myform table tr:last-child td:not(.label)");
	print("Active? "+isActive());
	if(t.innerHTML.contains("Sorry") && isActive()) {
		reloadPage();
	}
}
