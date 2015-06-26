json.array!(@fax_jobs) do |fax_job|
  json.extract! fax_job, :id, :fax, :file_name, :sender_email, :sender_name
  json.url fax_job_url(fax_job, format: :json)
end
