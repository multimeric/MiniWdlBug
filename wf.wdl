task my_task {
  command {
    sleep 5
  }
  runtime {
    docker: "ubuntu:20.04"
  }
}

workflow wf {
  call my_task
}
