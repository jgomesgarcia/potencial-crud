import IUser from "../../../interfaces/IUser";

export enum UserTypes {
    USER = "@USer/USER",
}

export interface IUserState{
    readonly user: IUser | null,
}
