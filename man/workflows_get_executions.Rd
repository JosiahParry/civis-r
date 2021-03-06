% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{workflows_get_executions}
\alias{workflows_get_executions}
\title{Get a workflow execution}
\usage{
workflows_get_executions(id, execution_id)
}
\arguments{
\item{id}{integer required. The ID for the workflow.}

\item{execution_id}{integer required. The ID for the workflow execution.}
}
\value{
A list containing the following elements:
\item{id}{integer, The ID for this workflow execution.}
\item{state}{string, The state of this workflow execution.}
\item{mistralState}{string, The state of this workflow as reported by mistral. One of running, paused, success, error, or cancelled}
\item{mistralStateInfo}{string, The state info of this workflow as reported by mistral.}
\item{user}{object, A list containing the following elements: 
\itemize{
\item id integer, The ID of this user.
\item name string, This user's name.
\item username string, This user's username.
\item initials string, This user's initials.
\item online boolean, Whether this user is online.
}}
\item{definition}{string, The definition of the workflow for this execution.}
\item{input}{object, The dictionary of name/value input pairs defined for this execution.}
\item{includedTasks}{array, The subset of workflow tasks selected to execute.}
\item{tasks}{array, An array containing the following fields: 
\itemize{
\item name string, The name of the task.
\item mistralState string, The state of this task. One of idle, waiting, running, delayed, success, or error
\item mistralStateInfo string, Extra info associated with the state of the task.
\item runs array, The runs associated with this task, in descending order by id.
\item executions array, The executions run by this task, in descending order by id.
}}
\item{startedAt}{string, The time this execution started.}
\item{finishedAt}{string, The time this execution finished.}
\item{createdAt}{string, The time this execution was created.}
\item{updatedAt}{string, The time this execution was last updated.}
}
\description{
Get a workflow execution
}
