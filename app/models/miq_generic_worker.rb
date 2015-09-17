class MiqGenericWorker < MiqQueueWorkerBase
  require_dependency 'miq_generic_worker/runner'

  self.default_queue_name     = "generic"
  self.check_for_minimal_role = false
  self.workers                = lambda { MiqServer.minimal_env? ? 1 : self.worker_settings[:count] }
end
