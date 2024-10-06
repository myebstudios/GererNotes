from datetime import datetime

class Folder:
    def __init__(self, name) -> None:
        self.name = name
        self.notes = []
        self.created_at = datetime.now()
        self.last_edited = self.created_at
    
    def add_note(self, note):
        self.notes.append(note)
    
    def __str__(self):
        return f"""
        Name: {self.name}
        Notes: {len(self.notes)}
        Created at: {self.created_at}
        Last edited: {self.last_edited}
        {"-" * 50}
        """