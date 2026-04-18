.class public Lcn/codemao/android/onekeylogin/log/QuickLoginLog;
.super Ljava/lang/Object;
.source "QuickLoginLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/onekeylogin/log/QuickLoginLog$LogListener;
    }
.end annotation


# static fields
.field private static instance:Lcn/codemao/android/onekeylogin/log/QuickLoginLog; = null

.field private static sTag:Ljava/lang/String; = "QuickLoginLog"


# instance fields
.field private logListener:Lcn/codemao/android/onekeylogin/log/QuickLoginLog$LogListener;

.field private sEnable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->sEnable:Z

    return-void
.end method

.method public static getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;
    .registers 2

    .line 32
    sget-object v0, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->instance:Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    if-nez v0, :cond_17

    .line 33
    const-class v0, Lcn/codemao/android/onekeylogin/QuickLoginManager;

    monitor-enter v0

    .line 34
    :try_start_7
    sget-object v1, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->instance:Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    if-nez v1, :cond_12

    .line 35
    new-instance v1, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    invoke-direct {v1}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;-><init>()V

    sput-object v1, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->instance:Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    .line 37
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 39
    :cond_17
    :goto_17
    sget-object v0, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->instance:Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    return-object v0
.end method


# virtual methods
.method public e(Ljava/lang/String;)V
    .registers 5

    .line 147
    iget-boolean v0, p0, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->sEnable:Z

    if-eqz v0, :cond_2b

    .line 148
    sget-object v0, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->sTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->logListener:Lcn/codemao/android/onekeylogin/log/QuickLoginLog$LogListener;

    if-eqz v0, :cond_2b

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->sTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog$LogListener;->log(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method public isDebug()Z
    .registers 2

    .line 28
    iget-boolean v0, p0, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->sEnable:Z

    return v0
.end method

.method public setEnable(Z)V
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->sEnable:Z

    return-void
.end method
