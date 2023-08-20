<?php if($_settings->chk_flashdata('success')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>
<?php
include('../Common/admin-sidenav-header.php');
?>
<div class="app-content" style="padding-bottom: 24px">
	<div class="app-content-header">
		<h1 class="app-content-headerText">Inventory</h1>
		
	</div>
	<div></div>
	<br />
<div class="card">
	<div class="card-header">
		<h3 class="card-title">List of Inventory</h3>
		<div class="card-tools">
			<a href="?page=inventory/manage_inventory" class="btn btn-primary">Create New</a>
		</div>
	</div>
	<div class="card-body">
		<div class="container-fluid">
        <div class="container-fluid">
		<div class="products-area-wrapper tableView">	
				<thead>
				<div class="products-header">
						<div class="product-cell"><span>#</span></div>
						<div class="product-cell"><span>Product</span></div>
						<div class="product-cell"><span>Price</span></div>
						<div class="product-cell"><span>Stock</span></div>
						<div class="product-cell"><span>Action</span></div>
</div>
				</thead>
				<tbody>
					<?php 
					$i = 1;
						$qry = $conn->query("SELECT i.*,p.title as product,p.brand from `inventory` i inner join `products` p on p.id = i.product_id order by unix_timestamp(i.date_created) desc ");
						while($row = $qry->fetch_assoc()):
						$sold = $conn->query("SELECT SUM(ol.quantity) as sold FROM order_list ol inner join orders o on o.id = ol.order_id where ol.product_id='{$row['id']}' and o.`status` != 4 ");
						$sold = $sold->num_rows > 0 ? $sold->fetch_assoc()['sold'] : 0;
						$avail = $row['quantity'] - $sold;
						foreach($row as $k=> $v){
							$row[$k] = trim(stripslashes($v));
						}
					?>
						<div class="products-row">
						<div class="product-cell"><span><?php echo $i++; ?></span></div>
						<div class="product-cell"><span>
								<p class="m-0"><small><b>Product Name:</b> <?php echo $row['product'] ?></small></p>
								<p class="m-0 truncate"><b>Brand:</b> <?php echo $row['brand'] ?></p>
							</span></div>
							<div class="product-cell"><span><?php echo number_format($row['price']) ?></span></div>
							<div class="product-cell"><span><?php echo $avail ?></span></div>
							<div class="product-cell"><span>
								 <button type="button" class="btn  btn-default btn-sm dropdown-toggle dropdown-icon" data-toggle="dropdown">
				                  		Action
				                    <span class="sr-only">Toggle Dropdown</span>
				                  </button>
				                  <div class="dropdown-menu" role="menu">
				                    <a class="dropdown-item" href="?page=inventory/manage_inventory&id=<?php echo $row['id'] ?>"><span class="fa fa-edit text-primary"></span> Edit</a>
				                    <div class="dropdown-divider"></div>
				                    <a class="dropdown-item delete_data" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>"><span class="fa fa-trash text-danger"></span> Delete</a>
				                  </div>
							</span></div>
					</div>
					<?php endwhile; ?>
				</tbody>
				</div>
		</div>
		</div>
	</div>
</div>
<script>
	$(document).ready(function(){
		$('.delete_data').click(function(){
			_conf("Are you sure to delete this inventory permanently?","delete_inventory",[$(this).attr('data-id')])
		})
		$('.table').dataTable();
	})
	function delete_inventory($id){
		start_loader();
		$.ajax({
			url:_base_url_+"classes/Master.php?f=delete_inventory",
			method:"POST",
			data:{id: $id},
			dataType:"json",
			error:err=>{
				console.log(err)
				alert_toast("An error occured.",'error');
				end_loader();
			},
			success:function(resp){
				if(typeof resp== 'object' && resp.status == 'success'){
					location.reload();
				}else{
					alert_toast("An error occured.",'error');
					end_loader();
				}
			}
		})
	}
</script>