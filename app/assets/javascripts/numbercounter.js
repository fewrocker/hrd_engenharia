document.addEventListener('DOMContentLoaded', function() {
    function animateValue(obj, start, end, duration) {
        if (start === end) return;
        var range = end - start;
        var current = start;
        var increment = end > start? 1 : -1;
        var stepTime = Math.abs(Math.floor(duration / range));
        var timer = setInterval(function() {
            current += increment;
            obj.innerHTML = current;
            if (current == end) {
                clearInterval(timer);
            }
        }, stepTime);
    }

    function isInViewport(element) {
        const rect = element.getBoundingClientRect();
        return (
            rect.top >= 0 &&
            rect.left >= 0 &&
            rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
            rect.right <= (window.innerWidth || document.documentElement.clientWidth)
        );
    }

    let trigger = false;

    window.addEventListener('scroll', function() {
        if (trigger) return;

        if (isInViewport(document.querySelector(".number-animation-up"))) {
            document.querySelectorAll(".number-animation-up").forEach((number) => {
                animateValue(number, 0, number.dataset.value, 2000)
            })
            trigger = true;
        }
    });

    
});
    