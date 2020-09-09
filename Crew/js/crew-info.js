document.addEventListener( 'DOMContentLoaded', function () {
  new Splide( '.splide', {
    perPage: 6,
    perMove: 1,
    rewind : true,
    focus  : 'center',
    height : '13rem',
    lazyLoad: 'nearby',
    cover  : true,
    breakpoints: {
      '1030': {
  			perPage: 5,
  			gap    : '1rem',
  		},
  		'770': {
  			perPage: 3,
  			gap    : '1rem',
  		},
  		'480': {
  			perPage: 2,
  			gap    : '1rem',
  		},
	}
  } ).mount(window.splide.Extensions );
} );
