# 현재 working directory, staging area 상태 확인 
git status

# . 은 모든 수정/추가 사항 add
git add . 

# 특정파일만 add할 경우(경로까지 포함)!
git add test_folder/test1.txt

# commit을 통해 메시지타이틀과 메시지 내용을 커밋이력으로 생성
git commit -m "메시지제목" -m "메시지내용"
# git commit만 입력하고 엔터시 vi모드 -> 첫줄:타이틀,두번째준부터 내용 -> : wq 저장후 종료시 커밋ID생성
git commit

# add. 와 commit을 동시에
git commit -am " "

#commit 이력 확인
git log     
git log --oneline

# head하단의 로그만 보이든것이 아니라, 모든 commi이력을조회
# head : 현재 사용(checkout)하고 있는 commitID를 의미
git log --all

# 원격저장소로 업로드
git push origin 브랜치명 
#충동발생기 충동무시하고,로컬기준의 코드를 원경에 덮어쓰기 (절대사용금지)
git oush origin 브랜치면 --force

#특정 commit ID로의 전환
git checkout 커밋ID
#특정 브랜치로의 전환 
git checkout 브랜치명

#pull은 원격사항을 local로 내려받는것(fetch+merge)
git pull origin main
#fetch는 변경사항을 local 가져오되, 병합은 하지 않는것
git fetch origin main

#commitID간 또는 브랜치사이의 비교 명령어
git diff commitID1 commitID2

git diff 브랜치1 브랜치2

#가장 최신의 커밋 취소
git reset head~1
git reset head^

# 이미 push commit 사항을 되돌리는 새로운 commit생성
git revert 커밋ID