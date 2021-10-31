import React from 'react';
import { Switch, Route, BrowserRouter as Router, RouteProps, Redirect } from "react-router-dom";

import Header from '../components/Header';
import Dashboard from './Dashboard'
const Routes: React.FC<{}> = (props): React.ReactElement => {
    return (
        <Router>
            <Header />
            <Switch>
                <Route path="/"/>
                <Route path="/signin"/>
                <Route path="/signup"/>
                <Route path="/dashboard" component={Dashboard}/>
            </Switch>
        </Router>

    );
}

export default Routes