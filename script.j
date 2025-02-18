const quotes = [
  { text: "La vie est ce qui se passe pendant que vous êtes occupé à faire d'autres projets.", author: "John Lennon" },
  { text: "Soyez le changement que vous voulez voir dans le monde.", author: "Mahatma Gandhi" },
  { text: "L'avenir appartient à ceux qui croient à la beauté de leurs rêves.", author: "Eleanor Roosevelt" },
  { text: "Le seul moyen de faire du bon travail est d'aimer ce que vous faites.", author: "Steve Jobs" },
  // Ajoutez plus de citations si nécessaire
];

function getRandomQuote() {
  const randomIndex = Math.floor(Math.random() * quotes.length);
  return quotes[randomIndex];
}

function updateQuote() {
  const quote = getRandomQuote();
  document.getElementById("text").innerText = `"${quote.text}"`;
  document.getElementById("author").innerText = `- ${quote.author}`;
  const tweetUrl = `https://twitter.com/intent/tweet?text="${quote.text}"%20${quote.author}`;
  document.getElementById("tweet-quote").href = tweetUrl;
}

// Initial quote on page load
updateQuote();

// Event listener for the 'new-quote' button
document.getElementById("new-quote").addEventListener("click", updateQuote);
