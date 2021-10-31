import { all } from 'redux-saga/effects';

import User from './User/saga';

export default function* rootSaga() {
    return yield all([
        User(),
    ]);
}