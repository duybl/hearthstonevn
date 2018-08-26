var deckDecoder = function() {
	var reader = function(encoded) {
		var index = 0;
		var bytes = atob(encoded);

		var _reader = {};
		_reader['nextByte'] = function() {
			return bytes.charCodeAt(index++);
		};

		_reader['nextVarInt'] = function() {
			var read = [];
			var next = 128;
			var result = 0;
			var multiplier = 1;
			while (next >= 128) {
				next = _reader.nextByte();
				read.push(next & 127);
			}
			for (var i = 0; i < read.length; i++) {
				result += read[i] * multiplier;
				multiplier *= 128;
			}
			return result;
		};
		return _reader;
	};


	var lookup = fetch('https://api.hearthstonejson.com/v1/latest/enUS/cards.collectible.json')
			.then((response) => response.json())
			.then(function(data){
				var result = {};
				for (var i = 0; i < data.length; i++) {
					result[data[i]['dbfId']] = data[i];
				}
				return result;
			});

	var cardClasses = {
		'WARRIOR': 'Warrior',
		'HUNTER': 'Hunter',
		'DRUID': 'Druid',
		'MAGE': 'Mage',
		'PALADIN': 'Paladin',
		'PRIEST': 'Priest',
		'WARLOCK': 'Warlock',
		'ROGUE': 'Rogue',
		'SHAMAN': 'Shaman',
		'NEUTRAL': 'All Classes'
	};

	var resolve = function(deck, lookup) {
		var cards = [];
		for (var i = 0; i < deck.cards.length; i++) {
			cards.push({count: deck.cards[i].count, card: lookup[deck.cards[i].dbfId]})
		}
		cards.sort(function(a, b) {
			var result = a.card.cost - b.card.cost;
			if (result !== 0) {
				return result;
			}
			return (a.card.name > b.card.name) - (a.card.name < b.card.name);
		});
		return {heroClass: cardClasses[lookup[deck.hero].cardClass], type: (deck.type === 1 ? "Wild" : "Standard"), hero: lookup[deck.hero], cards: cards};
		// return {heroClass: cardClasses[lookup[deck.hero].cardClass], type: (deck.type === 1 ? "Wild" : "Standard"), hero: lookup[deck.hero], cards: cards};
	};

	var deck = function(encoded) {
		var hero = null;
		var entries = [];
		var r = reader(encoded);
		r.nextByte();
		r.nextVarInt();
		var type = r.nextVarInt();
		var heroes = r.nextVarInt();
		for (var i = 0; i < heroes; i++) {
			hero = r.nextVarInt();
		}
		var singles = r.nextVarInt();
		for (var i = 0; i < singles; i++) {
			entries.push({ count: 1, dbfId: r.nextVarInt()});
		}
		var doubles = r.nextVarInt();
		for (var i = 0; i < doubles; i++) {
			entries.push({ count: 2, dbfId: r.nextVarInt()});
		}
		var multiples = r.nextVarInt();
		for (var i = 0; i < multiples; i++) {
			entries.push({ count: r.nextVarInt(), dbfId: r.nextVarInt()});
		}
		return { type: type, hero: hero, cards: entries};
	};

	return {decode: (encoded) => lookup.then((mapping) => resolve(deck(encoded), mapping))};
};


var decoder = deckDecoder();
var showDeck = function(text) {
  var _enc = text;
  decoder.decode(_enc).then((deck) => {
		// var typeA = document.getElementsByName('code1');
		// typeA[0].innerText = deck.type + ' Deck';
		// console.log(typeA[0].innerText);
		// typeA[0].contentText = deck.hero.name + ' (' + deck.heroClass + ')';
		// console.log(typeA[0].contentText);

		document.getElementById('type').innerText = deck.type + ' Deck';
		// console.log(document.getElementById('type').innerText);
    document.getElementById("hero").innerText = deck.hero.name + ' (' + deck.heroClass + ')';
		// console.log(document.getElementById('hero').innerText);
		//
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

var showDeckbyID = function() {
  var _enc = document.getElementById('deckString').value;
  decoder.decode(_enc).then((deck) => {
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
