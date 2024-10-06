from gerernotes.note import Note
from gerernotes.folder import Folder


if __name__ == "__main__":
    dev_folder = Folder("Development")
    design_folder = Folder("Design")
    
    note1 = Note("Note 1", "This is the first dev note")
    note2 = Note("Note 2", "This is the first design note")
    note3 = Note("Note 3", "Some other note")

    note1.folder = dev_folder
    note2.folder = design_folder
    note3.folder = dev_folder
    note3.folder = design_folder
    
    notes = [note1, note2, note3]
    folders = [dev_folder, design_folder]
    
    for folder in folders:
        print(folder)
    
    print("-" * 50)
    
    for note in notes:
        print(note)