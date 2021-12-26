require "rails_helper"

describe Todo, "#completed?" do
  it "Returns true if completed_at is set" do
    todo = Todo.new(completed_at: Time.current)
    expect(todo).to be_completed
  end
  it "Returns false if completed_at if nil" do
    todo = Todo.new(completed_at: nil)
    expect(todo).not_to be_completed
  end
end

describe Todo, "#complete!" do
  it "update completed_at" do
    todo = Todo.create!(completed_at: nil)

    todo.complete!

    todo.reload

    expect(todo).to be_completed
  end
end
