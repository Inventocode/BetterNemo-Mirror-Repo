.class public Lcn/codemao/android/account/bean/RuleBean;
.super Ljava/lang/Object;
.source "RuleBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private deviceId:Ljava/lang/String;

.field private identity:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private scene:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/account/util/DeviceInformationUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/account/bean/RuleBean;->deviceId:Ljava/lang/String;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcn/codemao/android/account/bean/RuleBean;->timestamp:J

    return-void
.end method


# virtual methods
.method public getIdentity()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcn/codemao/android/account/bean/RuleBean;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcn/codemao/android/account/bean/RuleBean;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getScene()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcn/codemao/android/account/bean/RuleBean;->scene:Ljava/lang/String;

    return-object v0
.end method

.method public setIdentity(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcn/codemao/android/account/bean/RuleBean;->identity:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcn/codemao/android/account/bean/RuleBean;->pid:Ljava/lang/String;

    return-void
.end method

.method public setScene(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcn/codemao/android/account/bean/RuleBean;->scene:Ljava/lang/String;

    return-void
.end method
