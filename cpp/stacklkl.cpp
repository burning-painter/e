#include <iostream>

using namespace std;

struct node
{
    int data;
    node *next;
};

void push(node *&head, int z=5)
{
    node *temp = new node;
    temp->data = z;
    temp->next = head;
    head = temp;
}

void pop(node *&head)
{
    if (head == NULL)
    {
        cout << "stack is empty" << endl;
        return;
    }
    
    node *temp = head;
    head = head->next;
    delete temp;
}

void show(node *head)
{
    if (head == NULL)
    {
        cout << "stack is empty" << endl;
        return;
    }
    
    node *temp = head;
    while (temp != NULL)
    {
        cout << temp->data << endl;
        temp = temp->next;
    }
}

int main ()
{
    node *head = NULL;
    
    push(head, 6);
    push(head, 7);
    show(head);
    
    pop(head);
    show(head);

    return 0;
}
