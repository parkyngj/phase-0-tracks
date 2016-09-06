var headers = document.getElementsByTagName("h2");
console.log(headers);
// returns [h2, h2, h2#physdesc, physdesc: h2#physdesc]

for (var i = 0; i < headers.length; i++){
  headers[i].style.fontSize="24pt";
};

var physDescHeader = document.getElementById('physdesc');

console.log(physDescHeader);
// returns <h2 id="physdesc" style="font-size: 24pt;">Physical Description</h2>

console.log(physDescHeader.nextSibling);
// returns #text

physDescHeader.insertAdjacentHTML('afterend', '<h3>Favorite Foods</h3><p>Bamboo, obviously. And sometimes Bamboo Pizza.</p>');

console.log(physDescHeader.nextSibling);
// <h3>Favorite Foods</h3>

var lists = document.getElementsByTagName('ul');
list = lists[0];

console.log(list)
// returns <ul>
  //   <li><strong>Order:</strong> Carnivora</li>
  //   <li><strong>Family:</strong> Ursidae</li>
  //   <li><strong>Genus and species:</strong><em> Ailuropoda melanoleuca</em></li>
  // <li>&lt;strong&gt;Enjoys:&lt;/strong&gt; Naps</li></ul>

console.log(list.children)
// returns [li, li, li]

var newBullet = document.createElement('li')
var newBulletText = document.createTextNode("Enjoys: Naps")
// how do we put in text that is partly wrapped in a strong tag?
newBullet.appendChild(newBulletText)

list.appendChild(newBullet)

console.log(list.children)
// returns [li, li, li, li]