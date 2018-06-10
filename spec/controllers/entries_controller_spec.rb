describe EntriesController, "#create" do
  it "creates Entry" do
    expect do
      post :create, params: { entry: { nick: 'Nick', email: 'te@st.com', content: 'Hello!' } }
    end.to change(Entry, :count).by(1)
  end
end