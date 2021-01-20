import React from 'react'


const JobTile = ({tileData}) => {
  let { id, position, company, location, salary, date, description, url } = tileData

  return (
    <>
    <div>
      <ul>
       <h1> {position} </h1>
       <p> {company} </p>
       <p> {location} </p>
       <p> {salary} </p>
       <p> {date} </p>
       <p> {description} </p>
       <p> {url} </p>
      </ul>
    </div>
    </>
  )
}

export default JobTile;
