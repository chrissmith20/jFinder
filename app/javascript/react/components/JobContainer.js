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

  const jobTitles = jobs.map((element) => {
    return(
      <JobTile
        key={element.id}
        tileData={element}
      />
    )
  });

  return(
    <div>
      <h1>AYYYYYYYYYYY</h1>
      {jobTitles}
    </div>
  )
};

export default JobContainer
