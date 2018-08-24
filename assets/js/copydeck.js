function copytext() {
  var $copyText = document.getElementById('n');
  $copyText.select();
  document.execCommand("copy");
  alert("Đã copy: " + $copyText.value);
  $copyText.remove();
}
