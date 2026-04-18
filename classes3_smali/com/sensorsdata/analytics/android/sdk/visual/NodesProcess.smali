.class public Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;
.super Ljava/lang/Object;
.source "NodesProcess.java"


# static fields
.field private static volatile mSingleton:Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;


# instance fields
.field private volatile mFlutterNodesManager:Lcom/sensorsdata/analytics/android/sdk/visual/FlutterNodesManager;

.field private volatile mWebNodesManager:Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;
    .registers 2

    .line 10
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;

    if-nez v0, :cond_17

    .line 11
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;

    monitor-enter v0

    .line 12
    :try_start_7
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;

    if-nez v1, :cond_12

    .line 13
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;-><init>()V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;

    .line 15
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 17
    :cond_17
    :goto_17
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;

    return-object v0
.end method


# virtual methods
.method public getFlutterNodesManager()Lcom/sensorsdata/analytics/android/sdk/visual/FlutterNodesManager;
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->mFlutterNodesManager:Lcom/sensorsdata/analytics/android/sdk/visual/FlutterNodesManager;

    if-nez v0, :cond_17

    .line 33
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/visual/FlutterNodesManager;

    monitor-enter v0

    .line 34
    :try_start_7
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->mFlutterNodesManager:Lcom/sensorsdata/analytics/android/sdk/visual/FlutterNodesManager;

    if-nez v1, :cond_12

    .line 35
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/FlutterNodesManager;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/FlutterNodesManager;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->mFlutterNodesManager:Lcom/sensorsdata/analytics/android/sdk/visual/FlutterNodesManager;

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
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->mFlutterNodesManager:Lcom/sensorsdata/analytics/android/sdk/visual/FlutterNodesManager;

    return-object v0
.end method

.method public getWebNodesManager()Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;
    .registers 3

    .line 21
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->mWebNodesManager:Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    if-nez v0, :cond_17

    .line 22
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    monitor-enter v0

    .line 23
    :try_start_7
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->mWebNodesManager:Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    if-nez v1, :cond_12

    .line 24
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->mWebNodesManager:Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    .line 26
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 28
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->mWebNodesManager:Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    return-object v0
.end method
