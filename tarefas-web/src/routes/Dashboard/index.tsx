import React from 'react';
import { Switch, Route, BrowserRouter as Router, RouteProps, Redirect } from "react-router-dom";


const Dashboard: React.FC<{}> = (props): React.ReactElement => {
    return (
        <Router>
            <Switch>
                <Route path="/"/>
            </Switch>
        </Router>
    );
}

export default Dashboard