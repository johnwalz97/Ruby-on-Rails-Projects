function BinarySearchTree(){
  this.root = null;
}

BinarySearchTree.prototype.push = function(val){
   var root = this.root;

   if(!root){
      this.root = new Node(val);
      return;
   }

   var currentNode = root;
   var newNode = new Node(val); 

   while(currentNode){
      if(val < currentNode.value){
          if(!currentNode.left){
             currentNode.left = newNode;
             break;
          }
          else{
             currentNode = currentNode.left;
        }
     }
     else{
         if(!currentNode.right){
            currentNode.right = newNode;
            break;
         }
         else{
            currentNode = currentNode.right;
         }
     }
  }

}

function Node(val){
  this.value = val;
  this.left = null;
  this.right = null;
}

var bst = new BinarySearchTree();

for (var i = 0; i < 100; i++) {
    bst.push(Math.floor(Math.random() * 100));
}

function height(node){
   if(!node) return 0;
   var leftHeight = height(node.left);
   var rightHeight = height(node.right);
   return Math.max(leftHeight, rightHeight) + 1;
}

console.log(height(bst.root));