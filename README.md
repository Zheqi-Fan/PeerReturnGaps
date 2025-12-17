# 📊 PeerReturnGaps
Python implementation (INCOMPLETE version) for the quick research project: [On Cross-Stock Predictability of Peer Return Gaps in China 📄](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=5417347).

We construct the Peer Return Gap (PRG), a firm-level characteristic, as the difference between the lagged returns of a focal firm’s peer group and the firm’s own lagged return. As a synthesized indicator, PRG quantifies two core components of cross-sectional stock return predictability:

1. 📈 The lagged returns of the peer group serve as a proxy for peer momentum, capturing the collective trend of firms with similar characteristics;

2. 🔄 The focal firm’s own lagged return represents a short-term reversal effect, reflecting price corrections from prior over- or under-performance.
   
Together, this metric provides a unified view of both peer group dynamics and firm-specific return patterns.

The program contains:
  📋 Univariare portfolio sorting;
  🧮 Bivariate portfolio sorting;
  📉 Fama-Macbeth regression;

The Peer Return Gap for stock $i$ in month $m$ of year $t+1$ is formally defined as the risk-adjusted divergence between the peer portfolio's performance and the individual stock's performance:

\begin{equation}
\label{eq:prg}
\text{PRG}_{i,m} = \beta_{i}^{\text{Peer}} \cdot (R_{i,m}^{\text{Peer}} - Rf_m) - (R_{i,m}^{\text{Stock}} - Rf_m)
\end{equation}

📌 Where $Rf_m$ is the risk-free rate at month $m$ and $\beta_{i}^{\text{Peer}}$ is the regression coefficient of stock $i$'s monthly return on its peer portfolio's return using monthly data between year $t-4$ and $t$.

This formulation incorporates a return volatility adjustment through $\beta_i^\text{Peer}$, which effectively accounts for differential risk characteristics between the individual security and its peer portfolio, ensuring that the gap measure reflects risk-adjusted performance divergence. Such a composite measure quantifies two key aspects: the aggregate strength of a stock’s peer group and its relative position within that group.
