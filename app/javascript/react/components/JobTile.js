import React from 'react'


const JobTile = ({tileData}) => {
  let { id, position, company, location, salary, date, description, url } = tileData

  return (
    <>
    <div>
      <h1> {position} </h1>
    </div>
    </>
  )
}

export default JobTile;
