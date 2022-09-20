require 'tasks'

describe TodoList do
  it "returns an empty array if no tasks are added" do
    todo_list = TodoList.new
    expect(todo_list.list).to eq []
  end

  it "holds an added task" do
    todo_list = TodoList.new
    todo_list.add("Blow out candles")
    expect(todo_list.list).to eq ["Blow out candles"]
  end

  it "holds multiple added tasks" do
    todo_list = TodoList.new
    todo_list.add("Blow out candles")
    todo_list.add("Close the window")
    expect(todo_list.list).to eq ["Blow out candles", "Close the window"]
  end 

  it "removes completed tasks" do
    todo_list = TodoList.new
    todo_list.add("Blow out candles")
    todo_list.add("Close the window")
    todo_list.complete("Blow out candles")
    expect(todo_list.list).to eq ["Close the window"]
  end

  context "when we try to complete a non-existent task" do 
    it "fails" do
      todo_list = TodoList.new
      todo_list.add("Blow out candles")
      expect{ todo_list.complete("Hang out the washing.") }.to raise_error "No such task."
    end
  end
end

# Must use {} around a fail spec statement.