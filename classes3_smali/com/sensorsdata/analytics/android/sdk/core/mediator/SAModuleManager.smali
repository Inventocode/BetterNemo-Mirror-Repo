.class public Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;
.super Ljava/lang/Object;
.source "SAModuleManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.ModuleManager"

.field private static volatile mSingleton:Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;


# instance fields
.field private final mServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->mServiceMap:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;
    .registers 2

    .line 43
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    if-nez v0, :cond_17

    .line 44
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    monitor-enter v0

    .line 45
    :try_start_7
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    if-nez v1, :cond_12

    .line 46
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;-><init>()V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    .line 48
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 50
    :cond_17
    :goto_17
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    return-object v0
.end method

.method private getService(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;
    .registers 4

    const/4 v0, 0x0

    .line 170
    :try_start_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->hasModuleByName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    return-object v0

    .line 173
    :cond_c
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->mServiceMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_15

    return-object p1

    :catch_15
    move-exception p1

    .line 175
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object v0
.end method

.method private loadModule(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;",
            ">;"
        }
    .end annotation

    const-string v0, "loadModule name: "

    const-string v1, "SA.ModuleManager"

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 95
    :try_start_19
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 96
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_19 .. :try_end_38} :catchall_39

    goto :goto_d

    :catchall_39
    move-exception v4

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error \n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_55
    return-object v2
.end method


# virtual methods
.method public hasModuleByName(Ljava/lang/String;)Z
    .registers 4

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 130
    :cond_8
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->mServiceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 131
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->mServiceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;

    if-eqz p1, :cond_1f

    .line 133
    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;->isEnable()Z

    move-result p1

    return p1

    :cond_1f
    return v1
.end method

.method public installService(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 6

    .line 60
    :try_start_0
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager$1;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;)V

    .line 71
    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->loadModule(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager$2;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager$2;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_33

    .line 80
    :try_start_21
    invoke-interface {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;->install(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    .line 81
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->mServiceMap:Ljava/util/Map;

    invoke-interface {v1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2d} :catch_2e

    goto :goto_15

    :catch_2e
    move-exception v1

    .line 83
    :try_start_2f
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_15

    :catch_33
    move-exception p1

    .line 87
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_37
    return-void
.end method

.method public varargs invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 152
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getService(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 154
    invoke-interface {p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;->invokeModuleFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    .line 157
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public setModuleState(Z)V
    .registers 4

    .line 145
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->mServiceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;

    .line 146
    invoke-interface {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;->setModuleState(Z)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public setModuleStateByName(Ljava/lang/String;Z)V
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->mServiceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 113
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->mServiceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;

    if-eqz p1, :cond_1b

    .line 114
    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;->isEnable()Z

    move-result v0

    if-eq p2, v0, :cond_1b

    .line 115
    invoke-interface {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;->setModuleState(Z)V

    :cond_1b
    return-void
.end method
