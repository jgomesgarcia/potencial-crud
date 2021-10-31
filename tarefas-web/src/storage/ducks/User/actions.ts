import { act } from 'react-dom/test-utils';
import { action } from 'typesafe-actions';
import IUser from '../../../interfaces/IUser';
import { UserTypes } from './reduxTypes';

export const cleanAttempts = () => action(UserTypes.USER);

export const user = (data: IUser) => action( UserTypes.USER, data);