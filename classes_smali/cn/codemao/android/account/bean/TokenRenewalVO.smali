.class public Lcn/codemao/android/account/bean/TokenRenewalVO;
.super Ljava/lang/Object;
.source "TokenRenewalVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private expired_at:J

.field private initial_expire:J

.field private refresh_expire:J

.field private refresh_interval:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpired_at()J
    .registers 3

    .line 16
    iget-wide v0, p0, Lcn/codemao/android/account/bean/TokenRenewalVO;->expired_at:J

    return-wide v0
.end method

.method public getInitial_expire()J
    .registers 3

    .line 24
    iget-wide v0, p0, Lcn/codemao/android/account/bean/TokenRenewalVO;->initial_expire:J

    return-wide v0
.end method

.method public getRefresh_expire()J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcn/codemao/android/account/bean/TokenRenewalVO;->refresh_expire:J

    return-wide v0
.end method

.method public getRefresh_interval()J
    .registers 3

    .line 32
    iget-wide v0, p0, Lcn/codemao/android/account/bean/TokenRenewalVO;->refresh_interval:J

    return-wide v0
.end method

.method public setExpired_at(J)V
    .registers 3

    .line 20
    iput-wide p1, p0, Lcn/codemao/android/account/bean/TokenRenewalVO;->expired_at:J

    return-void
.end method

.method public setInitial_expire(J)V
    .registers 3

    .line 28
    iput-wide p1, p0, Lcn/codemao/android/account/bean/TokenRenewalVO;->initial_expire:J

    return-void
.end method

.method public setRefresh_expire(J)V
    .registers 3

    .line 44
    iput-wide p1, p0, Lcn/codemao/android/account/bean/TokenRenewalVO;->refresh_expire:J

    return-void
.end method

.method public setRefresh_interval(J)V
    .registers 3

    .line 36
    iput-wide p1, p0, Lcn/codemao/android/account/bean/TokenRenewalVO;->refresh_interval:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenRenewalVO{expired_at="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/codemao/android/account/bean/TokenRenewalVO;->expired_at:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", initial_expire="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/codemao/android/account/bean/TokenRenewalVO;->initial_expire:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", refresh_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/codemao/android/account/bean/TokenRenewalVO;->refresh_interval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", refresh_expire="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/codemao/android/account/bean/TokenRenewalVO;->refresh_expire:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
