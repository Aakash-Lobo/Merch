

<body style="background-image: url('assets/background.jpg');width: 100%;
  height: 500px;background-repeat: no-repeat; position:relative;background-size:100%;background-position: 0 90px
    ">
    <header class="py-5" id="main-header">
    <div class="container ">
        <div class="text-center text-white">
            <h1 class="display-4 ">&nbsp;</h1>
            <p class=" fw-normal text-white-50">&nbsp;</p>
        </div>
    </div>
</header>
    <div class="container px-30 px-lg-30 mt-30">
        <section class="py-5 px-10">
            <div class="text-black-50 row gx-4 gx-lg-5 row-cols-md-3 row-cols-xl-4 justify-content-center">
                <?php
                $products = $conn->query("SELECT * FROM `products` where status = 1 order by rand() limit 8 ");
                while ($row = $products->fetch_assoc()):
                    $upload_path = base_app . '/uploads/product_' . $row['id'];
                    $img = "";
                    if (is_dir($upload_path)) {
                        $fileO = scandir($upload_path);
                        if (isset($fileO[2]))
                            $img = "uploads/product_" . $row['id'] . "/" . $fileO[2];
                    }
                    foreach ($row as $k => $v) {
                        $row[$k] = trim(stripslashes($v));
                    }
                    $inventory = $conn->query("SELECT * FROM inventory where product_id = " . $row['id']);
                    $inv = array();
                    while ($ir = $inventory->fetch_assoc()) {
                        $inv[] = number_format($ir['price']);
                    }
                    ?>
                    <div class="col mb-5">
                        <div class="card product-item">
                            <!-- Product image-->
                            <img class="card-img-top w-100 book-cover" src="<?php echo validate_image($img) ?>" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">
                                        <?php echo $row['title'] ?>
                                    </h5>
                                    <!-- Product price-->
                                    <?php foreach ($inv as $k => $v): ?>
                                        <span><b>Price: </b>
                                            <?php echo $v ?>
                                        </span>
                                    <?php endforeach; ?>
                                </div>
                                <p class="m-0"><small>By:
                                        <?php echo $row['brand'] ?>
                                    </small></p>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                    <a class="btn  btn-primary "
                                        href=".?p=view_product&id=<?php echo md5($row['id']) ?>">View</a>
                                </div>

                            </div>
                        </div>
                    </div>
                <?php endwhile; ?>
            </div>
    </div>
    </section>
</body>