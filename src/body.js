// This contains code for the body of the page

function about() {
    fetch('./pages/about.html')
        .then(response=> response.text())
        .then(text=> document.getElementById('main').innerHTML = text);
}