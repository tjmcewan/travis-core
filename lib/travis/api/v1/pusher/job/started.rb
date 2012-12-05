module Travis
  module Api
    module V1
      module Pusher
        class Job
          class Started < Job
            def data
              {
                'id' => job.id,
                'build_id' => job.source_id,
                'repository_id' => job.repository_id,
                'state' => job.state.to_s,
                'started_at' => format_date(job.started_at),
                'finished_at' => format_date(job.finished_at),
                'worker' => 'ruby3.worker.travis-ci.org:travis-ruby-4',
                'sponsor' => { 'name' => 'Railslove', 'url' => 'http://railslove.de' }
              }
            end
          end
        end
      end
    end
  end
end
