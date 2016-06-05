require "admin_pulse/version"

module AdminPulse
  class Metrics
    def call
      model = Solicitation
      scope = 'where("created_at > ?", 1.month.ago)'
      group = 'group("date(created_at)")'

      return_data = '{Fri, 27 May 2016=>146, Thu, 26 May 2016=>6996, Wed, 25 May 2016=>5334, Tue, 24 May 2016=>4396, Sat, 21 May 2016=>3826, Fri, 20 May 2016=>5093, Thu, 19 May 2016=>16211, Wed, 18 May 2016=>75, Tue, 17 May 2016=>3952, Mon, 16 May 2016=>1707, Sun, 15 May 2016=>297, Sat, 14 May 2016=>2540, Fri, 13 May 2016=>6424, Thu, 12 May 2016=>2033, Wed, 11 May 2016=>6978, Tue, 10 May 2016=>1447, Mon, 09 May 2016=>427, Sun, 08 May 2016=>215, Sat, 07 May 2016=>3201, Fri, 06 May 2016=>5550, Thu, 05 May 2016=>5465, Wed, 04 May 2016=>5650, Tue, 03 May 2016=>4991, Mon, 02 May 2016=>1754, Sun, 01 May 2016=>180, Sat, 30 Apr 2016=>3477, Fri, 29 Apr 2016=>5791, Thu, 28 Apr 2016=>3885, Wed, 27 Apr 2016=>6296}'
    end
  end
end
