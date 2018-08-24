var decoder = deckDecoder();
var showDeck = function(text) {
  // var encoded = document.getElementById('deckString').value;
  // var encoded = document.createElement('string');
  var encoded = text;

  decoder.decode(encoded).then((deck) => {
    document.getElementById("type").innerText = deck.type + ' Deck';
    document.getElementById("hero").innerText = deck.hero.name + ' (' + deck.heroClass + ')';
    var list = document.getElementById("cards");
    list.innerHTML = "";
    for (var i = 0; i < deck.cards.length; i++) {
    var card = deck.cards[i].card;
      var row = document.createElement("li");
      var image = document.createElement("img");
      image.setAttribute("src", "http://media.services.zam.com/v1/media/byName/hs/cards/enus/animated/" + card.id+ "_premium.gif");
      row.appendChild(image);
      row.appendChild(document.createTextNode(deck.cards[i].count + "x - "+ card.name));
      list.appendChild(row);
    }
  });
};

var showDeckID = function() {
  var encoded = document.getElementById('deckString').value;
  decoder.decode(encoded).then((deck) => {
    document.getElementById("type").innerText = deck.type + ' Deck';
    document.getElementById("hero").innerText = deck.hero.name + ' (' + deck.heroClass + ')';
    var list = document.getElementById("cards");
    list.innerHTML = "";
    for (var i = 0; i < deck.cards.length; i++) {
    var card = deck.cards[i].card;
      var row = document.createElement("li");
      var image = document.createElement("img");
      image.setAttribute("src", "http://media.services.zam.com/v1/media/byName/hs/cards/enus/animated/" + card.id+ "_premium.gif");
      row.appendChild(image);
      row.appendChild(document.createTextNode(deck.cards[i].count + "x - "+ card.name));
      list.appendChild(row);
    }
  });
};
