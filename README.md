## iOS 커리어 스타터 캠프

# 숫자야구 프로젝트 저장소

## 목차
- [Flow Chart](#플로우-차트)
- [코딩 컨벤션](#코딩-컨벤션)
- [커밋 컨벤션](#커밋-컨벤션)

## 플로우 차트

![](https://github.com/ICS-Asan/ios-number-baseball/blob/develop/FlowChart.png)

1. 메뉴 출력 및 선택
    - 1번 시작
    - 2번 종료
2. 컴퓨터가 제시할 정수를 담는 변수 (임의의 정수 3개)
3. 남은 시도횟수 변수 (초기 9번)
4. 제시한 플레이어 정수 변수 (임의의 정수 3개 or 사용자 입력)
5. 플레이어 정수 유효성 검증 
    - 중복x
    - 1~9 사이의 정수
    - 숫자 이외의 입력
    - 3개 맞는지
    - 띄어쓰기
6. 해당 라운드 결과
    - 스트라이크 & 볼 카운트 출력
    - 남은 라운드 출력
7. 최종 게임 승패 여부
    - 3 스트라이크시 게임 승리
    - 정답을 못하고, 시도횟수가 0인 경우 패배 
8. 게임 종료 이후 매뉴 재출력 (1번으로)    


## 코딩 컨벤션

- 들여쓰기는 ctrl + i로 통일 
- 부호 양쪽으로는 띄워주기 
- `:` 사용시 왼쪽은 붙이고 오른쪽은 띄우기
- 변수, 상수, 함수의 이름은 lowerCamelCase로  
- 변수, 상수는 명사형으로, 함수는 동사형으로 작성
- 축약형은 지양
- 함수 내에서 리턴은 무조건 줄바꿈해주기
- 맥락상 의미에 따라 줄바꿈하여 새로 정의하기 

## 커밋 컨벤션 

- 커밋은 한글로 작성
- subject와 body 사이는 한 줄 띄워 구분하기
- subject line의 글자수는 50자 이내로 제한하기
- subject line의 첫 글자는 대문자 사용하기
- subject line의 마지막에 마침표(.) 사용하지 않기
- subject line에는 명령형 어조를 사용하기
- body는 72자마다 줄 바꾸기
- body는 어떻게 보다 무엇을, 왜 에 맞춰 작성하기

```
feat = 주로 사용자에게 새로운 기능이 추가되는 경우
fix = 사용자가 사용하는 부분에서 bug가 수정되는 경우
docs = 문서에 변경 사항이 있는 경우
style = 세미콜론을 까먹어서 추가하는 것 같이 형식적인 부분을 다루는 경우 (코드의 변화가 생산적인 것이 아닌 경우)
refactor = production code를 수정하는 경우 (변수의 네이밍을 수정하는 경우)
chore = 별로 중요하지 않은 일을 수정하는 경우 (코드의 변화가 생산적인 것이 아닌 경우)
```
