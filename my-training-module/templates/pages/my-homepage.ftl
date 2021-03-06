<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
  <head>
    [@cms.page /]
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>${content.windowTitle!content.title!}</title>
    <meta name="description" content="${content.description!""}" />
    <meta name="keywords" content="${content.keywords!""}" />

   
    [#-- To load resources you can link them manually (e.g. line below) --]
      [#-- <link rel="stylesheet" type="text/css" href="${ctx.contextPath}/.resources/my-training-module/webresources/css/bootstrap.css" media="all" /> --]
      [#-- <script src="${ctx.contextPath}/.resources/my-training-module/webresources/js/jquery.js"></script> --]
    [#-- or via theme --]
      [#-- [#assign site = sitefn.site()!] --]
      [#-- [#assign theme = sitefn.theme(site)!] --]
      [#-- [#list theme.cssFiles as cssFile] --]
      [#--   [#if cssFile.conditionalComment?has_content]<!--[if ${cssFile.conditionalComment}]>[/#if] --]
      [#--     <link rel="stylesheet" type="text/css" href="${cssFile.link}" media="${cssFile.media}" /> --]
      [#--   [#if cssFile.conditionalComment?has_content]<![endif]-->[/#if] --]
      [#-- [/#list] --]
      [#-- [#list theme.jsFiles as jsFile] --]
      [#--   <script src="${jsFile.link}"></script> --]
      [#-- [/#list] --]
    [#-- uncomment next line to use resfn templating functions to load all css which matches a globbing pattern --]
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0-beta1/css/bootstrap.min.css" integrity="sha512-o/MhoRPVLExxZjCFVBsm17Pkztkzmh7Dp8k7/3JrtNCHh0AQ489kwpfA3dPSHzKDe8YCuEhxXq3Y71eb/o6amg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

      ${resfn.css(["/my-training-module/.*css"])!} 
      
  </head>
  <body class="my-homepage ${cmsfn.language()}">
  [#include "/my-training-module/includes/navigation.ftl"]
[@cms.area name="header" /]
  <center>


  <div class="container">
      <h1>${content.navigationTitle!content.@name}</h1>
      <p>Consider working with the best enterprenuer in the world like Elon Musk ...</p>
    </div>
    
    </center>
 [@cms.area name="main" /]
    [#-- use resfn to load all js which matches the globbing pattern or link resources manually or via theme --]
    [#-- ${resfn.js(["/my-training-module/.*js"])!} --]
  
  <footer>
  ${i18n['footer']}</footer>
  [#include "/my-training-module/includes/footer.ftl"]
  </body>
</html>
