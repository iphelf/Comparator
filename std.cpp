//{Headers
#include<cstdio>
#include<cstdlib>
#include<cstring>
#include<cmath>
#include<ctime>
#include<iostream>
#include<string>
#include<algorithm>
#include<list>
#include<queue>
#include<deque>
#include<vector>
#include<stack>
#include<map>
#include<set>
#include<bitset>

using namespace std;
typedef vector<int> vi;
typedef vector<vi> vvi;
typedef pair< int,int > pii;
#define mp(x,y) make_pair(x,y)
typedef long long ll;
//}

const int MAXN=1e3;
int N,A[MAXN];

int main(void){
    scanf("%d",&N);
    for(int i=0;i<N;i++) scanf("%d",&A[i]);
    ll S=0;
    for(int i=0;i<N;i++) S+=ll(A[i]);
    printf("%lld\n",S);
    return 0;
}
