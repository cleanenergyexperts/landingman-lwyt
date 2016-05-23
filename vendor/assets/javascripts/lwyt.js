//= require jquery
$(function() {
  function labnolThumb(id) {
    return '<img class="youtube-thumb" src="//i.ytimg.com/vi/' + id + '/sddefault.jpg"><div class="play-button"></div>';
  }
  function labnolIframe() {
    var iframe = document.createElement("iframe");
    iframe.setAttribute("src", "//www.youtube.com/embed/" + this.parentNode.dataset.id + "?autoplay=1&border=0&enablejsapi=1&fs=1&modestbranding=1");
    iframe.setAttribute("frameborder", "0");
    iframe.setAttribute("id", "youtube-iframe");
    if (this.parentNode.dataset.width)
      iframe.width = this.parentNode.dataset.width;
    if (this.parentNode.dataset.height)
      iframe.height = this.parentNode.dataset.height;
    this.parentNode.replaceChild(iframe, this);
  }
  var v = document.getElementsByClassName("youtube-player");
  for (var n = 0; n < v.length; n++) {
    var p = document.createElement("div");
    p.innerHTML = labnolThumb(v[n].dataset.id);
    p.onclick = labnolIframe;
    v[n].appendChild(p);
  }
});