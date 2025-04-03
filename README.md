```bash
uv run miniwdl run wf.wdl --cfg conf.cfg
```

```
2025-04-03 12:20:25.917 wdl.w:wf NOTICE workflow start :: name: "wf", source: "wf.wdl", line: 10, column: 1, dir: "/vast/scratch/users/milton.m/MiniWdlBug/20250403_122025_wf"
2025-04-03 12:20:25.931 wdl.w:wf NOTICE miniwdl :: version: "v1.12.1", uname: "Linux slurm-login02.hpc.wehi.edu.au 5.14.0-362.24.1.el9_3.x86_64 #1 SMP PREEMPT_DYNAMIC Thu Feb 15 07:18:13 EST 2024 x86_64"
2025-04-03 12:20:25.938 wdl.w:wf NOTICE ready :: job: "call-my_task", callee: "my_task"
2025-04-03 12:20:25.945 wdl.w:wf.t:call-my_task NOTICE task setup :: name: "my_task", source: "wf.wdl", line: 1, column: 1, dir: "/vast/scratch/users/milton.m/MiniWdlBug/20250403_122025_wf/call-my_task", thread: 22525751285312
2025-04-03 12:20:26.368 wdl.w:wf.t:call-my_task NOTICE Singularity runtime initialized (BETA) :: singularity_version: "apptainer version 1.3.3"
2025-04-03 12:20:26.376 wdl.w:wf.t:call-my_task ERROR task my_task (wf.wdl Ln 1 Col 1) failed :: dir: "/vast/scratch/users/milton.m/MiniWdlBug/20250403_122025_wf/call-my_task", error: "KeyError", message: "'docker'", traceback: ["Traceback (most recent call last):", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/runtime/task.py\", line 207, in run_local_task", "    _try_task(cfg, task, logger, container, command, terminating)", "    ~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/runtime/task.py\", line 608, in _try_task", "    return container.run(logger, command)", "           ~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/runtime/task_container.py\", line 323, in run", "    exit_code = self._run(logger, terminating, command)", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/runtime/backend/cli_subprocess.py\", line 67, in _run", "    image = self._pull(logger, cleanup)", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/runtime/backend/cli_subprocess.py\", line 186, in _pull", "    image, invocation = self._pull_invocation(logger, cleanup)", "                        ~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/runtime/backend/singularity.py\", line 62, in _pull_invocation", "    image, invocation = super()._pull_invocation(logger, cleanup)", "                        ~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/runtime/backend/cli_subprocess.py\", line 132, in _pull_invocation", "    \"docker\", self.cfg.get_dict(\"task_runtime\", \"defaults\")[\"docker\"]", "              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^", "KeyError: 'docker'"]
2025-04-03 12:20:26.394 wdl.w:wf ERROR call failure propagating :: from: "call-my_task", dir: "/vast/scratch/users/milton.m/MiniWdlBug/20250403_122025_wf"
2025-04-03 12:20:26.394 wdl.w:wf NOTICE aborting workflow
2025-04-03 12:20:26.400 miniwdl-run ERROR 'docker' :: error: "KeyError", traceback: ["Traceback (most recent call last):", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/runtime/task.py\", line 207, in run_local_task", "    _try_task(cfg, task, logger, container, command, terminating)", "    ~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/runtime/task.py\", line 608, in _try_task", "    return container.run(logger, command)", "           ~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/runtime/task_container.py\", line 323, in run", "    exit_code = self._run(logger, terminating, command)", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/runtime/backend/cli_subprocess.py\", line 67, in _run", "    image = self._pull(logger, cleanup)", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/runtime/backend/cli_subprocess.py\", line 186, in _pull", "    image, invocation = self._pull_invocation(logger, cleanup)", "                        ~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/runtime/backend/singularity.py\", line 62, in _pull_invocation", "    image, invocation = super()._pull_invocation(logger, cleanup)", "                        ~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/runtime/backend/cli_subprocess.py\", line 132, in _pull_invocation", "    \"docker\", self.cfg.get_dict(\"task_runtime\", \"defaults\")[\"docker\"]", "              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^", "KeyError: 'docker'", "", "The above exception was the direct cause of the following exception:", "", "Traceback (most recent call last):", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/runtime/workflow.py\", line 1046, in _workflow_main_loop", "    __, outputs = future.result()", "                  ~~~~~~~~~~~~~^^", "  File \"/home/users/allstaff/milton.m/.local/share/uv/python/cpython-3.13.1-linux-x86_64-gnu/lib/python3.13/concurrent/futures/_base.py\", line 449, in result", "    return self.__get_result()", "           ~~~~~~~~~~~~~~~~~^^", "  File \"/home/users/allstaff/milton.m/.local/share/uv/python/cpython-3.13.1-linux-x86_64-gnu/lib/python3.13/concurrent/futures/_base.py\", line 401, in __get_result", "    raise self._exception", "  File \"/home/users/allstaff/milton.m/.local/share/uv/python/cpython-3.13.1-linux-x86_64-gnu/lib/python3.13/concurrent/futures/thread.py\", line 59, in run", "    result = self.fn(*self.args, **self.kwargs)", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/runtime/task.py\", line 275, in run_local_task", "    raise wrapper from exn", "WDL.runtime.error.RunFailed: task my_task (wf.wdl Ln 1 Col 1) failed", "", "The above exception was the direct cause of the following exception:", "", "Traceback (most recent call last):", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/CLI.py\", line 821, in runner", "    rundir, output_env = runtime.run(cfg, target, input_env, run_dir=run_dir, _cache=cache)", "                         ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/runtime/__init__.py\", line 63, in run", "    return entrypoint(cfg, exe, inputs, **run_kwargs)  # type: ignore", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/runtime/workflow.py\", line 934, in run_local_workflow", "    outputs = _workflow_main_loop(", "        cfg,", "    ...<9 lines>...", "        _test_pickle,", "    )", "  File \"/vast/scratch/users/milton.m/MiniWdlBug/.venv/lib/python3.13/site-packages/WDL/runtime/workflow.py\", line 1113, in _workflow_main_loop", "    raise wrapper from exn", "WDL.runtime.error.RunFailed: workflow wf (wf.wdl Ln 10 Col 1) failed"], dir: "/vast/scratch/users/milton.m/MiniWdlBug/20250403_122025_wf", from_dir: "/vast/scratch/users/milton.m/MiniWdlBug/20250403_122025_wf/call-my_task"
```
