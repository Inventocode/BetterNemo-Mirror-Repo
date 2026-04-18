.class public Lcn/codemao/android/account/bean/BindDeviceVO;
.super Ljava/lang/Object;
.source "BindDeviceVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private deviceId:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private deviceSn:Ljava/lang/String;

.field private deviceType:I

.field private id:J

.field private lastLoginTime:J

.field private umengId:Ljava/lang/String;

.field private userId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSn()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->deviceSn:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .registers 2

    .line 54
    iget v0, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->deviceType:I

    return v0
.end method

.method public getId()J
    .registers 3

    .line 62
    iget-wide v0, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->id:J

    return-wide v0
.end method

.method public getLastLoginTime()J
    .registers 3

    .line 70
    iget-wide v0, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->lastLoginTime:J

    return-wide v0
.end method

.method public getUmengId()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->umengId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .registers 3

    .line 86
    iget-wide v0, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->userId:J

    return-wide v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceSn(Ljava/lang/String;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->deviceSn:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(I)V
    .registers 2

    .line 58
    iput p1, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->deviceType:I

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 66
    iput-wide p1, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->id:J

    return-void
.end method

.method public setLastLoginTime(J)V
    .registers 3

    .line 74
    iput-wide p1, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->lastLoginTime:J

    return-void
.end method

.method public setUmengId(Ljava/lang/String;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->umengId:Ljava/lang/String;

    return-void
.end method

.method public setUserId(J)V
    .registers 3

    .line 90
    iput-wide p1, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->userId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BindDeviceVO{deviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceModel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->deviceModel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceSn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->deviceSn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->deviceType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", lastLoginTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->lastLoginTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", umengId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->umengId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/codemao/android/account/bean/BindDeviceVO;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
