<?php
include_once("header.php");
?>
<table>
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th>Product Name</th>
                                            <th>Until Price</th>
                                            <th>Qty</th>
                                            <th>Subtotal</th>
                                            <th></th>
                                        </tr>
                                    </thead>
									<tbody>
										<tr>
                                            <td class="product-thumbnail">
                                                <a href="#"><img src="assets/img/cart/cart-4.jpg" alt=""></a>
                                            </td>
                                            <td class="product-name"><a href="#">Phantom Remote Control Ver 2018</a></td>
                                            <td class="product-price-cart"><span class="amount">$150.00</span></td>
                                            <td class="product-quantity">
                                                <div class="pro-dec-cart">
                                                    <input class="cart-plus-minus-box" type="text" value="02" name="qtybutton">
                                                </div>
                                            </td>
                                            <td class="product-subtotal">$150.00</td>
                                            <td class="product-remove">
                                                <a href="#"><i class="fa fa-pencil"></i></a>
                                                <a href="#"><i class="fa fa-times"></i></a>
                                           </td>
										</tr>
									</tbody>
</table>										
<?php
include_once("footer.php");
?>										