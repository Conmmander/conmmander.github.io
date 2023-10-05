// This contains code for the body of the page
let currentPortfolioImg = 1;
let currentExperiencePage = 1;
const TOTAL_PORTFOLIO_IMAGES = 12;
const TOTAL_EXPERIENCE_PAGES = 2;

function about() {
    document.getElementById('about').style.display = "flex";
    document.getElementById('experience').style.display = "none";
    document.getElementById('portfolio').style.display = "none";
    document.getElementById('contact').style.display = "none";
}

function experience() {
    document.getElementById('about').style.display = "none";
    document.getElementById('experience').style.display = "flex";
    document.getElementById('portfolio').style.display = "none";
    document.getElementById('contact').style.display = "none";
}

function portfolio() {
    document.getElementById('about').style.display = "none";
    document.getElementById('experience').style.display = "none";
    document.getElementById('portfolio').style.display = "flex";
    document.getElementById('contact').style.display = "none";
}

function contact() {
    document.getElementById('about').style.display = "none";
    document.getElementById('experience').style.display = "none";
    document.getElementById('portfolio').style.display = "none";
    document.getElementById('contact').style.display = "flex";
}

function loadPortfolio() {

}

function loadExperience() {
    for (let i = 1; i <= TOTAL_EXPERIENCE_PAGES; i++) {
        document.getElementById('experience'+i).style.display = "none";
    }
    document.getElementById('experience'+currentExperiencePage).style.display = "block";
    document.getElementById('experiencetitle').innerText = "Experience (" + currentExperiencePage + "/" + TOTAL_EXPERIENCE_PAGES + ")";
}

function portfolioForward() {
    if (currentPortfolioImg + 1 > TOTAL_PORTFOLIO_IMAGES) {
        currentPortfolioImg = 1;
    } else {
        currentPortfolioImg++;
    }
    loadPortfolio();
}

function portfolioBackward() {
    if (currentPortfolioImg - 1 <= 0) {
        currentPortfolioImg = TOTAL_PORTFOLIO_IMAGES;
    } else {
        currentPortfolioImg--;
    }
    loadPortfolio();
}

function experienceForward() {
    if (currentExperiencePage + 1 > TOTAL_EXPERIENCE_PAGES) {
        currentExperiencePage = 1;
    } else {
        currentExperiencePage++;
    }
    console.log(currentExperiencePage);
    loadExperience();
}

function experienceBackward() {
    if (currentExperiencePage - 1 <= 0) {
        currentExperiencePage = TOTAL_EXPERIENCE_PAGES;
    } else {
        currentExperiencePage--;
    }
    console.log(currentExperiencePage);
    loadExperience();
}