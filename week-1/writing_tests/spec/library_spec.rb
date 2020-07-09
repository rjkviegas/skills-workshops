require 'library'
describe Library do
  it 'can find a specific book' do
    title = 'The Well Grounded Rubyist'
    expect(subject.find_book(title)).to eq ({title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'})
  end

  it 'can add a new book' do
    book = {title: 'DMO Diaries'}
    expect(subject.add_book(book)).to eq ([
      {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'},
      {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
      {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'},
      {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'},
      {title: 'DMO Diaries'}
    ])
  end

  it 'can remove a book' do
    title = 'The Well Grounded Rubyist'
    expect(subject.remove_book(title)).to eq ([
      {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'},
      {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
      {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'},
    ])
  end

  it 'can list all the books on a specific subject' do
    subject = 'Ruby'
    expect(Library.new.all_books_by_subject(subject)).to eq ([{title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'}, 
      {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'}])
  end
end

