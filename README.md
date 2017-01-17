Guidance per JW:

Consider this as X Rho24 days and do the following: 

1. Write X short (1-2 paragraph) proposals to think things through a bit before jumping in [I am happy to review these if you like].
1. Spend about a day on each project. Work the problem. Do a little pilot. See if there is a there there.
1. Write a short (1-2 paragraph) summary of each day. Link to relevant materials created [I definitely want to see these].

List of candidate topics, in order of perceived viability *prior to having written the proposal paragraphs*.

1. Revisit hybrid approach for stacked bar charts  
  a. Offset bar charts, line charts, etc.
1. Expand functionality in Mayo Clinic macro.  
  a. Small sample size results in exact tests.  
  b. One of logistic or survivial is not in the macro.  
  c. Would involve working with Kaitie Lawson.
1. SAS implementation of "Safety Explorer - Snapshots"  
  a. This is primarily a tool to help validate the output from CF.  
  b. This is NOT a quick-start for CSR displays.
1. Learn to use StatRep, the SAS-promoted package for producing papers that contain text, code, and results all in one file.
  a. LaTeX-based. 
1. Examination/Visualization of Data Domains used at Rho  
  a. If this is what I think it is, we want to generate sets of plots for various data domains: AE plots, Lab plots, PK plots, etc.  
  b. Exactly what form this takes is unclear: a concepts paper with pretty picture, sets of code for each data domain, other?  
  c. JW says that actually: there is a data set, with lots of metadata from red sector studies (including column names and file names i think) to play with. from that, i can imagine visualizations of the meta data (this chart shows the most common naming convention for race) but i don’t think we’d want many charts of the actual data - this isn’t a meta analysis. No “this is how race was distributed across 12 studies”. (actually this might be a metadata meta analysis - a meta meta analysis)
1. SAS version of network diagrams  
  a. Investigate SAS VA implementation.
1. Evaluation of our graphics accessibility per NIH guidelines  
  a. Colorblind, visually impaired, etc.
1. Machine learning  
  a. Very fuzzy, but mandatory per Jeremy.
1. A SAS equivalent to diagramR.
  a. Likely very difficult to pull off. 
1. Restart our "Commonly used Charts" survey  
  a. If this is what I think it is, my view is that the [SGPLOT wiki](https://github.com/RhoInc/sas-sgplot/wiki) finished this off.  
  b. JW says that actually: 10 is more like 5 as written - i’m thinking the ‘commonly used chart survey’ will list dozens or even hundreds of items not just a handful. preferably broken in to categories. preferably with some kind of usage metric - ubiquitous, common, rare, etc.
1. SAS version of steam graph (assuming you mean “stream” graph)  
  a. Looks kind of busy.
1. SAS version of something else from http://www.datavizcatalogue.com/  
  a. I managed to talk myself out of most of what I saw as easily doable in SGPLOT, or already done by someone else, or not applicable to clinical trials, or not a good graphic  
  b. JW says that actually: Maybe start with a list of the items on that catalogue web page and document how they can be created in sas. That would actually be a really useful paper/resource (maybe a 1 page printable cheatsheet?). “A guide to advanced charting in SAS version X”
1. SAS version of Volcano plots  
  a. Just a scatter plot. What’s the big deal?
1. SAS version of chord diagram  
  a. Cool idea, but Sanjay Matange recently published on this.  
    1. http://blogs.sas.com/content/graphicallyspeaking/2016/10/27/outside-the-boxcircle-link-graph/  
    1. http://blogs.sas.com/content/graphicallyspeaking/2016/11/01/outside-box-directed-circle-link-graphs/
1. SAS version of heat maps  
  a. SAS has a HEATMAP statement in SGPLOT: [SAS Gallery](http://support.sas.com/kb/31/489.html) or [viridis](https://github.com/rhoinc/sas-viridis/wiki#color-response-data)
