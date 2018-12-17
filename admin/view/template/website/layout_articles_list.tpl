<?php echo $header; ?>
<div class="block-header">
  <h1><?php echo $heading_title; ?></h1>
  <div class="button-group">
  <a href="<?php echo $add; ?>" title="<?php echo $button_add; ?>" class="btn btn-primary waves-effect">
      <i class="material-icons">add</i>
      <span class="text-uppercase"><?php echo $button_add; ?></span>
  </a>
  <button type="button" title="<?php echo $button_delete; ?>" class="btn bg-red waves-effect" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-information').submit() : false;">
      <i class="material-icons">delete</i>
      <span class="text-uppercase"><?php echo $button_delete; ?></span>
  </button>
  </div>
</div>
<section class="">
  <ol class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ol>
  <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
  <?php } ?>

    <div class="row">
      <div class="col-lg-12 col-md-12">
        <!-- Main Card -->
        <div class="card">
            <div class="header">
                <h2>
                    <?php echo $text_list; ?> <small>Description text here...</small>
                </h2>
                <ul class="header-dropdown">
                    <li>
                        <button type="button" id="selectAll" class="btn btn-default waves-effect" title="<?php echo $text_select_all; ?>" onclick="selectAll(this)" data-select-all="false">
                            <i class="material-icons">done_all</i>
                            <span class="label text-uppercase"></span>                            
                        </button>
                    </li>
                    <li>
                        <div class="btn-group">
                            <button type="button" class="btn btn-info waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="material-icons col-white">sort</i>
                                <span class="text-uppercase"><?php echo $text_sort_options; ?> <span class="caret"></span></span>
                            </button>
                            <ul class="dropdown-menu pull-right">
                                <?php if ($sort == 'id.title') { ?>
                                <li>
                                  <a href="<?php echo $sort_title; ?>" class="col-blue font-bold"><?php echo $column_title; ?> (<?php echo strtolower($order); ?>)</a>
                                </li>  
                                <?php } else { ?>
                                <li>
                                  <a href="<?php echo $sort_title; ?>"><?php echo $column_title; ?></a>
                                </li>
                                <?php } ?>
                                <?php if ($sort == 'i.sort_order') { ?>
                                <li>
                                  <a href="<?php echo $sort_sort_order; ?>" class="col-blue font-bold"><?php echo $column_sort_order; ?> (<?php echo strtolower($order); ?>)</a>
                                </li>
                                <?php } else { ?>
                                <li>
                                  <a href="<?php echo $sort_sort_order; ?>"><?php echo $column_sort_order; ?></a>
                                </li>
                                <?php } ?>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
            <!--Card Body-->
            <div class="body">
              <!--Article Card-->
              <?php if ($informations) { ?>
              <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-information">
              <?php foreach ($informations as $information) { ?>
                <article class="card article">
                <div class="header">
                  <div class="article-checkbox">
                    <?php if (in_array($information['information_id'], $selected)) { ?>
                      <input type="checkbox" class="chk-col-indigo" name="selected[]" value="<?php echo $information['information_id']; ?>" id="md_checkbox_<?php echo $information['information_id']; ?>" checked />
                      <label for="md_checkbox_<?php echo $information['information_id']; ?>"></label>
                    <?php } else { ?>
                        <input type="checkbox" class="chk-col-indigo" name="selected[]" value="<?php echo $information['information_id']; ?>" id="md_checkbox_<?php echo $information['information_id']; ?>" />
                        <label for="md_checkbox_<?php echo $information['information_id']; ?>"></label>
                    <?php } ?>
                  </div>
                  <h2 class="title"><?php echo $information['title']; ?></h2>
                  <div class="meta-options">
                    <span class="meta-data"><i class="material-icons">turned_in</i> Andrew Nite</span>
                    <span class="meta-data"><i class="material-icons">today</i> 15 May, 2018</span>
                    <span class="meta-data"><i class="material-icons">sort</i> Post Order <?php echo $information['sort_order']; ?></span>
                    <span class="options">
                      <a href="<?php echo $information['edit']; ?>" title="<?php echo $button_edit; ?>" class="btn btn-success btn-xs waves-effect">
                        <i class="material-icons">edit</i>
                        <span class="text-uppercase">Edit</span>
                      </a>
                      <button type="button" class="btn bg-red btn-xs waves-effect" data-color="red" data-rmi="delete" data-rmi-id="md_checkbox_<?php echo $information['information_id']; ?>" data-rmi-article-title="<?php echo $information['title']; ?>">
                        <i class="material-icons">delete_forever</i>
                        <span class="text-uppercase">Delete</span>
                      </button>
                    </span>
                </div>
                <div class="body">
                  <div class="article">
                    <div class="post">
                      <?php echo $information['description']; ?>
                    </div>
                  </div>
                </div>
                <div class="footer">
                  <div class="meta-options">
                    <span class="meta-data"><i class="material-icons">local_offer</i> <?php echo $information['meta_keyword']; ?></span>
                    <span class="meta-data"><i class="material-icons">today</i> DATA</span>
                    <span class="meta-data"><i class="material-icons">tag</i> DATA</span>
                  </div>
                </div>
              </article>
              <?php } ?>
            </form>
              <?php } else { ?>
                <div class="card">
                    <div class="body bg-light-blue text-center">
                      <h1><?php echo $text_no_results_title; ?></h1>
                      <p><?php echo $text_no_results; ?></p>
                      <a href="<?php echo $add; ?>" class="btn btn-lg btn-default waves-effect"><?php echo $text_no_results_btn; ?></a>
                    </div>
                </div>
                
              <?php } ?>
              <div class="row">
                  <div class="col-md-6" style="margin-bottom:0px;"><nav><?php echo $pagination; ?></nav></div>
                  <div class="col-md-6 text-right" style="margin-bottom:0px;"><?php echo $results; ?></div>
                </div>
            </div>
        </div>
      </div>    
    </div>
  </section>

