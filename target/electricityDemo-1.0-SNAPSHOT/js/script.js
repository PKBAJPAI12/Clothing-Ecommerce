function add_to_cart(pid,pname,price){
    let cart=localStorage.getItem("cart");
    if(cart==null){
        //no cart yet
        let products=[];
        let product={
            productId:pid,
            productName:pname,
            productQuantity: 1,
            productPrice:price
        }
        products.push(product);
        localStorage.setItem("cart",JSON.stringify(products));
        console.log("Product is added for the first time")
    }
    else {
        //cart is already present
        let pcart=JSON.parse(cart);
        let oldProduct=pcart.find((item)=>item.productId==pid);
        if (oldProduct){
            //we have to increase the quantity
            oldProduct.productQuantity=oldProduct.productQuantity+1; //we have increased the quantity
            pcart.map((item)=>{
                if(item.productId == oldProduct.productQuantity+1){
                    item.productQuantity=oldProduct.productQuantity+1;
                }
            })
            localStorage.setItem("cart",JSON.stringify(pcart));
            console.log("Product quantity is increased")
        }
        else {
            //we have to add the product
            let product={
                productId:pid,
                productName:pname,
                productQuantity: 1,
                productPrice:price
            }
            pcart.push(product);
            // updates the cart
            localStorage.setItem("cart",JSON.stringify(pcart));
            console.log("Product is added")
        }
    }
    updateCart();
}

//update cart
function updateCart(){
    let cartString=localStorage.getItem("cart");
    let cart=JSON.parse(cartString);
    if(cart==null || cart.length===0){
        console.log("Cart is Empty!!");
        $(".cart-items").html("(0)");   //we inject the html using jquery to html if the cart is empty
        $(".cart-body").html("<h3>Cart does not have any items</h3>");
        disableButton()
    }else
    {
        //there is something in cart to show
        $(".cart-items").html(`(${cart.length})`);   //we inject the html using jquery to html if the cart is empty
        let table=`
        <table class="table">
        <thead class="thead-light">
        <tr>
        <th>Item Name</th>
        <th>Item Price</th>
        <th>Item Quantity</th>
        <th>Item Total Price</th>
        <th>Action</th>
        </tr>
        </thead>
        `;
        let totalPrice=0;
        //for every item of cart
        cart.map((item)=>{
            table+=`
            <tr>
            <td>${item.productName}</td>
            <td>${item.productPrice}</td>
            <td>${item.productQuantity}</td>
            <td>${item.productQuantity*item.productPrice}</td>
            <td><button onclick="deleteItemFromCart(${item.productId})" class="btn btn-danger btn-sm">Remove</button></button></td>
            </tr>
            `
            totalPrice+=item.productPrice*item.productQuantity;
        })
        table=table+`
                   <tr>
                   <td colspan="5" class="text-right font-weight-bold m-5">
                   Total Price: ${totalPrice}
                    </td>
                    </tr> 
                    </table>`
        $(".cart-body").html(table);
        enableButton()
        // return table;
    }
}

//delete item
function deleteItemFromCart(pid){
    let cart=JSON.parse(localStorage.getItem('cart'));
    let newcart=cart.filter((item)=>item.productId!=pid);
    localStorage.setItem('cart',JSON.stringify(newcart));
    updateCart();
}


//when the document is ready then jquery run
$(document).ready(function (){
    updateCart()
})

function goToCheckout(){
    window.location="checkout.jsp"
}

function disableButton() {
    $('.checkout-btn').prop("disabled", true);
}
function enableButton() {
    $('.checkout-btn').prop("disabled", false);
}

//first request to server to create order
function paymentStart(){
    console.log("Payment Started..");
    let amount=$("#payment_field").val();
    console.log(amount);
    if(amount=="" || amount==null){
        alert("amount is required");
        return;
    }

    //code
    //we will use ajax to send request to server jquery ajax

    $.ajax(
        {
            url:'Helper/create_order',
            data:JSON.stringify({amount:amount, info: 'order_request'}),
            contentType: 'application/json',
            type:'POST',
            data_type:'json',
            success:function(response){
                //invokes when success
                console.log(response)
            },
            error:function (error){
                //invoked when error
                console.log("something went wrong!!")
                alert("something went wrong")
            }
        }
    )
}


function orderNow() {
    let cartString = localStorage.getItem("cart");
    let cart = JSON.parse(cartString);
    // console.log(cart)
    $.ajax(
        {
            url:'OrderServlet',
            data:JSON.stringify(cart),
            contentType: 'application/json',
            type:'POST',
            data_type:'json',
            success:function(data){
                //invokes when success
                // console.log(data)
                // alert("Yes")
                // window.location="index.jsp"
                $(".card-body").hide()
                $(".getOrderData").html("<h3>Your Order is Successfully ordered you will recieve" +
                    " your order within 7 days</h3>")
            },
            error:function (error){
                //invoked when error
                console.log("something went wrong!!")
                alert("something went wrong")
            }

        }
    )
}
function tableToJson(table){
    let data = [];
    //first row need to be header
    let header = [];
    for(let i=0; i<table.rows[0].cells.length; i++){
        header[i] = table.rows[0].innerHTML.toLowerCase().replace(/ /gi,'');
    }
    //go through cells
    for(let i=1; i<table.rows.length; i++){
        let tableRow = table.rows[i];
        let rowData = {};
        for(let j=0; j<tableRow.cells.length; j++){
            rowData[header[j]] = tableRow.cells[j].innerHTML;
        }
        data.push(rowData);
    }
    return data;
}
