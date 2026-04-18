.class public Lcn/codemao/android/account/bean/HwLoginResultVO;
.super Lcn/codemao/android/account/bean/LoginUserInfoVO;
.source "HwLoginResultVO.java"


# instance fields
.field private existed:Ljava/lang/Boolean;

.field private oauth_ticket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcn/codemao/android/account/bean/LoginUserInfoVO;-><init>()V

    return-void
.end method


# virtual methods
.method public Boolean(Ljava/lang/Boolean;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcn/codemao/android/account/bean/HwLoginResultVO;->existed:Ljava/lang/Boolean;

    return-void
.end method

.method public getExisted()Ljava/lang/Boolean;
    .registers 2

    .line 20
    iget-object v0, p0, Lcn/codemao/android/account/bean/HwLoginResultVO;->existed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOauth_ticket()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcn/codemao/android/account/bean/HwLoginResultVO;->oauth_ticket:Ljava/lang/String;

    return-object v0
.end method

.method public setOauth_ticket(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcn/codemao/android/account/bean/HwLoginResultVO;->oauth_ticket:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwLoginResultVO{existed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/HwLoginResultVO;->existed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", oauth_ticket=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/HwLoginResultVO;->oauth_ticket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/LoginUserInfoVO;->getUser_info()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/LoginUserInfoVO;->getAuth()Lcn/codemao/android/account/bean/LoginUserInfoVO$AuthBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
