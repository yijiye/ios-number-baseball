## iOS 커리어 스타터 캠프

### 숫자야구 프로젝트 저장소

 # Step 1

 ## 순서도
 ![Step 1 Flowchart](https://user-images.githubusercontent.com/96630194/163527458-b6de327f-dd2c-4820-a7a9-6b1da46c0ebe.jpg)

 ## 고민했던 점

 1. while문을 재귀함수로 변경

 while문 -> 재귀함수로 구조 변경을 해보는 게 어떠냐는 사파리의 피드백에 따라 구조를 변경해보았습니다. 팀원들 모두 재귀함수가 익숙하지 않아 처음에는 구조를 작성하기 쉽지 않았고, 왜 재귀함수를 써야하는지에 대한 고민이 있었습니다.

 그 고민을 바탕으로 검색해본 내용은 다음과 같습니다.

##### 반복문
장점 : 스택 메모리를 사용하지 않음 -> 빠른 실행
단점 : 코드 길이가 길어지고 변수가 많아져 가독성이 떨어질 수 있음

##### 재귀함수
장점 : 코드 길이와 변수가 적어 가독성이 높아짐
단점 : 함수가 호출 될 때마다 새 로컬 변수와 매개 변수 집합, 함수 호출 위치를 저장하는데 사용 -> 느린 실행

 위의 정보를 바탕으로 생각해봤을 때, 각 경우의 장단점에 따라 어떤 구조를 사용할지는 개발자의 선택이라고 생각합니다.

 다만, 현대 사회에서는 하드웨어의 성능이 좋아 소프트웨어의 효율을 극한으로 추구하지 않아도 된다는 점, 협업하는 상황이 많다는 점에서 가독성을 위해 재귀함수를 채택할 상황이 많아진 것 같습니다.

 2. 함수의 역할에 대한 고민: print를 묶을 때 얼마나 묶는 게 적절할까

 여전히 고민되는 사항입니다. 결론적으로는 고민 끝에 모든 출력을 하나의 함수로 묶었습니다.

 출력문 세 줄은 모두 해당 라운드의 결과를 알려주는 기능을 할 수 있다는 점
 playGame 함수는 게임 진행을 관장하므로 남은 기회는 playGame 내에서 출력하도록 할 수 있어보인다는 점
 이 두가지가 저희의 고민 포인트였던 것 같습니다.

 3. 들여쓰기 두 단계 초과에 대한 제약

 2번 사항과 더불어 저희를 가장 혼란스럽게 했던 부분입니다. 스트라이크와 볼을 판명하기 위해 countStrikeAndBall 함수에서 반복문 내부에 if - else 문을 이용해 ball과 strike의 개수를 집계했습니다.

 저희로서는 다른 방안을 생각하기 어려웠는데, guard를 사용해보라는 조언을 받고 사용하여 적용해봤지만, 여전히 들여쓰기 단계는 개선하지 못했습니다.

 다만 오늘 있었던 활동학습 시간에 야곰이 이 부분에 대한 내용을 다루어주셨는데, 해당 내용을 힌트로 Step 2에서 다시 한번 들여쓰기 단계를 개선해보려고 합니다.
