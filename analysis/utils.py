# Utility funcs to add colours to dataframe
def color_df(val): 
    if val == 0 or val == 1: 
        color = "black"
    elif val <0.3: 
        color = 'red'
    elif val <0.6: 
        color = "blue"
    else: 
        color= "green"

    return 'color: %s' % color