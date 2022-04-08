{* 
    Galerie d'image
    Site CJM81
    Création Mickael Roustaing
*}
    <div>
        {if $images!= null} 
<!--var_dump($images)-->
                    {foreach from=$images item=image name=images}
                     <div class="col-lg-3 col-sm-4 col-xs-6" style="padding:5px">
                        <a class="zoom" href="{$image}">
                         <img src="{$image}" class="img-fluid img-thumbnail"/> 
                        </a>
                    </div>
                    {/foreach}
        {else}
        <div class="div-img">
            <span class="no-img">Pas encore de photo dans notre galerie</span>
        </div>
        {/if}
    </div>

    <script type="text/javascript">
         ap_list_functions.push(function(){
              $(".zoom").fancybox({
                openEffect : 'none',
                closeEffect : 'none'
            });
        });
    </script>
    
    <style>
        .div-img{
            text-align: center;
        }
        .div-img :hover{
            background-color: #f8f2f2;
        }
        .no-img{
            padding: 5px;
            border: 1px solid black;
            border-radius: 10px;
            font-size: 40px;
        }
        .img-thumbnail{
            background-color: #f8f2f2;
        }
    </style>