import { useSelector } from 'react-redux';
import { combineReducers } from 'redux';
import { EnumType } from 'typescript';

import User from './User';

import { IUserState } from './User/reduxTypes';

export interface IReduxStateObject<DataType, ErroType> {
    data: DataType;
    loading: boolean;
    error: ErroType
}

export interface ApplicationState {
}

export interface IAction<IPayload> {
    type: string;
    payload: IPayload;
}

export default combineReducers({
    User,
});

export const useTypedSelector = <T>(
    selector: (store: ApplicationState) => T,
    qualityFn?: (left: T, right: T) => boolean
    ) => useSelector<ApplicationState, T>(selector, qualityFn);

