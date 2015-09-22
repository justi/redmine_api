
module RedmineApi
  module Patches

    module IssuesControllerPatch
      def self.included(base) # :nodoc:
        base.send(:include, InstanceMethods)
      end

      module InstanceMethods

        # Returns offset and limit used to retrieve objects
		# for an API response based on offset, limit and page parameters
		def api_offset_and_limit(options=params)
		  if options[:offset].present?
		    offset = options[:offset].to_i
		    if offset < 0
		      offset = 0
		    end
		  end
		  limit = options[:limit].to_i
		  if limit < 1
		    limit = 1000
		  end
		  if offset.nil? && options[:page].present?
		    offset = (options[:page].to_i - 1) * limit
		    offset = 0 if offset < 0
		  end
		  offset ||= 0

		  [offset, limit]
		end
      end
    end
  end
end

unless IssuesController.included_modules.include?(RedmineApi::Patches::IssuesControllerPatch)
  IssuesController.send(:include, RedmineApi::Patches::IssuesControllerPatch)
end
