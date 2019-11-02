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
#include<ctime>
#include<random>

using namespace std;
typedef vector<int> vi;
typedef vector<vi> vvi;
typedef pair< int,int > pii;
#define mp(x,y) make_pair(x,y)
#define random(x) (rd()%x)
typedef long long ll;
//}

const int MAXN=1e3;
const int MAXA=1e9;

int main(void){
    random_device rd;
    int N=random(MAXN)+1,P=random(9)+1,A=random((int)pow(10,P))+1;
    printf("%d\n%d",N,random(A));
    for(int i=1;i<N;i++)
        printf(" %d",random(A));
    putchar('\n');
    return 0;
}
