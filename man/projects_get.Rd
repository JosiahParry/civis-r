% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{projects_get}
\alias{projects_get}
\title{Get a detailed view of a project and the objects in it}
\usage{
projects_get(project_id)
}
\arguments{
\item{project_id}{integer required.}
}
\value{
A list containing the following elements:
\item{id}{integer, The ID for this project.}
\item{author}{object, A list containing the following elements: 
\itemize{
\item id integer, The ID of this user.
\item name string, This user's name.
\item username string, This user's username.
\item initials string, This user's initials.
\item online boolean, Whether this user is online.
}}
\item{name}{string, The name of this project.}
\item{description}{string, A description of the project}
\item{users}{array, An array containing the following fields: 
\itemize{
\item id integer, The ID of this user.
\item name string, This user's name.
\item username string, This user's username.
\item initials string, This user's initials.
\item online boolean, Whether this user is online.
}}
\item{autoShare}{boolean, }
\item{createdAt}{string, }
\item{updatedAt}{string, }
\item{tables}{array, An array containing the following fields: 
\itemize{
\item schema string, 
\item name string, 
\item rowCount integer, 
\item columnCount integer, 
\item createdAt string, 
\item updatedAt string, 
}}
\item{surveys}{array, An array containing the following fields: 
\itemize{
\item id integer, The object ID.
\item createdAt string, 
\item updatedAt string, 
}}
\item{scripts}{array, An array containing the following fields: 
\itemize{
\item id integer, The object ID.
\item createdAt string, 
\item updatedAt string, 
\item name string, 
\item type string, 
\item finishedAt string, 
\item state string, 
}}
\item{imports}{array, An array containing the following fields: 
\itemize{
\item id integer, The object ID.
\item createdAt string, 
\item updatedAt string, 
\item name string, 
\item type string, 
\item finishedAt string, 
\item state string, 
}}
\item{models}{array, An array containing the following fields: 
\itemize{
\item id integer, The object ID.
\item createdAt string, 
\item updatedAt string, 
\item name string, 
\item state string, 
}}
\item{notebooks}{array, An array containing the following fields: 
\itemize{
\item id integer, The object ID.
\item createdAt string, 
\item updatedAt string, 
\item name string, 
\item currentDeploymentId integer, 
}}
\item{services}{array, An array containing the following fields: 
\itemize{
\item id integer, The object ID.
\item createdAt string, 
\item updatedAt string, 
\item name string, 
\item currentDeploymentId integer, 
}}
\item{workflows}{array, An array containing the following fields: 
\itemize{
\item id integer, The object ID.
\item createdAt string, 
\item updatedAt string, 
\item name string, 
\item state string, 
}}
\item{reports}{array, An array containing the following fields: 
\itemize{
\item id integer, The object ID.
\item createdAt string, 
\item updatedAt string, 
\item name string, 
\item state string, 
}}
\item{scriptTemplates}{array, An array containing the following fields: 
\itemize{
\item id integer, The object ID.
\item createdAt string, 
\item updatedAt string, 
\item name string, 
}}
\item{files}{array, An array containing the following fields: 
\itemize{
\item id integer, The object ID.
\item createdAt string, 
\item updatedAt string, 
\item fileName string, 
\item fileSize integer, 
\item expired boolean, 
}}
\item{appInstances}{array, An array containing the following fields: 
\itemize{
\item id integer, The object ID.
\item createdAt string, 
\item updatedAt string, 
\item name string, 
\item slug string, 
}}
\item{allObjects}{array, An array containing the following fields: 
\itemize{
\item projectId integer, 
\item objectId integer, 
\item objectType string, 
\item fcoType string, 
\item subType string, 
\item name string, 
\item icon string, 
\item author string, 
\item archived string, The archival status of the requested object(s).
}}
\item{note}{string, }
\item{hidden}{boolean, The hidden status of the object.}
\item{archived}{string, The archival status of the requested object(s).}
}
\description{
Get a detailed view of a project and the objects in it
}
