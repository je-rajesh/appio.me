
<?php $__env->startSection('content'); ?>
<div class="container">
<form method="POST" action="/profile" enctype="multipart/form-data">
    <?php echo csrf_field(); ?>
    <div class="form-row">
      <div class="form-group col-md-6">
        <label for="inputEmail4">Full-Name</label>
        <input type="text" name="fullname" class="form-control" id="fullname" placeholder="Email">
      </div>
      <div class="form-group col-md-6">
        <label for="inputPassword4">Username</label>
        <input type="text" name="username" class="form-control" id="username" value="<?php echo e($user); ?>">
      </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
          <label for="inputEmail4">Developername</label>
          <input type="text" name="developername" class="form-control text-lowercase" id="developername" placeholder="Email">
        </div>
        
      </div>
    <div class="form-group">
      <label for="inputAddress">Address</label>
      <input type="text" name="address" class="form-control" id="address" placeholder="1234 Main St">
    </div>
    
    <div class="form-row">
      <div class="form-group col-md-6">
        <label for="inputCity">City</label>
        <input type="text" name="city" class="form-control" id="city">
      </div>
      <div class="form-group col-md-4">
        <label for="inputState">State</label>
        <input type="text" name="state" class="form-control" id="state">
      </div>
      <div class="form-group col-md-2">
        <label for="inputZip">Zip</label>
        <input type="text" name="zip" class="form-control" id="zip">
      </div>
    </div>
    <div class="form-group">
      
    </div>
    <button type="submit" class="btn btn-primary">Sign in</button>
  </form>
</div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/rex/rajesh/code/software-management-system/grablorweb/resources/views/form/profile.blade.php ENDPATH**/ ?>