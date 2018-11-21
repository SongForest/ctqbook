package jsdx.zr.dao;


import jsdx.zr.entity.Note;

public interface NoteDao {

	public Note findNoteById(int noteId);
	
	public int add(Note note);
	
}
