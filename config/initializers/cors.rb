Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "example.com",
           "https://localhost:5173",
           "https://task-priority-breakdown.up.railway.app",  # ✅ Time Management App Frontend
           "https://time-management-app-production.up.railway.app"  # ✅ Time Management App Backend

    resource "*",
             headers: :any,
             credentials: true,
             expose: ["Authorization"],
             methods: [:get, :post, :patch, :put, :delete, :options, :head]
  end
end
