
<?php $__env->startSection('content'); ?>
<div class="container">
<form method="POST" action="/profile/<?php echo e($profile->user_id); ?>" enctype="multipart/form-data">
    <input type="hidden" name="_method" value="PUT">
    <?php echo csrf_field(); ?>
    <?php echo csrf_field(); ?>

    <div class="form-row">
      <div class="form-group col-md-6">
        <label for="inputEmail4">Full-Name</label>
        <input type="text" name="fullname" value="<?php echo e($profile->fullname); ?>" class="form-control" id="fullname">
      </div>
      <div class="form-group col-md-6">
        <label for="inputPassword4">Username</label>
        <input type="text" name="username" class="form-control" id="username" value="<?php echo e($profile->username); ?>">
      </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
          <label for="inputEmail4">Developername</label>
          <input type="text" name="developername" class="form-control text-lowercase" id="developername" value="<?php echo e($profile->developername); ?>">
        </div>
        
      </div>
    <div class="form-group">
      <label for="inputAddress">Address</label>
      <input type="text" name="address" class="form-control" id="address" value="<?php echo e($profile->address); ?>">
    </div>
    
    <div class="form-row">
      <div class="form-group col-md-6">
        <label for="inputCity">City</label>
        <input type="text" value="<?php echo e($profile->city); ?>" name="city" class="form-control" id="city">
      </div>
      <div class="form-group col-md-4">
        <label for="inputState">State</label>
        <input type="text" value="<?php echo e($profile->state); ?>" name="state" class="form-control" id="state">
      </div>
      <div class="form-group col-md-2">
        <label for="inputZip">Zip</label>
        <input type="text" value="<?php echo e($profile->zip); ?>" name="zip" class="form-control" id="zip">
      </div>
    </div>
    <div class="form-group">
      
    </div>
    <button type="submit" class="btn btn-primary">Save Changes</button>
  </form>
</div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/grabliyw/public_html/appio.studio/grablorweb/resources/views/form/editprofile.blade.php ENDPATH**/ ?>