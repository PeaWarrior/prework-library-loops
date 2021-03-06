require 'pry'

library = [
  {title: "Dracula", author: "Bram Stoker", genres: ["Horror", "Gothic"], pages: 418, publication_year: 1897, completed: true},
  {title: "Slaughterhouse Five; or the Children's Crusade", author: "Kurt Vonnegut, Jr.", genres: ["Satire", "Science Fiction"], pages: 186, publication_year: 1969, completed: false},
  {title: "Frankenstein; or, the Modern Prometheus", author: "Mary Shelley", genres: ["Gothic", "Horror", "Science Fiction"], pages: 280, publication_year: 1818, completed: true},
  {title: "Circe", author: "Madeline Miller", genres: ["Historical Fiction", "Fantasy"], pages: 385, publication_year: 2018, completed: false},
  {title: "Inferno", author: "Dante Alighieri", genres: ["Epic"], pages: 261, publication_year: 1320, completed: true},
  {title: "Mastering the Art of French Cooking", author: "Simone Beck, Louisette Bertholie, Julia Child", genres: ["Cooking"], pages: 726, publication_year: 1961, completed: false},
  {title: "Animal Farm", author: "George Orwell", genres: ["Political Satire"], pages: 112, publication_year: 1945, completed: true},
  {title: "War and Peace", author: "Leo Tolstoy", genres: ["Historical Fiction"], pages: 1225, publication_year: 1869, completed: false},
  {title: "The Innovators: How a Group of Hackers, Geniuses, and Geeks Created the Digital Revolution", author: "Walter Isaacson", genres: ["Biography"], pages: 488, publication_year: 2014, completed: false},
  {title: "Twilight", author: "Stephanie Meyer", genres: ["Young Adult", "Fantasy", "Romance"], pages: 498, publication_year: 2005, completed: true},
  {title: "The Life of Washington", author: "Mason Weems", genres: ["Historical Fiction", "Biography"], pages: 264, publication_year: 1809, completed: false},
  {title: "The Travels of John Mandeville", author: "John Mandeville", genres: ["Historical Fiction", "Fantasy"], pages: 167, publication_year: 1371, completed: false},
  {title: "Gulliver's Travels; or, Travels into Several Remote Nations of the World. In Four Parts. By Kenuel Gulliverr, First a Sugeon, and tthen a Captain of Several Ships", author: "Jonathan Swift", genres: ["Political Satire", "Fantasy"], pages: 240, publication_year: 1726, completed: true}
]

# WRITE CODE BELOW HERE

def all_pages(library)
  pages_array = []
  
  library.each do |book_hash|
    pages_array << book_hash[:pages]
  end
  p pages_array.reduce(:+)

end


# WRITE CODE ABOVE HERE

def all_genres(library)
  genres_array = []

  library.each do |book_hash|
    book_hash[:genres].each do|genre|
      
      if !genres_array.include?(genre)
        genres_array << genre
      end
    end
  end
  p genres_array
end

def all_pages_read (library)
  pages_read = 0
  library.each do |book_hash|
    if book_hash[:completed]
      pages_read += book_hash[:pages]
    end
  end
  p pages_read
end

all_pages_read(library)