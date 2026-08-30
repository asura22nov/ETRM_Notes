# ETRM_Notes

https://github.com/asura22nov/ETRM_Notes

[asura22nov.github.io/ETRM_Notes/](https://asura22nov.github.io/ETRM_Notes/)

```dataviewjs
// Get all markdown files in the vault
const files = dv.pages();

// Group files by their folder path
const groups = files.groupBy(p => {
    // If the file is in the root folder, group it under "Root"
    return p.file.folder ? p.file.folder : "Root Documents";
});

// Sort the folder names alphabetically (or numerically like your 1, 2, 3 system)
groups.sort(g => g.key, 'asc');

// Loop through each folder group and display the layout
for (let group of groups) {
    // Display the folder name as a Heading 2 (##)
    dv.header(2, group.key);
    
    // Sort the notes inside each folder by name
    const sortedNotes = group.rows.sort(r => r.file.name, 'asc');
    
    // Display the notes as a bulleted list of links
    dv.list(sortedNotes.file.link);
}

```
