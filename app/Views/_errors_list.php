<div class="alert alert-outline-danger b-round" role="alert">
    <ul>
        <?php foreach ($errors as $error) : ?>
            <li><?= esc($error) ?></li>
        <?php endforeach ?>
    </ul>
</div>