import { Reducer } from 'redux';
import { UserTypes, IUserState as IUserState } from './reduxTypes';

const INITIAL_STATE:  IUserState = {
    user: {}
}

const reducer: Reducer<IUserState> = (state = INITIAL_STATE, action) => {
    switch(action.type){
        case UserTypes.USER:
            return { ...state, user: action.payload };

        default:
            return state;
    }
}

export default reducer;