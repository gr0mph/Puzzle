# Read
N = int(input())
X = int(input())
g = [input() for i in range(N)]

G = []
for y_row in g :
    G.append([x_col for x_col in y_row])

# Encode
for _ in range(X):
    x , y = 0 , N - 1
    up , tmp = True , G[y][x]

    for x in range(N):
        if up :
            for y in reversed(range(1,N)) :
                tmp , G[y-1][x] = G[y-1][x] , tmp

            if x + 1 < N :
                tmp , G[0][x+1] = G[0][x+1] , tmp

        else :
            for y in range(0, N-1):
                tmp , G[y+1][x] = G[y+1][x] , tmp

            if x + 1 < N :
                tmp , G[N-1][x+1] = G[N-1][x+1] , tmp

        up = False if up == True else True

    G[N-1][0] = tmp

# Out
for line in G:
    print(''.join(line))
