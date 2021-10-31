import React from 'react';
import Routes from "../../routes";

import GlobalStyle, { Container } from './styles';
import { Provider } from 'react-redux';
import store from '../../storage';

function App() {
    return (
        <Provider store={store}>
            <GlobalStyle />
            <Container>
                <Routes />
            </Container>
        </Provider>
    );
}

export default App;
