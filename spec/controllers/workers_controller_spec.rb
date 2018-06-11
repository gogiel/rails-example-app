describe WorkersController, "#create" do
  it "starts a job and redirects to root" do
    expect(LazyWorker).to receive(:perform_async)
    post :create

    expect(subject).to redirect_to(root_path)
  end

  it "starts a job and redirects to referer when present" do
    request.env['HTTP_REFERER'] = entries_url
    expect(LazyWorker).to receive(:perform_async)
    post :create

    expect(subject).to redirect_to(entries_url)
  end
end