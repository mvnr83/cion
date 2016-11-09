function theRotator() {
            //Set the opacity of all images to 0
            $('div#rotator div').css({ opacity: 0.0 });

            //Get the first image and display it (gets set to full opacity)
            $('div#rotator div:first').css({ opacity: 1.0 });

            //Call the rotator function to run the slideshow, 6000 = change to next image after 6 seconds
            setInterval('rotate()', 3000);

        }

        function rotate() {
            //Get the first image
            var current = ($('div#rotator div.show') ? $('div#rotator div.show') : $('div#rotator div:first'));

            //Get next image, when it reaches the end, rotate it back to the first image
            var next = ((current.next().length) ? ((current.next().hasClass('show')) ? $('div#rotator div:first') : current.next()) : $('div#rotator div:first'));

            //Set the fade in effect for the next image, the show class has higher z-index
            next.css({ opacity: 0.0 })
	.addClass('show').removeClass('hide')
	.animate({ opacity: 1.0 }, 1000);

            //Hide the current image
            current.animate({ opacity: 0.0 }, 1000)
	.removeClass('show').addClass('hide');

        };

        $(document).ready(function () {
            //Load the slideshow
            theRotator();
        });