<div class="Explorer" data-view_uri="<?php echo $v['view_uri'];?>">
	<h1><?php echo $v['head'];?></h1>
    <?php
        $list = $v['view']->arrays(\Boolive\values\Rule::string());
        foreach ($list as $item){
            echo $item;
        }
    ?>
</div>
<script type="text/javascript">
	$(function(){
		$('.Explorer[widget!="true"]').Explorer();
	});
</script>