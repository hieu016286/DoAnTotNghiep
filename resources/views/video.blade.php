<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/video.js/7.8.1/video-js.min.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/video.js/7.8.1/video.min.js"></script>

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
    </head>
    <body>
        <div class="flex-center position-ref full-height">

           <!-- <div class="video-container">
                <video width="640" height="370" class="video-js"  preload="auto"  poster="//vjs.zencdn.net/v/oceans.png"
                
                data-setup='{}'  controls="controls" poster="https://cdnfile.webthethao.vn/images/resize_843x373/files/tuantu.nguyen/tin-the-thao-viet-nam-moi-nhat-ngay-125-cuu-sao-u23-viet-nam-tiep-tuc-toa-sang-tren-dat-han-quoc2.jpg">
                    <source src="https://cdnmedia.webthethao.vn/uploads/cdn/webthethao/files/tuantu.nguyen/2018/05/12/futsal-viet-nam-thai-lan-1648.mp4" type="video/mp4">
                    <object width="640" height="370" data="https://hls.mediacdn.vn/webthethao/lib/tinymce/plugins/media/moxieplayer.swf" type="application/x-shockwave-flash">
                        <param name="src" value="https://hls.mediacdn.vn/webthethao/lib/tinymce/plugins/media/moxieplayer.swf">
                        <param name="flashvars" value="url=https://hls.mediacdn.vn/webthethao/files/tuantu.nguyen/2018/05/12/futsal-viet-nam-thai-lan-1648.mp4&amp;poster=https://cdnfile.webthethao.vn/images/resize_843x373/files/tuantu.nguyen/tin-the-thao-viet-nam-moi-nhat-ngay-125-cuu-sao-u23-viet-nam-tiep-tuc-toa-sang-tren-dat-han-quoc2.jpg">
                        <param name="allowfullscreen" value="true">
                        <param name="allowscriptaccess" value="true">
                    </object>
                </video>
            </div> -->

            <video
                id="my-player"
                class="video-js"
                controls
                preload="auto"
                poster="//vjs.zencdn.net/v/oceans.png"
                data-setup='{}'>
              <source src="//vjs.zencdn.net/v/oceans.mp4" type="video/mp4"></source>
              <source src="//vjs.zencdn.net/v/oceans.webm" type="video/webm"></source>
              <source src="//vjs.zencdn.net/v/oceans.ogv" type="video/ogg"></source>
            </video>
        </div>
    </body>
</html>
