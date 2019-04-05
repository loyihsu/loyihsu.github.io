window.addEventListener("scroll", function (event) {
    var scroll = this.scrollY;
    //console.log(scroll);

    var learnMore = document.getElementById("swipe");

    var about = document.getElementById("about");
    var projects = document.getElementById("projects");
    var contacts = document.getElementById("contacts");
    var loyiworks = document.getElementById("lwksRedt");

    var abtColor = "#D7C4BB";
    var proColor = "#bec6ce";
    var cotColor = "#ffffff";
    var lwksColor = "#bec6ce";
    var topColor = "#bec6ce";

    var color = "";

    if (scroll < learnMore.offsetTop/2) {
        learnMore.style.opacity = 1;
    } else {
        learnMore.style.opacity = 0;
    }

    if (scroll > loyiworks.offsetTop - 200) {
        currentTab("lwks");
        color = lwksColor;
    } else if (scroll > contacts.offsetTop - 200) {
        currentTab("co");
        color = cotColor;
    } else if (scroll > projects.offsetTop - 200) {
        currentTab("pr");
        color = proColor;
    } else if (scroll > about.offsetTop - 200) {
        currentTab("ab");
        color = abtColor;
    } else {
        currentTab("top");
        color = topColor;
    }
    document.documentElement.style.setProperty('--itemtextActive', color);
});

function currentTab(tab) {
    var bar_ab = document.getElementById("ab");
    var bar_pr = document.getElementById("pr");
    var bar_co = document.getElementById("co");
    var bar_lwks = document.getElementById("lwks");
    var bar_top = document.getElementById("top");

    var bar = [bar_ab, bar_pr, bar_co, bar_lwks, bar_top];

    for (i = 0 ; i < bar.length ; i++) {
        if (tab == bar[i].id) {
            bar[i].className = "active";
        } else {
            bar[i].classList = "";
        }
    }
}

function scrollTo(element, to, duration) {
    // A function to scroll to the selected place on page.
    if (duration <= 0) return;
    var difference = to - element.scrollTop;
    var perTick = difference / duration * 10;
    
    setTimeout(function() {
               element.scrollTop = element.scrollTop + perTick;
               if (element.scrollTop === to) return;
               scrollTo(element, to, duration - 10);
               }, 10);
}

function menuClicked(ind) {
    var element;

    if (ind == 1) {
        element = document.getElementById("top");
    } else if (ind == 2) {
        element = document.getElementById("about");
    } else if (ind == 3) {
        element = document.getElementById("projects");
    } else if (ind == 4) {
        element = document.getElementById("contacts");
    } else if (ind == 5) {
        element = document.getElementById("lwksRedt");
    }

    scrollTo(document.body, element.offsetTop-120, 100);
}