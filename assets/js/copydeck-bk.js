function copyToClipboard(text){
  // setup the varriables
  var textarea = document.createElement("textarea");
  var answer = '';

  textarea.value = text;
  textarea.setAttribute('id','clipboard-textarea');
  document.body.appendChild(textarea);
   // Select some text (you could also create a range)
   textarea.select();

   // Use try & catch for unsupported browser
   try {

       // The important part (copy selected text)
       var successful = document.execCommand('copy');

       if(successful) answer = 'Copied!';
       else answer = 'Unable to copy!';
   } catch (err) {
       answer = 'Unsupported Browser!';
   }
  document.body.removeChild(textarea);

};
