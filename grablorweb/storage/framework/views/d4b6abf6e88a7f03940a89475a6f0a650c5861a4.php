
<?php $__env->startSection('content'); ?>
<div class="container">
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
      <td><a href="" ><button type="button" class="btn btn-primary"><i class="fa fa-share-alt-square" aria-hidden="true"></i></button></a> 
    <a href="multiform/<?php echo e($createapps->id); ?>/edit"><button type="button" class="btn btn-primary"><i class="fa fa-pencil" aria-hidden="true"></i>
    </button></a>
    <a href=""><button type="button" class="btn btn-primary"><i class="fa fa-download" aria-hidden="true"></i>    </button></a>

    <a href="playlist/<?php echo e($createapps->id); ?>/edit"><button type="button" class="btn btn-primary"><i class="fas fa-tasks"></i></button></a>
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
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/grabliyw/public_html/appio.studio/grablorweb/resources/views/form/index.blade.php ENDPATH**/ ?>