class Task < Card
  belongs_to :project, optional: true
end
