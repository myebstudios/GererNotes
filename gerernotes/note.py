from datetime import datetime
from gerernotes.folder import Folder

class Note:
    def __init__(self, title, text) -> None:
        self.title = title
        self.text = text
        self.folder = Folder("None")
        self.created_at = datetime.now()
        self.last_edited = self.created_at
    
    @property
    def title(self):
        return self._title

    @title.setter
    def title(self, value):
        if len(value) == 0:
            raise ValueError('Title cannot be empty')
        self._title = value
        self.update_last_edited()
    
    @property
    def folder(self):
        return self._folder

    @folder.setter
    def folder(self, folder):
        if not isinstance(folder, Folder):
            raise ValueError('Folder must be a Folder object')
        print(f"Adding note: {self.title} to folder: {folder.name}")
        folder.add_note(self)
        self._folder = folder
        self.update_last_edited()
    
    def update_last_edited(self):
        self.last_edited = datetime.now()
    
    def __str__(self) -> str:
        return f"""
        Title: {self.title}
        Text: {self.text}
        Folder: {self.folder.name}
        Created at: {self.created_at}
        Last edited: {self.last_edited}
        {"-" * 50}
        """
