from PySide6.QtCore import QObject, Signal, Property, Slot

class GererNotes(QObject):
    
    notesChanged = Signal(list, arguments=["notes"])
    
    def __init__(self):
        super().__init__()
        self._notes = ["note 1", "note 2", "note 3"]

    @Property(list, constant=True)
    def notes(self):
        return self._notes
    
    @Slot(str)
    def add_note(self, note):
        self._notes.append(note)
        self.notesChanged.emit(self._notes)
