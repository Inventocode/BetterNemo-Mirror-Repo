.class public Lcn/codemao/android/account/bean/BindDeviceStatusVO;
.super Ljava/lang/Object;
.source "BindDeviceStatusVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private hasConfig:Z

.field private maxBindNums:I

.field private maxUnBindNums:I

.field private surplusBindNums:I

.field private surplusUnBindNums:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxBindNums()I
    .registers 2

    .line 26
    iget v0, p0, Lcn/codemao/android/account/bean/BindDeviceStatusVO;->maxBindNums:I

    return v0
.end method

.method public getMaxUnBindNums()I
    .registers 2

    .line 34
    iget v0, p0, Lcn/codemao/android/account/bean/BindDeviceStatusVO;->maxUnBindNums:I

    return v0
.end method

.method public getSurplusBindNums()I
    .registers 2

    .line 42
    iget v0, p0, Lcn/codemao/android/account/bean/BindDeviceStatusVO;->surplusBindNums:I

    return v0
.end method

.method public getSurplusUnBindNums()I
    .registers 2

    .line 50
    iget v0, p0, Lcn/codemao/android/account/bean/BindDeviceStatusVO;->surplusUnBindNums:I

    return v0
.end method

.method public isHasConfig()Z
    .registers 2

    .line 18
    iget-boolean v0, p0, Lcn/codemao/android/account/bean/BindDeviceStatusVO;->hasConfig:Z

    return v0
.end method

.method public setHasConfig(Z)V
    .registers 2

    .line 22
    iput-boolean p1, p0, Lcn/codemao/android/account/bean/BindDeviceStatusVO;->hasConfig:Z

    return-void
.end method

.method public setMaxBindNums(I)V
    .registers 2

    .line 30
    iput p1, p0, Lcn/codemao/android/account/bean/BindDeviceStatusVO;->maxBindNums:I

    return-void
.end method

.method public setMaxUnBindNums(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcn/codemao/android/account/bean/BindDeviceStatusVO;->maxUnBindNums:I

    return-void
.end method

.method public setSurplusBindNums(I)V
    .registers 2

    .line 46
    iput p1, p0, Lcn/codemao/android/account/bean/BindDeviceStatusVO;->surplusBindNums:I

    return-void
.end method

.method public setSurplusUnBindNums(I)V
    .registers 2

    .line 54
    iput p1, p0, Lcn/codemao/android/account/bean/BindDeviceStatusVO;->surplusUnBindNums:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BindDeviceStatusVO{isConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/codemao/android/account/bean/BindDeviceStatusVO;->hasConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxBindNums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/codemao/android/account/bean/BindDeviceStatusVO;->maxBindNums:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxUnBindNums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/codemao/android/account/bean/BindDeviceStatusVO;->maxUnBindNums:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", surplusBindNums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/codemao/android/account/bean/BindDeviceStatusVO;->surplusBindNums:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", surplusUnBindNums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/codemao/android/account/bean/BindDeviceStatusVO;->surplusUnBindNums:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
