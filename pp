class Node:
    def __init__(self,data):
        self.data=data
        self.next=None
class LinkedList:
    def __init__(self):
        self.head=None
    def print__ll(self):
        n=self.head
        if n is None:
            print("Linked list is empty")
        else:
            while n is not None:
                print(n.data,"-->",end=" ")
                n=n.next
    def add_begin(self,data):
        new_node=Node(data)
        new_node.next=self.head
        self.head=new_node
    def add_end(self,data):
        new_node=Node(data)
        n=self.head
        if n is None:
           n=new_node
        else:
            while n.next is not None:
                n=n.next
        n.next=new_node
    def add_after(self, data, x):
        n = self.head
        while n is not None:
            if n.data == x:  
                break
            n = n.next
        
        if n is None:
            print(f"Node with data {x} not found in the list.")
        else:
            new_node = Node(data)  
            new_node.next = n.next  
            n.next = new_node  

    def add_before(self,data,x):
        if self.head is None:
            print("Linked List is empty!")
            return
        if self.head.data==x:
            new_node = Node(data)
            new_node.next = self.head
            self.head = new_node
            return
        n = self.head
        while n.next is not None:
            if n.next.data==x:
                break
            n = n.next        
        if n.next is None:
            print("Node is not found!")
        else:
            new_node = Node(data)
            new_node.next = n.next
            n.next = new_node     
    
    def delete_begin(self):
        if self.head is None:
            print("Linked List is empty can't delete!")
        else:
            self.head=self.head.next

    def delete_end(self):
        if self.head is None:
            print("LL is empty")
        else:
            n=self.head
            while n.next.next  is not None:
                n=n.next
        n.next=None
    
    
    def del_by_value(self, x):
        if self.head is None:
            print("Linked List is empty")
            return
        if x == self.head.data:
            self.head = self.head.next
            return
        n = self.head
        while n.next is not None:
            if n.next.data == x:
                n.next = n.next.next  
                return
            n = n.next
        print("Node with value", x, "is not present")


    

ll1=LinkedList()
ll1.add_begin(11)
ll1.add_end(20)
ll1.add_after(200,11)
ll1.add_before(300,20)
ll1.delete_begin()
ll1.delete_end()
ll1.del_by_value(300)
ll1.print__ll()
