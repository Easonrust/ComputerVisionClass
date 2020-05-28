### Q1

The homogenous form of $x-3y+4=0$ is $x_1-3x_2+4x_3=0$, which is $(1, -3, 4)^T$.

And the homogenous coordinate of the infinity line is $(0,0,1)^T$.

Then we can caculate the infinity point of the line by 

get its intersection with the infinity line.

$\begin{aligned}(1, -3, 4)^T\times(0, 0, 1)^T &=\begin{vmatrix}i & j&k \\ 1&-3 & 4\\ 0&0&1\end{vmatrix}\\&=\begin{vmatrix}-3&4 \\  0&1\end{vmatrix}i+\begin{vmatrix}4&1 \\  1&0\end{vmatrix}j+\begin{vmatrix}1&-3 \\  0&0\end{vmatrix}k\\&=-3i-j+0k\end{aligned}$

So the the homogeneous coordinate of the infinity point of this line is $(-3, -1,0)$.

### Q2

Let $A(x_1,y_1,z_1), B(x_2, y_2, z_2), C(x_3, y_3, z_3), D(x_4, y_4, z_4)$.

They form three vectors which are $a(x_2-x_1, y_2-y_1, z_2-z_1)$, $b(x_3-x_1, y_3-y_1, z_3-z_1)$, $c(x_4-x_1, y_4-y_1, z_4-z_1).$

We know that:

$a,b,c$ are coplanar $\Leftrightarrow$ $(a, b, c)=0$

What is more:

$(a, b, c)=\begin{vmatrix}x_2-x_1 & y_2-y_1&z_2-z_1 \\ x_3-x_1&y_3-y_1 & z_3-z_1\\ x_4-x_1&y_4-y_1&z_4-z_1\end{vmatrix}$

So we have:

$a,b,c$ are coplanar $\Leftrightarrow$ $\begin{vmatrix}x_2-x_1 & y_2-y_1&z_2-z_1 \\ x_3-x_1&y_3-y_1 & z_3-z_1\\ x_4-x_1&y_4-y_1&z_4-z_1\end{vmatrix}=0$

We have:

$\begin{aligned}\begin{vmatrix}x_1 & y_1&z_1&1 \\ x_2&y_2 &z_2& 1\\ x_3&y_3&z_3&1\\x_4&y_4&z_4&1\end{vmatrix}&=\begin{vmatrix}x_1 & y_1&z_1&1 \\ x_2-x_1&y_2-y_1 &z_2-z_1& 0\\ x_3-x_1&y_3-y_1&z_3-z_1&0\\x_4-x_1&y_4-y_1&z_4-z_1&0\end{vmatrix}\\&=(-1)^5*\begin{vmatrix}x_2-x_1 & y_2-y_1&z_2-z_1 \\ x_3-x_1&y_3-y_1 & z_3-z_1\\ x_4-x_1&y_4-y_1&z_4-z_1\end{vmatrix}\\&=-\begin{vmatrix}x_2-x_1 & y_2-y_1&z_2-z_1 \\ x_3-x_1&y_3-y_1 & z_3-z_1\\ x_4-x_1&y_4-y_1&z_4-z_1\end{vmatrix}\end{aligned}$

So $a,b,c$ are coplanar $\Leftrightarrow$ $\begin{vmatrix}x_1 & y_1&z_1&1 \\ x_2&y_2 &z_2& 1\\ x_3&y_3&z_3&1\\x_4&y_4&z_4&1\end{vmatrix}=0$

### Q3

