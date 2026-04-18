.class public Lcn/codemao/android/account/util/ConfigManager;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# static fields
.field private static volatile mInstance:Lcn/codemao/android/account/util/ConfigManager;


# instance fields
.field private isPadDevice:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcn/codemao/android/account/util/ConfigManager;->isPadDevice:Z

    return-void
.end method

.method public static getInstance()Lcn/codemao/android/account/util/ConfigManager;
    .registers 2

    .line 14
    sget-object v0, Lcn/codemao/android/account/util/ConfigManager;->mInstance:Lcn/codemao/android/account/util/ConfigManager;

    if-nez v0, :cond_17

    .line 15
    const-class v0, Lcn/codemao/android/account/util/ConfigManager;

    monitor-enter v0

    .line 16
    :try_start_7
    sget-object v1, Lcn/codemao/android/account/util/ConfigManager;->mInstance:Lcn/codemao/android/account/util/ConfigManager;

    if-nez v1, :cond_12

    new-instance v1, Lcn/codemao/android/account/util/ConfigManager;

    invoke-direct {v1}, Lcn/codemao/android/account/util/ConfigManager;-><init>()V

    sput-object v1, Lcn/codemao/android/account/util/ConfigManager;->mInstance:Lcn/codemao/android/account/util/ConfigManager;

    .line 17
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 19
    :cond_17
    :goto_17
    sget-object v0, Lcn/codemao/android/account/util/ConfigManager;->mInstance:Lcn/codemao/android/account/util/ConfigManager;

    return-object v0
.end method


# virtual methods
.method public isPadDevice()Z
    .registers 2

    .line 30
    iget-boolean v0, p0, Lcn/codemao/android/account/util/ConfigManager;->isPadDevice:Z

    return v0
.end method

.method public setIsPad(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcn/codemao/android/account/util/ConfigManager;->isPadDevice:Z

    return-void
.end method
