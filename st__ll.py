class Task:
    def __init__(self, description, priority):
        self.description = description
        self.priority = priority
        self.next = None

class ToDoList:
    def __init__(self):
        self.head = None

    def add_task(self, description, priority):
        task = Task(description, priority)
        if not self.head:
            self.head = task
        else:
            task.next = self.head
            self.head = task

    def remove_task(self):
        if self.head:
            task = self.head
            self.head = self.head.next
            return task
        return None

    def display_tasks(self):
        tasks = []
        current = self.head
        while current:
            tasks.append(current)
            current = current.next
        sorted_tasks = sorted(tasks, key=lambda x: x.priority)
        for task in sorted_tasks:
            print(f'Task: {task.description}, Priority: {task.priority}')

todo_list = ToDoList()
todo_list.add_task("Complete project proposal", "High")
todo_list.add_task("Schedule team meeting", "Medium")
todo_list.add_task("Review draft presentation", "Low")
todo_list.add_task("Prepare weekly report", "High")
todo_list.add_task("Respond to client emails", "Medium")

todo_list.display_tasks()
