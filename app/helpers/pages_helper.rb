module PagesHelper

  def foods_needed_list
    @foods_needed = [
      "Dry & wet dog (no generic like Ol' Roy)",
      "Dry & wet puppy",
      "Dry & wet cat",
      "Dry & wet kitten",
      "Litter"
    ]
  end

  def items_needed_list
    @items_needed = [
      "Dog Bowls",
      "Dog Food (wet or dry)",
      "Dog Toys",
      "Buckle Collars",
      "Dog Beds",
      "Leashes (regular and slip)",
      "Dog Bones (like Nylabones)",

      "Dog Wipes",
      "Folding Metal Crates",
      "Puppy Pads (XL)",
      "Dog Treats",
      "Towels, Sheets, Blankets (new or clean used)",
      "Office Supplies (computer paper, paper clips, manilla folders)",
      "Trash Bags"
    ]
  end

  def future_events_except_first?(event)
    event.when >= Date.today && event != @first_future_event
  end
end
