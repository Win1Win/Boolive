<div class="Installer" data-v="<?php echo $v['view_uri'];?>" data-o="<?php echo $v['data-o'];?>" data-p="Installer">
    <div class="layout-main">
        <h2><?php echo $v['title'];?></h2>
        <div class="confirm">
            <ul class="entity-list">
            <?php
                $list = $v['objects'];//->arrays(\boolive\values\Rule::any());
                foreach ($list as $item):
            ?>
                <li>
                <span class="txt-primary"><?php echo $item['title'];?></span>
                <?php if ($item['uri']->string()):?>
                <span class="txt-tag"><?php echo $item['uri'];?></span>
                <span class="diff"></span>
                <?php endif;?>
                </li>
            <?php endforeach; ?>
            </ul>
            <p><?php echo $v['question'];?></p>
            <p class="mini"><?php echo $v['message'];?></p>

            <div class="buttons">
                <a class="btn btn-primary submit" href="#">Да</a>
                <a class="btn cancel" href="#">Отмена</a>
            </div>

        </div>
        <div class="progress" style="display: none">
            <div class="prgressbar">
                <div class="bar"><!--<div class="value"></div>--></div>
            </div>
            <div class="message">Сообщение</div>

            <div class="buttons">
                <a class="btn cancel" href="#">Отмена</a>
            </div>
        </div>
     </div>
</div>