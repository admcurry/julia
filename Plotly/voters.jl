using PlotlyJS

country = ["Switzerland (2011)", "Chile (2013)", "Japan (2014)",
           "United States (2012)", "Slovenia (2014)", "Canada (2011)",
           "Poland (2010)", "Estonia (2015)", "Luxembourg (2013)", "Portugal (2011)"]
voting_pop = [40, 45.7, 52, 53.6, 54.1, 54.2, 54.5, 54.7, 55.1, 56.6]
reg_voters = [49.1, 42, 52.7, 84.3, 51.7, 61.1, 55.3, 64.2, 91.1, 58.9]


trace1 = scatter(
    x=voting_pop,
    y=country,
    mode="markers",
    name="Percent of estimated voting age population",
    marker=attr(
        line_width=1, symbol="circle", size=16,
        color="rgba(156, 165, 196, 0.95)",
        line_color="rgba(156, 165, 196, 1.0)",
    )
)
trace2 = scatter(
    x=reg_voters, y=country,
    mode="markers",
    name="Percent of estimated registered voters",
    marker=attr(
        line_width=1, symbol="circle", size=16,
        color="rgba(204, 204, 204, 0.95)",
        line_color="rgba(217, 217, 217, 1.0)"
    )
)


layout = Layout(
    title="Votes cast for ten lowest voting age population in OECD countries",
    xaxis=attr(
        showgrid=false,
        showline=true,
        linecolor="rgb(102, 102, 102)",
        tickfont_color="rgb(102, 102, 102)",
        showticklabels=true,
        dtick=10,
        ticks="outside",
        tickcolor="rgb(102, 102, 102)",
    ),
    margin=attr(l=140, r=40, b=50, t=80),
    legend=attr(
        font_size=10,
        yanchor="middle",
        xanchor="right",
    ),
    width=800,
    height=600,
    paper_bgcolor="white",
    plot_bgcolor="white",
    hovermode="closest",
)

p = plot([trace1, trace2], layout)
savefig(p, "voters.html")