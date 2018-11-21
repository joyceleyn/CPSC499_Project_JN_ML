file <- "../Structure Files/3kcomp_filtered_full_default50000_k2r1_f"
deStruct <- function(file){
  #open the connection to a structure file
  mycon <- file(file, open = "r")
  qc_structure <- readLines(mycon,10)
  if(sum(grepl("Joyce", qc_structure)) == 0){
    warning("The file does not appear to be a structure file")
  } 
  #readlines (warn=FALSE because the structure files have a missing  End of line marker that throws a warning)
  while(length(mylines <- readLines(mycon, 500, warn = FALSE)) > 0){
    if(grep("STRUCTURE by Pritchard", mylines, value = TRUE))
    qc_structure <- grep("STRUCTURE by Pritchard", mylines, value = TRUE)
    for(line in mylines){
      
    }
    structure_file <- mylines
  }
  #close the connection to the file
  close(mycon)
  return(structure_file)
}
deStruct("../Structure Files/3kcomp_filtered_full_default50000_k2r1_f")
head(stru)