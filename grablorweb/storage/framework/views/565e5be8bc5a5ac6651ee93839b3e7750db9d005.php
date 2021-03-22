
<?php $__env->startSection('content'); ?>

<div class="container">
    <div class="d-flex flex-row-reverse">
<button type="button" class="add btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Add Playlist</button>
    </div>
    
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form method="POST" action="/playlist/<?php echo e($playlist2->version); ?>" enctype="multipart/form-data">
        <input type="hidden" name="_method" value="PUT">
    
        <?php echo e(csrf_field()); ?>

            <div class="form-group">
            <label for="recipient-name" class="col-form-label" >Playlist Id</label>
            <input type="text" name="pid" class="form-control" value="PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn" id="recipient-name" required>
          </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Add Playlist</button>
      </div>
    </form>
    </div>
  </div>
</div>
<?php if(count($playlist)>0): ?>
<table class="table table-striped table2" >
  
    <thead>
      <tr>
        <th scope="col">#</th>
      <th scope="col">Icon</th>
        <th scope="col">Playlist Name</th>
        <th scope="col">Action</th>
      </tr>
    </thead>
    <tbody id="page_list">
      <?php $__currentLoopData = $playlist; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $playlists): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <tr>
        <?php if(!Auth::guest()): ?>
      <?php if(Auth::user()->id == $playlists->user_id): ?>
      <th scope="row"><?php echo e($loop->iteration); ?></th>
        <td><img style="height: 5rem;width: 5rem" src="<?php echo e($playlists->imgurl); ?>"/></td>
      <td><?php echo e($playlists->title); ?></td>
        <td>

        <a href="/playlistitem/<?php echo e($playlists->version); ?><?php echo e('@'); ?><?php echo e($playlists->playlistId); ?>" ><i class="tools fas fa-th-list"></i></a>
         <form action="/playlist/<?php echo e($playlists->version); ?><?php echo e('@grab'); ?><?php echo e($playlists->playlistId); ?>" method="POST">
          <?php echo method_field('DELETE'); ?>
          <?php echo csrf_field(); ?>
          <!-- Button trigger modal -->
    <button type="button" style="border: hidden" data-toggle="modal" data-target="#exampleModal2<?php echo e($playlists->playlistId); ?>">
     <i class="tools fas fa-trash"></i>
     </button>

<!-- Modal -->
<div class="modal fade" id="exampleModal2<?php echo e($playlists->playlistId); ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      Are you sure you want to delete this playlist.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Delete</button>
      </div>
    </div>
  </div>
</div>
         </form>
        <button type="button" style="border: hidden" data-toggle="modal" data-target="#exampleModal3<?php echo e($playlists->version); ?><?php echo e($playlists->playlistId); ?>">
          <i style="color: green" class="fas fa-sync-alt"></i>
          </button>

          <!-- Modal -->
<div class="modal fade" id="exampleModal3<?php echo e($playlists->version); ?><?php echo e($playlists->playlistId); ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      Are you sure you want to Refresh this playlist.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a href="/playlist/<?php echo e($playlists->version); ?><?php echo e('@'); ?><?php echo e($playlists->playlistId); ?>"> <button type="button" class="btn btn-primary">Refresh</button></a>
      </div>
    </div>
  </div>
</div>

        <p><?php echo e($playlists->videoCount); ?></p>

        </td>
        <?php endif; ?>
        <?php endif; ?>
      </tr>
       
      
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </tbody>
  </table>
  <div class="text-center">
  <a href="/index"><button class="btn btn-success">Finish Playlist & Create Application</button></a>
  </div>
  <?php else: ?>
  <p>no playlist found </p>
  <?php endif; ?>

</div>




<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/grabliyw/public_html/appio.studio/grablorweb/resources/views/form/playlistEdit.blade.php ENDPATH**/ ?>