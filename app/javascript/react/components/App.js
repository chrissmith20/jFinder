import React from 'react'
import { BrowserRouter, Switch, Route } from 'react-router-dom'
import JobContainer from './JobContainer'

export const App = (props) => {
  return (
    <div>
      <BrowserRouter>
        <Switch>
          <Route exact path="/" component={JobContainer} />
        </Switch>
      </BrowserRouter>
    </div>
  )
};

export default App