Based on the conditions, the process of the caculation is as follow:
$$
\begin{aligned}&\frac{\mathrm{d}p_d}{\mathrm{d}p_n^T}=\begin{bmatrix} \frac{\partial x_d}{\partial x} & \frac{\partial x_d}{\partial y} \\ \frac{\partial y_d}{\partial x} & \frac{\partial y_d}{\partial y} \end{bmatrix}\\
&r^2=x^2+y^2\\
&\frac{\partial r^2}{\partial x}=2x\\
&\frac{\partial r^2}{\partial y}=2y
\end{aligned}
$$
(1):
$$
\begin{aligned}\frac{\partial x_d}{\partial x}&=\frac{\partial[x+k_1r^2x+k_2(r^2)^2x+2 \rho_1 xy+\rho_2r^2+2\rho_2 x^2+k_3x(r^2)^3 ]}{\partial x}\\
&=1+k_1(r^2+2x^2)+k_2[r^4+x(2r^2*2x)]+2\rho_1y+2\rho_2x+4\rho_2x+k_3[r^6+x(3r^4*2x)]\\
&=1+(r^2+2x^2)k_1+(r^4+4r^2x^2)k_2+2\rho_1y+6\rho_2x+(r^6+6r^4x^2)k_3\end{aligned}
$$
(2):
$$
\begin{aligned}\frac{\partial x_d}{\partial y}&=\frac{\partial[x+k_1r^2x+k_2(r^2)^2x+2 \rho_1 xy+\rho_2r^2+2\rho_2 x^2+k_3x(r^2)^3 ]}{\partial y}\\
&=2k_1xy+k_2x*2r^2*2y+2\rho_1x+2\rho_2y+k_3x*3r^4*2y\\
&=2xyk_1+4r^2xyk_2+2\rho_1x+2\rho_2y+6xyr^4k_3\end{aligned}
$$
(3):
$$
\begin{aligned}\frac{\partial y_d}{\partial x}&=\frac{\partial[y+k_1r^2y+k_2(r^2)^2y+2 \rho_2 xy+\rho_1r^2+2\rho_1 y^2+k_3y(r^2)^3 ]}{\partial x}\\
&=2k_1xy+k_2y*2r^2*2x+2\rho_1y+2\rho_2x+k_3y*3r^4*2x\\
&=2xyk_1+4r^2xyk_2+2\rho_1y+2\rho_2x+6xyr^4k_3\end{aligned}
$$
(4):
$$
\begin{aligned}\frac{\partial y_d}{\partial y}&=\frac{\partial[y+k_1r^2y+k_2(r^2)^2y+2 \rho_2 xy+\rho_1r^2+2\rho_1 y^2+k_3y(r^2)^3 ]}{\partial y}\\
&=1+k_1(r^2+2y^2)+k_2[r^4+y(2r^2*2y)]+2\rho_2x+2\rho_1y+4\rho_1y+k_3[r^6+y(3r^4*2y)]\\
&=1+(r^2+2y^2)k_1+(r^4+4r^2y^2)k_2+2\rho_2x+6\rho_1y+(r^6+6r^4y^2)k_3\end{aligned}
$$
So
$$
\frac{\mathrm{d}p_d}{\mathrm{d}p_n^T}=\begin{bmatrix} 1+(r^2+2x^2)k_1+(r^4+4r^2x^2)k_2+2\rho_1y+6\rho_2x+(r^6+6r^4x^2)k_3 & 2xyk_1+4r^2xyk_2+2\rho_1x+2\rho_2y+6xyr^4k_3 \\ 2xyk_1+4r^2xyk_2+2\rho_1y+2\rho_2x+6xyr^4k_3 & 1+(r^2+2y^2)k_1+(r^4+4r^2y^2)k_2+2\rho_2x+6\rho_1y+(r^6+6r^4y^2)k_3\end{bmatrix}
$$


### Q4

