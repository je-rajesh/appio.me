<?php
// symlink('/home/grablor/grablorweb/storage/app/public', '/home/grablor/public_html/storage'); 

$targetFolder = '/home/grabliyw/public_html/appio.studio/grablorweb/storage/app/public';
$linkFolder = '/home/grabliyw/public_html/appio.studio/storage';
if (symlink($targetFolder, $linkFolder)) {
    echo "Success";
} else {
    echo "Not successful";
}
