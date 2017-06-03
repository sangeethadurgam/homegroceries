var app = angular.module("app",[]);
app.controller("ProductController",function($scope,$http){
	
	//var origin= window.location.origin;
	
	
	$scope.addToCart = function(productId){
		console.log("cart");
		$http.put('http://localhost:8383/homegroceries/cart/addCartItem/'+productId).success(function(){
			console.log("cart1");
			alert("Product sucessfully added to the cart");
		});
	}
  
	$scope.getCart=function(cartId){
		$scope.cartId = cartId;
		$http.get('http://localhost:8383/homegroceries/cart/getCart/'+cartId).success(function(data){
			$scope.cart=data;
	
		});
	}
  $scope.removeFromCart=function(cartItemId){
	  
	  $http.put('http://localhost:8383/homegroceries/cart/removeCartItem/'+cartItemId).success(function(){
		  $scope.getCart($scope.cartId);
	  });
  }
  $scope.clearCart=function(){
	
	 $http.put('http://localhost:8383/homegroceries/cart/removeAllCartItems/'+$scope.cartId).success(function(){
		 $scope.getCart($scope.cartId);
	 })
  }
  $scope.calculateGrandTotal=function(){
	  var grandTotal = 0.0;
	  
	  for(i=0;i<$scope.cart.cartItems.length;i++){
		   grandTotal = grandTotal+$scope.cart.cartItems[i].totalPrice;
	  }
	  return grandTotal;
  }
 
  $scope.check=function(productId){
	   var quantity = this.quant;
     $http.put('http://localhost:8080/foodmonster/cart/updatequan/'+productId+'/'+quantity).success(function(){
    	 $scope.getCart($scope.cartId);
     });
  }
  
 
	     
  
  
});