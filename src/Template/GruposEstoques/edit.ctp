<div class="panel panel-primary">
    <div class="panel-heading font-header">
        <?php echo $titulo_pagina . ' - ' . __('Edit') ?>
        <ul class="panel-toolbar list-unstyled font-12 m-d-3">
            <li><?php echo $this->Html->link('Novo cadastro', ['action' => 'add'], ['icon' => 'fa fa-plus-circle', 'title' => 'Novo cadastro']); ?></li>
            <li><?php echo $this->Html->link('Consultas', ['action' => 'index'], ['icon' => 'fa fa-list-alt', 'title' => 'Consultas']); ?></li>
        </ul>

    </div>
    <div class="panel-body">
        <?= $this->Form->create($gruposEstoque) ?>
        <?php
        echo $this->Form->input('nome', ['div' => ['class' => 'col-xs-12 col-md-9']]);
        echo $this->Form->input('estoque_global', ['div' => ['class' => 'col-xs-12 col-md-3']]);
        ?>
        <div class="clearfix"></div>
        <div class="text-right">
            <?= $this->Form->button(__('Submit')) ?>
        </div>
        <?= $this->Form->end() ?>
    </div>
</div>