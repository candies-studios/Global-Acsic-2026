/* Video Gallery – opens each YouTube video in a pop-up player */
(function () {
  var widget = document.querySelector('.acsic-video-widget');
  if (!widget) return;
  var modal = widget.querySelector('.acsic-video-modal');
  var frame = modal.querySelector('iframe');
  var closeBtn = modal.querySelector('.acsic-video-close');
  var lastCard = null;

  function open(card) {
    var id = card.getAttribute('data-video');
    if (!id) return;
    lastCard = card;
    frame.src = 'https://www.youtube.com/embed/' + id + '?autoplay=1&rel=0';
    modal.classList.add('active');
    modal.setAttribute('aria-hidden', 'false');
    document.body.classList.add('acsic-video-modal-open');
    closeBtn.focus();
  }

  function close() {
    modal.classList.remove('active');
    modal.setAttribute('aria-hidden', 'true');
    document.body.classList.remove('acsic-video-modal-open');
    frame.src = '';
    if (lastCard) lastCard.focus();
  }

  widget.querySelectorAll('.acsic-video-card').forEach(function (card) {
    card.addEventListener('click', function () { open(card); });
    card.addEventListener('keydown', function (e) {
      if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); open(card); }
    });
  });

  closeBtn.addEventListener('click', close);
  modal.addEventListener('click', function (e) { if (e.target === modal) close(); });
  document.addEventListener('keydown', function (e) {
    if (e.key === 'Escape' && modal.classList.contains('active')) close();
  });
})();
