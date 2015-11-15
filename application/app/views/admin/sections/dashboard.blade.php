<!-- Morris chart -->
<link href="application/assets/admin/css/morris/morris.css" rel="stylesheet" type="text/css" />

@include('admin.sections.version')

<!-- Small boxes (Stat box) -->
<div class="row">
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-aqua">
            <div class="inner">
                <h3>
                    <?= count($media); ?>
                </h3>
                <p>
                    Media
                </p>
            </div>
            <div class="icon">
                <i class="ion ion-images"></i>
            </div>
            <a data-section="media" href="<?= URL::to('admin/media') ?>" class="small-box-footer ajax" data-header="<i class='fa fa-picture-o'></i><span> Media </span>">
                View All <i class="fa fa-arrow-circle-right"></i>
            </a>
        </div>
    </div><!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-green">
            <div class="inner">
                <h3>
                    <?= count($users); ?>
                </h3>
                <p>
                    User Registrations
                </p>
            </div>
            <div class="icon">
                <i class="ion ion-person-add"></i>
            </div>
            <a data-section="users" href="<?= URL::to('admin/users') ?>" data-header="<i class='ion ion-person'></i><span> Users </span>" class="small-box-footer ajax">
                More info <i class="fa fa-arrow-circle-right"></i>
            </a>
        </div>
    </div><!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-yellow">
            <div class="inner">
                <h3>
                    <?= count($comments); ?>
                </h3>
                <p>
                    Comments
                </p>
            </div>
            <div class="icon">
                <i class="ion ion-chatbubbles"></i>
            </div>
            <a data-section="comments" data-header="<i class='ion ion-chatbubble'></i><span> Comments </span>" href="<?= URL::to('admin/comments') ?>" class="small-box-footer ajax">
                More info <i class="fa fa-arrow-circle-right"></i>
            </a>
        </div>
    </div><!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-red">
            <div class="inner">
                <h3>
                    <?= count($categories); ?>
                </h3>
                <p>
                    Categories
                </p>
            </div>
            <div class="icon">
                <i class="ion ion-ios7-albums"></i>
            </div>
            <a data-section="categories" href="<?= URL::to('admin/categories') ?>" data-header="<i class='ion ion-ios7-albums'></i><span> Categories </span>" class="small-box-footer ajax">
                More info <i class="fa fa-arrow-circle-right"></i>
            </a>
        </div>
    </div><!-- ./col -->
</div><!-- /.row -->

<!-- Main row -->
<div class="row">
   
</div><!-- /.row (main row) -->
