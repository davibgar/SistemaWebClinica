
/* BEGIN EXTERNAL SOURCE */

        $(document).ready(function () {
            // Activar/desactivar el menú lateral en dispositivos móviles
            $('.sidebar-toggle').click(function () {
                $('body').toggleClass('sidebar-open');
                $('body').toggleClass('sidebar-collapsed');
            });

            // Cerrar sidebar al hacer clic en el overlay
            $('.sidebar-overlay').click(function () {
                $('body').removeClass('sidebar-open');
            });

            // Activar/desactivar submenús
            $('.treeview > a').click(function (e) {
                e.preventDefault();
                $(this).parent().toggleClass('active');
            });

            // Marcar como activo el menú actual
            var currentUrl = window.location.pathname;
            $('.sidebar-menu a').each(function () {
                var href = $(this).attr('href');
                if (href && currentUrl.indexOf(href) !== -1) {
                    $(this).closest('li').addClass('active');
                    $(this).closest('.treeview').addClass('active');
                }
            });

            // Añadir efectos de animación a elementos
            setTimeout(function () {
                $('.content').addClass('animate-fadeInUp');
                $('.sidebar-menu > li').addClass('animate-slideInLeft');
            }, 300);
        });

        // Mejorar comportamiento de scroll
        $(window).on('load resize', function () {
            adjustContentHeight();
        });

        function adjustContentHeight() {
            var windowHeight = $(window).height();
            var headerHeight = $('.header').outerHeight();
            $('.right-side').css('min-height', (windowHeight - headerHeight) + 'px');
        }
    
/* END EXTERNAL SOURCE */
