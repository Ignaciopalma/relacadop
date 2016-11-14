json.extract! report, :id, :title, :headliner, :content, :created_at, :updated_at
json.url report_url(report, format: :json)