<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="owl-carousel">
    <div class="item"><h4><img src="../images/videos/Warcraft-Poster.jpg" style="width: 100%;"/></h4></div>
    <div class="item"><h4><img src="../images/videos/Warcraft-Poster.jpg" style="width: 100%;"/></h4></div>
    <div class="item"><h4><img src="../images/videos/Warcraft-Poster.jpg" style="width: 100%;"/></h4></div>
    <div class="item"><h4><img src="../images/videos/Warcraft-Poster.jpg" style="width: 100%;"/></h4></div>
    <div class="item"><h4><img src="../images/videos/Warcraft-Poster.jpg" style="width: 100%;"/></h4></div>
    <div class="item"><h4><img src="../images/videos/Warcraft-Poster.jpg" style="width: 100%;"/></h4></div>
    <div class="item"><h4><img src="../images/videos/Warcraft-Poster.jpg" style="width: 100%;"/></h4></div>
</div>

    
     <div id="features">
        <div class="column animated slideInUp">
            <img class="featimg" src="Images/ikona-video.jpg" /><p>Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. </p></div>
        <div class="column animated slideInUp">
            <img class="featimg" src="Images/ikona-video.jpg" /><p>Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. </p></div>
        <div class="column animated slideInUp">
            <img class="featimg" src="Images/ikona-video.jpg" /><p>Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. </p></div>
        <div class="column animated slideInUp">
            <img class="featimg" src="Images/ikona-video.jpg" /><p>Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. </p></div>  
    </div>
    <div class="animated fadeIn" style="text-align: center; font-size: 28px; font-weight: bold; clear:both; text-transform:uppercase;">Internetowa wypożyczalnia wideo: </div>
   <div id="numbers">
        <div class="columnthree increasing animated slideInUp">5</div>
        <div class="columnthree">5000</div>
       <div class="columnthree increasing animated slideInUp">999</div>
       </div>
    <div>
        <div class="columnthreelower animated fadeIn" style="margin-top:0px; font-size:30px; font-weight: bold;">LAT NA RYNKU</div>
        <div class="columnthreelower animated fadeIn" style="margin-top:0px; font-size:30px; font-weight: bold;">WIZYT MIESIĘCZNIE</div>
       <div class="columnthreelower animated fadeIn" style="margin-top:0px; font-size:30px; font-weight: bold;">FILMÓW W ASORTYMENCIE</div>
       </div>
    <div id="flames" runat="server">
        <img runat="server" id="flamesimg" style="visibility:hidden; height:0px;" src="Images/flames.gif" />
    </div>
        </div>
    <script>
        $('.increasing').each(function () {
            var $this = $(this);
            jQuery({ Counter: 0 }).animate({ Counter: $this.text() }, {
                duration: 2000,
                easing: 'swing',
                step: function () {
                    $this.text(Math.ceil(this.Counter));
                }
            });
        });
        /* V2
         http://owlcarousel.owlgraphic.com/assets/owlcarousel/owl.carousel.js
         http://owlcarousel.owlgraphic.com/assets/owlcarousel/assets/owl.carousel.min.css
         http://owlcarousel.owlgraphic.com/assets/owlcarousel/assets/owl.theme.default.min.css
         */

        var owl = $('.owl-carousel');

        owl.owlCarousel({
            loop: true,
            margin: 10,
            nav: true,
        })



        owl.on('change.owl.carousel', function (e) {
            console.log(e.type + '(' + e.property.value + '/' + e.item.index + '/' + e.item.count + ') >>>>>>>>>>');
            var count = e.item.count,
                index = e.item.index,
                position = e.property.value;
            //console.log(e.namespace);
            //console.log(e.property);
            //console.log(e.item);
            //console.log(e.page);
            //console.log(e.relatedTarget);

            if (e.namespace && e.property.name === 'position' && e.property.value === e.item.count && $(".pagination .next").length) {
                // put your stuff here ...


                console.log('appending new...');



                var html = '<div class=\"item\"><h4>A1</h4></div>' +
                    '<div class=\"item\"><h4>A2</h4></div>' +
                    '<div class="\item\"><h4>A3</h4></div>';
                owl_inner = $('.owl-carousel .owl-item:not(.cloned)');
                owl_content = '';
                $.each(owl_inner, function () {
                    owl_content += $(this).html();
                })
                console.log(owl_content + html);
                owl.trigger('replace.owl.carousel', owl_content + html)
                //.trigger('refresh.owl.carousel')
                //.trigger('to.owl.carousel', index);
                ;
            }

            //console.log('item.count: ' + e.item.count);
            //console.log('item.index: ' + e.item.index);
            //console.log('page.count: ' + e.page.count);
            //console.log('page.index: ' + e.page.index);
            //console.log('page.size: ' + e.page.size);
        })


        $('#next').on('click', function () {
            //alert('next');  
            owl.trigger('next.owl.carousel', [500]);
        });

        $('#replace').on('click', function () {
            //alert('replace');
            var html = '<div class=\"item\"><h4>R1</h4></div>' +
                    '<div class=\"item\"><h4>R2</h4></div>' +
                    '<div class="\item\"><h4>R3</h4></div>';
            owl.trigger('replace.owl.carousel', html)
               .trigger('refresh.owl.carousel');
        });

        $('#addfix').on('click', function (e) {
            var html = '<div class=\"item\"><h4>N1</h4></div>';
            owl_inner = $('.owl-carousel .owl-item:not(.cloned)');
            owl_content = '';
            $.each(owl_inner, function () {
                owl_content += $(this).html();
            })

            owl.trigger('replace.owl.carousel', html + owl_content)
                .trigger('to.owl.carousel', 7)
                .trigger('refresh.owl.carousel');
        });

        $('#add').on('click', function () {
            alert('add');
            var html = '<div class=\"item\"><h4>N1</h4></div>';
            console.log(html);
            owl.trigger('add.owl.carousel', [html, 0])
               .trigger('refresh.owl.carousel');
        });


        $('#remove').on('click', function () {
            alert('remove');
            owl.trigger('remove.owl.carousel', 1)
               .trigger('refresh.owl.carousel');
        });




        // html = '<img class="owl-lazy" data-src="http://placehold.it/350x250&text=11" alt="">';
        //$carousel.trigger('replace', [html]);
        // $carousel.data('owlCarousel').refresh();
        // $carousel.trigger('add', {
        // content: html,
        // position: 0
        // }); //.trigger('refresh.owl.carousel');
        // html = '<img class="owl-lazy" data-src="http://placehold.it/350x250&text=11" alt="">';
        //$carousel.trigger('replace', [html]);
        // $carousel.data('owlCarousel').refresh();
        // $carousel.trigger('add', {
        // content: html,
        // position: 0
        // }); //.trigger('refresh.owl.carousel');
    </script>
</asp:Content>