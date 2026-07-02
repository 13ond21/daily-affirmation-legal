(function () {
  var els = document.querySelectorAll("[data-reveal]");
  if (!els.length) return;

  function showAll() {
    els.forEach(function (el) {
      el.classList.add("is-visible");
    });
  }

  var reduce = window.matchMedia("(prefers-reduced-motion: reduce)").matches;
  if (reduce) {
    showAll();
    return;
  }

  if (!("IntersectionObserver" in window)) {
    showAll();
    return;
  }

  document.documentElement.classList.add("js-reveal-ready");

  var io = new IntersectionObserver(
    function (entries) {
      entries.forEach(function (e) {
        if (e.isIntersecting) {
          e.target.classList.add("is-visible");
          io.unobserve(e.target);
        }
      });
    },
    { rootMargin: "0px 0px -5% 0px", threshold: 0.01 }
  );

  els.forEach(function (el) {
    io.observe(el);
  });

  requestAnimationFrame(function () {
    els.forEach(function (el) {
      var rect = el.getBoundingClientRect();
      if (rect.top < window.innerHeight * 0.92 && rect.bottom > 0) {
        el.classList.add("is-visible");
      }
    });
  });

  setTimeout(showAll, 1200);
})();