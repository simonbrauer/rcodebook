generate_style <- function(){
  'body{
    width: 100vw;
    height: 100vh;

    margin: 0px;
    display: flex;
    flex-direction: row;
}

#left_pane{
    width: 240px;
    height: 100vh;

    padding: 24px;
    box-sizing: border-box;

    overflow: auto;
}

#left_pane ul{
    list-style: none;
    padding: 0px;
    margin: 0px;
    text-indent: 0px;
}

#main_content{
    width: calc(100% - 240px);
    height: 100vh;

    padding: 24px;
    box-sizing: border-box;

    overflow: auto;
}

.var_entry{
    padding: 12px;
    box-sizing: border-box;

    border-width: 1px;
    border-color: black;
    border-style: solid;
}

table{
    border-collapse: collapse;
    border-width: 1px 0px 1px 0px;
    border-color: black;
    border-style: solid;
}

th{
    padding-left: 12px;
    padding-right: 12px;

    border-width: 0px 0px 1px 0px;
    border-color: black;
    border-style: solid;

    text-align: left;
}

td{
    padding-left: 12px;
    padding-right: 12px;

    text-align: left;
}'
}
