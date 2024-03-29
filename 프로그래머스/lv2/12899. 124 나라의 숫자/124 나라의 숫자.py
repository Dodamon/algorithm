# 풀이 나머지와 몫을 사용해서 푸는 문제

def solution(n):
    nums = ["1", "2", "4"]
    answer = ''
    

    
    # 힌트) 숫자는 3을 주기로 가장 높은 자릿수의 숫자가 변한다
    # n을 3으로 나눈 나머지를 answer에 쌓게
    # n을 3으로 나눈 몫이 0 보다 크다면 몫을 계속 해서 3으로 나눠준다
    
    # n에서 1을빼고 시작한 이유는 3을 주기로 나머지가 0, 1, 2가 나와야하는 데 1부터시작하면 이 원칙이 맞지 않아서 이다

    while n > 0:
        n -= 1
        answer += nums[n%3]
        n //= 3

    return answer[::-1]