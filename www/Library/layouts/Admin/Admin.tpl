<div class="Admin" data-v="<?php echo $v['view_uri'];?>" data-p="Admin" data-base="<?php echo $v['basepath'];?>">
    <div class="center">
        <div class="window"><?php echo $v->Programs->string();?></div>
    </div>
    <div class="top">
        <?php echo $v->MenuAuth->string();?>
        <?php echo $v->BreadcrumbsMenu->string();?>

    </div>
    <div class="left">
        <!--<div class="shadow"></div>-->
    </div>
    <div class="right">
        <!--<div class="shadow"></div>-->
        <?php echo $v->ProgramsMenu->string();?>
    </div>
</div>