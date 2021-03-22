
<?php $__env->startSection('content'); ?>
<div class="container">

   <?php if (isset($component)) { $__componentOriginald4c8f106e1e33ab85c5d037c2504e2574c1b0975 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\Alert::class, ['type' => ''.e(session('type')).'','message' => ''.e(session('message')).'']); ?>
<?php $component->withName('alert'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?> <?php if (isset($__componentOriginald4c8f106e1e33ab85c5d037c2504e2574c1b0975)): ?>
<?php $component = $__componentOriginald4c8f106e1e33ab85c5d037c2504e2574c1b0975; ?>
<?php unset($__componentOriginald4c8f106e1e33ab85c5d037c2504e2574c1b0975); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?> 

  <div class="d-flex flex-row-reverse">
    <a href="/multiform"> <button type="button" class="createbtn btn btn-success btn-lg">Create Application</button></a>
  </div>
  <?php if(count($createapp)>0): ?>
  <table class="table table-striped">
    <thead>
      <tr>
        <th scope="col">Name</th>
        <th scope="col">Version</th>
        <th scope="col">Action</th>
        <th scope="col">subdomainurl</th>

      </tr>
    </thead>
    <tbody>
      <?php $__currentLoopData = $createapp; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $createapps): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <tr>
        <?php if(!Auth::guest()): ?>
        <?php if(Auth::user()->id == $createapps->user_id): ?>
        <th scope="row"><?php echo e($createapps->appname); ?></th>
        <td><?php echo e($createapps->version_no); ?></td>
        <td><a href=""><button type="button" class="btn btn-primary"><i class="fa fa-share-alt-square"
                aria-hidden="true"></i></button></a>
          <a href="multiform/<?php echo e($createapps->id); ?>/edit"><button type="button" class="btn btn-primary"><i
                class="fa fa-pencil" aria-hidden="true"></i>
            </button></a>
          <a href=""><button type="button" class="btn btn-primary"><i class="fa fa-download" aria-hidden="true"></i>
            </button></a>

          <a href="playlist/<?php echo e($createapps->id); ?>/edit"><button type="button" class="btn btn-primary"><i
                class="fas fa-tasks"></i></button></a>
        </td>

        <td><?php echo e($createapps->subdomainurl); ?></td>
        <?php endif; ?>
        <?php endif; ?>
      </tr>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </tbody>
  </table>
  <?php else: ?>
  <p>No Appllication</p>
  <?php endif; ?>
</div>
<script>

</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/rex/rajesh/code/software-management-system/grablorweb/resources/views/form/index.blade.php ENDPATH**/ ?>