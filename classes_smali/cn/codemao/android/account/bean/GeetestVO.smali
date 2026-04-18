.class public Lcn/codemao/android/account/bean/GeetestVO;
.super Ljava/lang/Object;
.source "GeetestVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private geetest_challenge:Ljava/lang/String;

.field private geetest_seccode:Ljava/lang/String;

.field private geetest_validate:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGeetest_challenge()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcn/codemao/android/account/bean/GeetestVO;->geetest_challenge:Ljava/lang/String;

    return-object v0
.end method

.method public getGeetest_seccode()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcn/codemao/android/account/bean/GeetestVO;->geetest_seccode:Ljava/lang/String;

    return-object v0
.end method

.method public getGeetest_validate()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcn/codemao/android/account/bean/GeetestVO;->geetest_validate:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcn/codemao/android/account/bean/GeetestVO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setGeetest_challenge(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcn/codemao/android/account/bean/GeetestVO;->geetest_challenge:Ljava/lang/String;

    return-void
.end method

.method public setGeetest_seccode(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcn/codemao/android/account/bean/GeetestVO;->geetest_seccode:Ljava/lang/String;

    return-void
.end method

.method public setGeetest_validate(Ljava/lang/String;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcn/codemao/android/account/bean/GeetestVO;->geetest_validate:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcn/codemao/android/account/bean/GeetestVO;->id:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeetestVO{, geetest_challenge=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/GeetestVO;->geetest_challenge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", geetest_seccode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/GeetestVO;->geetest_seccode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", geetest_validate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/GeetestVO;->geetest_validate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
