## Q1

To prove the set ${M_i}$ forms a group, we need to prove that it satisfies the four properties of a group. The processes are as follows.

- closure

  Let $M_a$, $M_b$ are two elements of {$M_i$}
  $$ {\}
  \begin{aligned}M_a*M_b &=\left[
   \begin{matrix}
     R_a & t_a \\
     0 & 1 
    \end{matrix} 
  \right]\left[
   \begin{matrix}
     R_b & t_b\\
     0 & 1 
    \end{matrix} 
  \right]
  \\&=\left[
   \begin{matrix}
     R_aR_b & R_at_b+t_a\\
     0 & 1 
    \end{matrix} 
  \right]
  \end{aligned}
  $$
  
Because of the feature of orthonormal matrix, $R_aR_B$ is also a orthonormal matrix. And it is easy to know that $R_at_b+t_a$ is still a 3*1 vector. So it satisfy closure.
  
- associativity

  Let $M_a, M_b, M_c$ are three elements of {$M_i$}

  Because of the feature of matrix multiplication,

  $M_aM_bM_c=M_a(M_bM_c)$.

  So it satisfy associativity.

- identify element

  When $R_0$ is a 3*3 identity matrix, and $t_0$=[0 0 0]​, 

  $M_0$ is an identify element, because $M_0M_i=M_iM_0$.

- Inverse element

  For $M_i=\left[
   \begin{matrix}
     R_a & t_a \\
     0 & 1 
    \end{matrix} 
  \right]$, 

  the inverse is $\left[
   \begin{matrix}
     R_a^T & -R_a^Tt_a \\
     0 & 1 
    \end{matrix} 
  \right]$.

  This is because 

  $\left[
   \begin{matrix}
     R_a & t_a \\
     0 & 1 
    \end{matrix} 
  \right]\left[
   \begin{matrix}
     R_a^T & -R_a^Tt_a \\
     0 & 1 
    \end{matrix} 
  \right]=M_0$

Based on all above, {$M_i$} forms a group.

## Q2

Solve the partial derivative of $G$ with respect to $\delta$
$$
\begin{aligned}
\frac{\partial{G}}{\partial{\delta}}&=\lim_{\triangle\delta\rightarrow0}\frac{G(x,y,\delta+\triangle\delta)-G(x,y,\delta)}{(\delta+\triangle\delta)-\delta}\\
&\approx \frac{G(x,y,k\delta)-G(x,y,\delta)}{k\delta-\delta}\\
&=\frac{DoG}{(k-1)\delta}
\end{aligned}
$$
Or
$$
\begin{aligned}
\frac{\partial{G}}{\partial{\delta}}&=\frac{-2\delta^2+x^2+y^2}{2\pi\delta^5}e^{\frac{-2(x^2+y^2)}{2\delta^2}}\\
&= \frac{LoG}{\delta}
\end{aligned}
$$
So 
$$
\frac{DoG}{(k-1)\delta}\approx\frac{LoG}{\delta}\\
DoG\approx(k-1)LoG
$$
So $DoG$ can approximate $LoG$.

## Q3

$A^TA$ is a $n*n$ matrix, so we need to prove $Rank(A^TA)=n$, then $A^TA$ is non-singlar.

That is to say, we need to prove $Rank(A^TA)=Rank(A)$.

Then we need to prove $A^TAx=0$ and $Ax=0$ have the same solutions.

1. For $Ax=0$, we have $A^T(Ax)=0$, then $A^TAx=0$. So the solution of $Ax=0$ is also the solution of $A^TAx=0$.
2. For $A^TAx=0$, we have $x^TA^TAx=0$, Then $(Ax)^TAx=0$, so $Ax=0$. Therefore, the solution of $A^TAx=0$ is also the solution of $Ax=0$.

So $A^TAx=0$ and $Ax=0$ have the same solutions.

Then $Rank(A^TA)=Rank(A)=n$, plus $A^TA$ is $n*n$, so  $A^TA$ is non-singlar.