Because $n$ is a 3D unit vector and $r =\theta n=\begin{bmatrix}r_1\\r_2\\r_3\end{bmatrix}$, we have:
$$
\begin{aligned}&n_1^2+n_2^2+n_3^2=1\\
&r_1^2+r_2^2+r_3^2=\theta^2\end{aligned}
$$
Based on Rodrigues formula:
$$
R=cos\theta+(1-cos\theta)nn^T+sin\theta n \hat{}
$$
Let $sin\theta=\alpha, cos\theta=\beta, 1-cos\theta=\gamma$, we have:
$$
\begin{aligned}R&=\beta+\gamma nn^T+\alpha n \hat{}\\
&=\begin{bmatrix} \beta & 0 &0 \\ 0 & \beta&0\\0&0&\beta \end{bmatrix}+\begin{bmatrix} \gamma n_1^2 & \gamma n_1n_2 &\gamma n_1n_3 \\ \gamma n_1n_2 & \gamma n_2^2&\gamma n_2n_3\\\gamma n_1n_3&\gamma n_2n_3&\gamma n_3^2 \end{bmatrix}+\begin{bmatrix}0&-\alpha n_3&\alpha n_2\\\alpha n_3&0&- \alpha n_1\\-\alpha n_2&\alpha n_1&0\end{bmatrix}\\
&=\begin{bmatrix}\beta+\gamma n_1^2&\gamma n_1n_2-\alpha n_3 & \gamma n_1n_3+\alpha n_2\\
\alpha n_3 +\gamma n_1n_2&\beta+\gamma n_2^2& \gamma n_2n_3 -\alpha n_1\\
\gamma n_1n_3 -\alpha n_2&\gamma n_2n_3+\alpha n_1&\beta+\gamma n_3^2\end{bmatrix}
\end{aligned}
$$
Let $u=(R_{11},R_{12},R_{13},R_{21},R_{22},R_{23},R_{31},R_{32},R_{33})$, we have:
$$
\frac{\mathrm{d}u}{\mathrm{d}r^T}=\begin{bmatrix}\frac{\partial R_{11}}{\partial r_1}&\frac{\partial R_{11}}{\partial r_2}&\frac{\partial R_{11}}{\partial r_3}\\...&...&...\\
\frac{\partial R_{33}}{\partial r_1}&\frac{\partial R_{33}}{\partial r_2}&\frac{\partial R_{33}}{\partial r_3}\end{bmatrix}_{9\times 3}
$$
(1):
$$
\begin{aligned}\frac{\partial R_{11}}{\partial r_1}&=\frac{\partial [\beta+\gamma \frac{r_1^2}{\theta^2}]}{\partial r_1}\\
&=(\frac{2\gamma}{\theta}-\alpha)n_1(n_2^2+n_3^2)\end{aligned}
$$
(2):
$$
\begin{aligned}\frac{\partial R_{11}}{\partial r_2}&=\frac{\partial [\beta+\gamma \frac{r_1^2}{\theta^2}]}{\partial r_2}\\
&=\alpha n_2(n_1^2-1)-\frac{2\gamma n_1^2n_2}{\theta}\end{aligned}
$$
(3):
$$
\begin{aligned}\frac{\partial R_{11}}{\partial r_3}&=\frac{\partial [\beta+\gamma \frac{r_1^2}{\theta^2}]}{\partial r_3}\\
&=\alpha n_3(n_1^2-1)-\frac{2\gamma n_1^2n_3}{\theta}\end{aligned}
$$
(4):
$$
\begin{aligned}\frac{\partial R_{12}}{\partial r_1}&=\frac{\partial [\gamma \frac{r_1r_2}{\theta^2}-\alpha \frac{r_3}{\theta}]}{\partial r_1}\\
&=\frac{1}{\theta}[(\alpha \theta -2\gamma)n_1^2n_2+\gamma n_2-(\beta \theta -\alpha)n_1n_3]\end{aligned}
$$
(5):
$$
\begin{aligned}\frac{\partial R_{12}}{\partial r_2}&=\frac{\partial [\gamma \frac{r_1r_2}{\theta^2}-\alpha \frac{r_3}{\theta}]}{\partial r_2}\\
&=\frac{1}{\theta}[(\alpha \theta -2\gamma)n_2^2n_1+\gamma n_1-(\beta \theta -\alpha)n_2n_3]\end{aligned}
$$
(6):
$$
\begin{aligned}\frac{\partial R_{12}}{\partial r_3}&=\frac{\partial [\gamma \frac{r_1r_2}{\theta^2}-\alpha \frac{r_3}{\theta}]}{\partial r_3}\\
&=\frac{1}{\theta}[(\alpha \theta-2\gamma)n_1n_2n_3-(\beta \theta-\alpha)n_3^2-\alpha]\end{aligned}
$$
(7):
$$
\begin{aligned}\frac{\partial R_{13}}{\partial r_1}&=\frac{\partial [\gamma \frac{r_1r_3}{\theta^2}+\alpha \frac{r_2}{\theta}]}{\partial r_1}\\
&=\frac{1}{\theta}[(\alpha\theta-2\gamma)n_1^2n_3+n_3\gamma+(\beta\theta-\alpha)n_1n_2]\end{aligned}
$$
(8):
$$
\begin{aligned}\frac{\partial R_{13}}{\partial r_2}&=\frac{\partial [\gamma \frac{r_1r_3}{\theta^2}+\alpha \frac{r_2}{\theta}]}{\partial r_2}\\
&=\frac{1}{\theta}[(\alpha\theta-2\gamma)n_1n_2n_3+(\beta\theta-\alpha)n_2^2+\alpha]\end{aligned}
$$
(9):
$$
\begin{aligned}\frac{\partial R_{13}}{\partial r_3}&=\frac{\partial [\gamma \frac{r_1r_3}{\theta^2}+\alpha \frac{r_2}{\theta}]}{\partial r_3}\\
&=\frac{1}{\theta}[(\alpha\theta-2\gamma)n_3^2n_1+n_1\gamma+(\beta\theta-\alpha)n_2n_3]\end{aligned}
$$
We can find some patterns in the process of the calculation, so we can easily get:

