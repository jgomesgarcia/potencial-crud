import styled,{createGlobalStyle} from  'styled-components';

export const Container = styled.div`
    display:flex;
    flex-direction: column;
    width: 100%;
    height: 100%;
    overflow-y: hidden;
`;

export default createGlobalStyle`
    *{
        margin: 0;
        padding: 0;

        /* Custom scroll styles */
    ::-webkit-scrollbar {
        width: 5px;
        height: 5px;
    }
    
    /* Linha do scroll */
    ::-webkit-scrollbar-track {
        -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
        -webkit-border-radius: 10px;
        border-radius: 10px;
    }
    
    /* Barra do scroll */
    ::-webkit-scrollbar-thumb {
        -webkit-border-radius: 10px;
        border-radius: 10px;
        background: #e27a04; 
        /* -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.5);  */
    }
    ::-webkit-scrollbar-thumb:window-inactive {
        background: black; 
    }
    };

    body{
        box-sizing:border-box;
        width: 100%;
        height: 100%;
        background-color: white;
        font-size: 14px;
        color: #333;
        font-family: Segoe UI;
        
    }

    html{
        box-sizing:border-box;
        width: 100%;
        height: 100%;
        font-size: 100%;
    }

    #root{
        box-sizing:border-box;
        height: 100%;
    }

    .outline-none:focus{
        outline: none
    }
    .outline-none *:focus{
        outline: none
    }
`;