<!-- For Material Design Colors -->
<div class="modal fade" id="mdModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="defaultModalLabel">Are You Sure?</h4>
            </div>
            <div class="modal-body text-center font-24">
              You are about to permently delete <br /> [<span id="modal-article-title"></span>]<br /> Are you sure you want to continue?
            </div>
            <div class="modal-footer">
                <button type="button" id="modal-del-btn" class="btn btn-link waves-effect text-uppercase">Yes Delete</button>
                <button type="button" class="btn btn-link waves-effect text-uppercase" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
  var checkboxes = document.querySelectorAll('input[name*="selected"]');
  
  function selectAll(element) {
    var isSelected = element.getAttribute('data-select-all');
    var label = element.getElementsByClassName('label');

    
    for (let i = 0; i < checkboxes.length; i++) {
      var checkbox = checkboxes[i];
      if(isSelected == "false"){
        checkbox.checked = true;
        element.setAttribute("data-select-all","true");
        element.className = "btn bg-indigo waves-effect";   
        label[0].innerHTML = "<?php echo $text_all_selected;?>";
      }else{
        checkbox.checked = false;
        element.setAttribute("data-select-all","false");
        element.className = "btn btn-default waves-effect";
        label[0].innerHTML = "";
      }
    }
  }
    for (let i = 0; i < checkboxes.length; i++) {
      var checkbox = checkboxes[i];

      checkbox.addEventListener('change',function(){
        var selectAll = document.getElementById('selectAll');
        var isSelected = selectAll.getAttribute('data-select-all');
        var label = selectAll.getElementsByClassName('label');
        if(isSelected == "true"){
          selectAll.setAttribute("data-select-all","false");
          selectAll.className = "btn btn-default waves-effect";
          label[0].innerHTML = "";
        }
      },false);

      
  }

</script>

<script type="text/javascript">
$(function () {
    $('[data-rmi="delete"]').on('click', function (event) {
      var $ele = $(this);
        var color = $(this).data('color');
        $('#mdModal .modal-content').removeAttr('class').addClass('modal-content modal-col-' + color);
        $('#mdModal #modal-article-title').html($ele.data('rmi-article-title'));
        $('#mdModal').modal('show');

        var checkbox_id =  $ele.attr('data-rmi-id');
        $('#'+checkbox_id)[0].checked = true;

        $('#modal-del-btn').on('click', function(){
          
          $('#mdModal').modal('hide');
          
          $('#mdModal').one('hidden.bs.modal', function (event) {
            $('#form-information').submit();
          });
        });

        $('[data-dismiss="modal"]').on('click',function(event){
          var checkbox_id =  $ele.attr('data-rmi-id');
          $('#'+checkbox_id).attr('checked',false);
        });
    });
});
</script>
<?php echo $footer; ?>