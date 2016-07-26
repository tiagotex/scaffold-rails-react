/*
  App
*/

import React from 'react';
import autobind from 'autobind-decorator';

@autobind
class App extends React.Component {

  constructor() {
    super();

    this.state = {
    }
  }

  componentDidMount() {
    console.log(this);
  }

  render() {
    return <h1>Hello World!</h1>
  }

};

export default App;
