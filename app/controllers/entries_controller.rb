class EntriesController < ApplicationController
   
   
    def index
    @entries= Entry.all
end

def show
    @entry= Entry.find(params["id"])
end

def new
end

def create
    entry_params = params["entry"].permit("title", "contents")
    entry = Entry.new 
  if entry = Entry.create(entry_params)
  redirect_to(entry_path(entry))
  else render "new"
  end
      end

def edit
  @entry = Entry.find(params["id"])
end


def update
  entry_params = params["entry"].permit("title", "contents")
  entry = Entry.find(params["id"])
  entry.update(entry_params)
  redirect_to(entry_path(entry))
end


def destroy
    @entry= Entry.find(params["id"])
    @entry.destroy
    redirect_to(entries_path)
end

def new
    @entry = Entry.new
end

end
