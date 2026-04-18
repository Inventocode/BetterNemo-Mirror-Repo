.class public abstract Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;
.super Ljava/lang/Object;
.source "PersistentIdentity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.PersistentIdentity"


# instance fields
.field private item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final persistentKey:Ljava/lang/String;

.field private final saStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

.field private final serializer:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer<",
            "TT;>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->serializer:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;

    .line 37
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->persistentKey:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->saStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    return-void
.end method


# virtual methods
.method public commit(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableSDK()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 73
    :cond_b
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->item:Ljava/lang/Object;

    .line 75
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->saStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    monitor-enter p1

    .line 76
    :try_start_10
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->item:Ljava/lang/Object;

    if-nez v0, :cond_1c

    .line 77
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->serializer:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->item:Ljava/lang/Object;

    .line 79
    :cond_1c
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->saStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->persistentKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->serializer:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->item:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;->save(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    monitor-exit p1

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->item:Ljava/lang/Object;

    if-nez v0, :cond_2b

    .line 50
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->saStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    monitor-enter v0

    .line 51
    :try_start_7
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->saStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->persistentKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 53
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->serializer:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;

    invoke-interface {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;->create()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->item:Ljava/lang/Object;

    .line 54
    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->commit(Ljava/lang/Object;)V

    goto :goto_26

    .line 56
    :cond_1e
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->serializer:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;

    invoke-interface {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->item:Ljava/lang/Object;

    .line 58
    :goto_26
    monitor-exit v0

    goto :goto_2b

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v1

    .line 60
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public isExists()Z
    .registers 3

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->saStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->persistentKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->isExists(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    .line 92
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->saStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    monitor-enter v0

    .line 102
    :try_start_3
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->saStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->persistentKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->remove(Ljava/lang/String;)V

    .line 103
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method
