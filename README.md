# HelloWorldDriver
라즈베리파이 3에서 Hello World를 띄우는 간단한 커널 모듈입니다.  
코드블록에 있는 내용들을 터미널에 입력해주세요.

## 커널 빌드/설치 및 모듈 삽입하기
**0. 사용자의 권한을 루트로 변경**
```
sudo su
```
**1. 리눅스 커널 4.19를 빌드하는 셸 스크립트입니다.**   
크로스 컴파일을 안 하고 하면 빌드 시간이 2~3시간 정도 걸립니다.
```
./1_build_script.sh
```
**2. 커널을 설치하는 셸 스크립트입니다. (※재부팅 주의)**  
커널 설치 이후 알아서 재부팅을 합니다.
```
./2_install_kernel.sh
```
**3. Hello World 모듈을 삽입/제거하는 셸 스크립트입니다.**
```
./3_insert_module.sh
```

## 모듈 출력하기
```
dmesg
```

## 결과
<p align="left">
  <img src="https://github.com/2daeeun/HelloWorldDriver/blob/main/img/preview.png?raw=true  width="100" height="200"/>
</p>
