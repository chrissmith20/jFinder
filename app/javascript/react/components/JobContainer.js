import React, { useState, useEffect } from "react"
import { Link } from "react-router-dom"
import JobTile from "./JobTile"

const JobContainer = (props) => {

  const [ jobs, setJobs ] = useState([])

  useEffect(() => {
  fetch('/api/v1/jobs.json')
    .then(response => {
      if(response.ok) {
        return response
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
          error = new Error(errorMessage);
        throw error
      }
    })
    .then(response => response.json())
    .then(body => {
      setJobs(body)
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`))
}, []);

  const jobTitles = jobs.map((x) => {
    return(
      <JobTile
        key={x.id}
        tileData={x}
      />
    )
  });

  return(
    <div>
      <h1>AYYYYYYYYYYY</h1>
      <h1>{jobTitles}</h1>
    </div>
  )
};

export default JobContainer