(10):
$$
\begin{aligned}\frac{\partial R_{21}}{\partial r_1}&=\frac{\partial [\gamma \frac{r_1r_2}{\theta^2}+\alpha \frac{r_3}{\theta}]}{\partial r_1}\\
&=\frac{1}{\theta}[(\alpha\theta-2\gamma)n_1^2n_2+n_2\gamma+(\beta\theta-\alpha)n_1n_3]\end{aligned}
$$
(11):
$$
\begin{aligned}\frac{\partial R_{21}}{\partial r_2}&=\frac{\partial [\gamma \frac{r_1r_2}{\theta^2}+\alpha \frac{r_3}{\theta}]}{\partial r_2}\\
&=\frac{1}{\theta}[(\alpha\theta-2\gamma)n_2^2n_1+n_1\gamma+(\beta\theta-\alpha)n_2n_3]\end{aligned}
$$
(12):
$$
\begin{aligned}\frac{\partial R_{21}}{\partial r_3}&=\frac{\partial [\gamma \frac{r_1r_2}{\theta^2}+\alpha \frac{r_3}{\theta}]}{\partial r_3}\\
&=\frac{1}{\theta}[(\alpha\theta-2\gamma)n_1n_2n_3+(\beta\theta-\alpha)n_3^2+\alpha]\end{aligned}
$$
(13):
$$
\begin{aligned}\frac{\partial R_{22}}{\partial r_1}&=\frac{\partial [\beta+\gamma \frac{r_2^2}{\theta^2}]}{\partial r_1}\\
&=\alpha n_1(n_2^2-1)-\frac{2\gamma n_2^2n_1}{\theta}\end{aligned}
$$
(14):
$$
\begin{aligned}\frac{\partial R_{22}}{\partial r_2}&=\frac{\partial [\beta+\gamma \frac{r_2^2}{\theta^2}]}{\partial r_2}\\
&=(\frac{2\gamma}{\theta}-\alpha)n_2(n_1^2+n_3^2)\end{aligned}
$$
(15):
$$
\begin{aligned}\frac{\partial R_{22}}{\partial r_3}&=\frac{\partial [\beta+\gamma \frac{r_2^2}{\theta^2}]}{\partial r_3}\\
&=\alpha n_3(n_2^2-1)-\frac{2\gamma n_2^2n_3}{\theta}\end{aligned}
$$
(16):
$$
\begin{aligned}\frac{\partial R_{23}}{\partial r_1}&=\frac{\partial [\gamma \frac{r_3r_2}{\theta^2}-\alpha \frac{r_3}{\theta}]}{\partial r_1}\\
&=\frac{1}{\theta}[(\alpha \theta-2\gamma)n_1n_2n_3-(\beta \theta-\alpha)n_1^2-\alpha]\end{aligned}
$$
(17):
$$
\begin{aligned}\frac{\partial R_{23}}{\partial r_2}&=\frac{\partial [\gamma \frac{r_3r_2}{\theta^2}-\alpha \frac{r_1}{\theta}]}{\partial r_2}\\
&=\frac{1}{\theta}[(\alpha \theta -2\gamma)n_2^2n_3+\gamma n_3-(\beta \theta -\alpha)n_2n_1]\end{aligned}
$$
(18):
$$
\begin{aligned}\frac{\partial R_{23}}{\partial r_3}&=\frac{\partial [\gamma \frac{r_3r_2}{\theta^2}-\alpha \frac{r_1}{\theta}]}{\partial r_3}\\
&=\frac{1}{\theta}[(\alpha \theta -2\gamma)n_3^2n_2+\gamma n_2-(\beta \theta -\alpha)n_1n_3]\end{aligned}
$$
(19):
$$
\begin{aligned}\frac{\partial R_{31}}{\partial r_1}&=\frac{\partial [\gamma \frac{r_1r_3}{\theta^2}-\alpha \frac{r_2}{\theta}]}{\partial r_1}\\
&=\frac{1}{\theta}[(\alpha \theta -2\gamma)n_1^2n_3+\gamma n_3-(\beta \theta -\alpha)n_1n_2]\end{aligned}
$$
(20):
$$
\begin{aligned}\frac{\partial R_{31}}{\partial r_2}&=\frac{\partial [\gamma \frac{r_1r_3}{\theta^2}-\alpha \frac{r_2}{\theta}]}{\partial r_2}\\
&=\frac{1}{\theta}[(\alpha \theta-2\gamma)n_1n_2n_3-(\beta \theta-\alpha)n_2^2-\alpha]\end{aligned}
$$
(21):
$$
\begin{aligned}\frac{\partial R_{31}}{\partial r_3}&=\frac{\partial [\gamma \frac{r_1r_3}{\theta^2}-\alpha \frac{r_2}{\theta}]}{\partial r_3}\\
&=\frac{1}{\theta}[(\alpha \theta -2\gamma)n_3^2n_1+\gamma n_1-(\beta \theta -\alpha)n_2n_3]\end{aligned}
$$
(22):
$$
\begin{aligned}\frac{\partial R_{32}}{\partial r_1}&=\frac{\partial [\gamma \frac{r_2r_3}{\theta^2}+\alpha \frac{r_1}{\theta}]}{\partial r_1}\\
&=\frac{1}{\theta}[(\alpha\theta-2\gamma)n_1n_2n_3+(\beta\theta-\alpha)n_1^2+\alpha]\end{aligned}
$$
(23):
$$
\begin{aligned}\frac{\partial R_{32}}{\partial r_2}&=\frac{\partial [\gamma \frac{r_2r_3}{\theta^2}+\alpha \frac{r_1}{\theta}]}{\partial r_2}\\
&=\frac{1}{\theta}[(\alpha\theta-2\gamma)n_2^2n_3+n_3\gamma+(\beta\theta-\alpha)n_1n_2]\end{aligned}
$$
(24):
$$
\begin{aligned}\frac{\partial R_{32}}{\partial r_3}&=\frac{\partial [\gamma \frac{r_2r_3}{\theta^2}+\alpha \frac{r_1}{\theta}]}{\partial r_3}\\
&=\frac{1}{\theta}[(\alpha\theta-2\gamma)n_3^2n_2+n_2\gamma+(\beta\theta-\alpha)n_1n_3]\end{aligned}
$$
(25):
$$
\begin{aligned}\frac{\partial R_{33}}{\partial r_1}&=\frac{\partial [\beta+\gamma \frac{r_3^2}{\theta^2}]}{\partial r_1}\\
&=\alpha n_1(n_3^2-1)-\frac{2\gamma n_3^2n_1}{\theta}\end{aligned}
$$
(26):
$$
\begin{aligned}\frac{\partial R_{33}}{\partial r_2}&=\frac{\partial [\beta+\gamma \frac{r_3^2}{\theta^2}]}{\partial r_2}\\
&=\alpha n_2(n_3^2-1)-\frac{2\gamma n_3^2n_2}{\theta}\end{aligned}
$$
(27):
$$
\begin{aligned}\frac{\partial R_{33}}{\partial r_3}&=\frac{\partial [\beta+\gamma \frac{r_3^2}{\theta^2}]}{\partial r_3}\\
&=(\frac{2\gamma}{\theta}-\alpha)n_3(n_2^2+n_1^2)\end{aligned}
$$
So:
$$
\frac{\mathrm{d}u}{\mathrm{d}r^T}=\begin{bmatrix}
(\frac{2\gamma}{\theta}-\alpha)n_1(n_2^2+n_3^2)&\alpha n_2(n_1^2-1)-\frac{2\gamma n_1^2n_2}{\theta}&\alpha n_3(n_1^2-1)-\frac{2\gamma n_1^2n_3}{\theta}\\
\frac{1}{\theta}[(\alpha \theta -2\gamma)n_1^2n_2+\gamma n_2-(\beta \theta -\alpha)n_1n_3]&\frac{1}{\theta}[(\alpha \theta -2\gamma)n_2^2n_1+\gamma n_1-(\beta \theta -\alpha)n_2n_3]&\frac{1}{\theta}[(\alpha \theta-2\gamma)n_1n_2n_3-(\beta \theta-\alpha)n_3^2-\alpha]\\
\frac{1}{\theta}[(\alpha\theta-2\gamma)n_1^2n_3+n_3\gamma+(\beta\theta-\alpha)n_1n_2]&\frac{1}{\theta}[(\alpha\theta-2\gamma)n_1n_2n_3+(\beta\theta-\alpha)n_2^2+\alpha]&\frac{1}{\theta}[(\alpha\theta-2\gamma)n_3^2n_1+n_1\gamma+(\beta\theta-\alpha)n_2n_3]\\
\frac{1}{\theta}[(\alpha\theta-2\gamma)n_1^2n_2+n_2\gamma+(\beta\theta-\alpha)n_1n_3]&\frac{1}{\theta}[(\alpha\theta-2\gamma)n_2^2n_1+n_1\gamma+(\beta\theta-\alpha)n_2n_3]&\frac{1}{\theta}[(\alpha\theta-2\gamma)n_1n_2n_3+(\beta\theta-\alpha)n_3^2+\alpha]\\
\alpha n_1(n_2^2-1)-\frac{2\gamma n_2^2n_1}{\theta}&(\frac{2\gamma}{\theta}-\alpha)n_2(n_1^2+n_3^2)&\alpha n_3(n_2^2-1)-\frac{2\gamma n_2^2n_3}{\theta}\\
\frac{1}{\theta}[(\alpha \theta-2\gamma)n_1n_2n_3-(\beta \theta-\alpha)n_1^2-\alpha]&\frac{1}{\theta}[(\alpha \theta -2\gamma)n_2^2n_3+\gamma n_3-(\beta \theta -\alpha)n_2n_1]&\frac{1}{\theta}[(\alpha \theta -2\gamma)n_3^2n_2+\gamma n_2-(\beta \theta -\alpha)n_1n_3]\\
\frac{1}{\theta}[(\alpha \theta -2\gamma)n_1^2n_3+\gamma n_3-(\beta \theta -\alpha)n_1n_2]&\frac{1}{\theta}[(\alpha \theta-2\gamma)n_1n_2n_3-(\beta \theta-\alpha)n_2^2-\alpha]&\frac{1}{\theta}[(\alpha \theta -2\gamma)n_3^2n_1+\gamma n_1-(\beta \theta -\alpha)n_2n_3]\\
\frac{1}{\theta}[(\alpha\theta-2\gamma)n_1n_2n_3+(\beta\theta-\alpha)n_1^2+\alpha]&\frac{1}{\theta}[(\alpha\theta-2\gamma)n_2^2n_3+n_3\gamma+(\beta\theta-\alpha)n_1n_2]&\frac{1}{\theta}[(\alpha\theta-2\gamma)n_3^2n_2+n_2\gamma+(\beta\theta-\alpha)n_1n_3]\\
\alpha n_1(n_3^2-1)-\frac{2\gamma n_3^2n_1}{\theta}&\alpha n_2(n_3^2-1)-\frac{2\gamma n_3^2n_2}{\theta}&(\frac{2\gamma}{\theta}-\alpha)n_3(n_2^2+n_1^2)\end{bmatrix}_{9\times 3}
$$
