/* eslint-disable import/no-anonymous-default-export */
import Axios, { AxiosResponse } from 'axios';
import { call, put, all, takeLatest, take, spawn, delay } from 'redux-saga/effects'
import {  } from './actions';
import { UserTypes } from './reduxTypes';



function* User() {
    
}

export default function* () {

    yield all([
        takeLatest(UserTypes.USER, User),
    ]);
}