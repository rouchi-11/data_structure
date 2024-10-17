class node:
  def __init__(self,data):
    self.data=data
    self.right=None
    self.left=None

class TreeNode:
  def __init__(self):
    self.root=None

  def insert(self,root,data):
    new_node=node(data)
    if self.root==None:
      self.root=new_node
    else:
      if root.data<=new_node.data:
        if root.right==None:
          root.right=new_node
        else:
          self.insert(root.right,data)
      else:
        if root.left==None:
          root.left=new_node
        else:
          self.insert(root.left,data)
    
        
    def get_level(self):
        level = 0
        p = self.parent
        while p:
            level += 1
            p = p.parent
        return level
    
    def print_tree(self,node,level=0,prefix="Root:"):
        if node is not None:
            print(""*(level*4)+prefix+str(node.data))
            if node.left or node.right:
                if node.left:
                    self.print_tree(node.left,level+1,"L---")
                if node.right:
                    self.print_tree(node.right,level+1,"R---")



if __name__ == "__main__":
    bst=TreeNode
    dataset=[5,3,7,2,4,6,8,3]
    for data in dataset:
        bst.insert(data)
        bst.print_tree(bst.root)
    
