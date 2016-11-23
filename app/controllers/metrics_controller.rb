module Api
  module V1
    class MetricsController < BaseController
      def index
        @top_jobs = Failure
                        .select("pipeline, job, count(*) as count")
                        .where("created_at > now() - interval '7' day")
                        .group("pipeline, job")
                        .order("3 desc")
                        .limit(10)


        @categories = Failure
                          .select("category, count(*) as count")
                          .where("created_at > now() - interval '7' day")
                          .group("category")
                          .order("2 desc")

        @count = Failure
                     .where("created_at > now() - interval '7' day")
                     .count

      end
    end
  end
end
