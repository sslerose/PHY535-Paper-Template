% Save this as 'customrevtex.cls'
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{customrevtex}[2025/01/16 Custom RevTeX4-2 with 12pt font]

% Pass all options to revtex4-2 except font size
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{revtex4-2}}
\ProcessOptions\relax

% Load the base class
\LoadClass[]{revtex4-2}

% Redefine font sizes
\renewcommand\normalsize{%
   \@setfontsize\normalsize{12}{14}%
   \abovedisplayskip 12\p@ \@plus3\p@ \@minus7\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize

\renewcommand\small{%
   \@setfontsize\small{10}{12}%
   \abovedisplayskip 11\p@ \@plus3\p@ \@minus6\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 9\p@ \@plus3\p@ \@minus5\p@
               \parsep 4.5\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}

\renewcommand\footnotesize{%
   \@setfontsize\footnotesize{9}{11}%
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@ \@plus2\p@ \@minus2\p@
               \parsep 3\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}

\renewcommand\scriptsize{\@setfontsize\scriptsize{8}{9.5}}
\renewcommand\tiny{\@setfontsize\tiny{6}{7}}
\renewcommand\large{\@setfontsize\large{14}{17}}
\renewcommand\Large{\@setfontsize\Large{17}{20}}
\renewcommand\LARGE{\@setfontsize\LARGE{20}{24}}
\renewcommand\huge{\@setfontsize\huge{24}{28}}
\renewcommand\Huge{\@setfontsize\Huge{28}{33}}