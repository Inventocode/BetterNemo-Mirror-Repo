.class Lcom/umeng/umcrash/UMCrash$CrashClientImpl;
.super Ljava/lang/Object;
.source "UMCrash.java"

# interfaces
.implements Lcom/uc/crashsdk/export/ICrashClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/umcrash/UMCrash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CrashClientImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/umcrash/UMCrash$1;)V
    .registers 2

    .line 83
    invoke-direct {p0}, Lcom/umeng/umcrash/UMCrash$CrashClientImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddCrashStats(Ljava/lang/String;II)V
    .registers 4

    return-void
.end method

.method public onBeforeUploadLog(Ljava/io/File;)Ljava/io/File;
    .registers 2

    return-object p1
.end method

.method public onClientProcessLogGenerated(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onCrashRestarting(Z)V
    .registers 2

    return-void
.end method

.method public onGetCallbackInfo(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    const-string p2, "um_action_log"

    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_88

    .line 105
    :try_start_9
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$000()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_87

    .line 106
    :try_start_e
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$100()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_82

    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$100()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_82

    .line 107
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "source"

    const/4 v2, 0x0

    .line 108
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "action_name"

    const-string v3, "page_view"

    .line 109
    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 111
    :goto_35
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$100()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 112
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$100()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_58

    .line 114
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "name"

    .line 115
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_5b
    const-string v2, "action_parameter"

    .line 119
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$200()Z

    move-result p2

    if-eqz p2, :cond_82

    .line 122
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$300()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page json is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_82
    monitor-exit p1

    goto :goto_87

    :catchall_84
    move-exception p2

    monitor-exit p1
    :try_end_86
    .catchall {:try_start_e .. :try_end_86} :catchall_84

    :try_start_86
    throw p2
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_87

    :catchall_87
    :goto_87
    return-object v0

    :cond_88
    const-string p2, "um_umid"

    .line 129
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_99

    .line 130
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$400()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/umcrash/UMCrash;->access$500(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_99
    const-string p2, "um_user_string"

    .line 131
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    .line 132
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$600()Lcom/umeng/umcrash/UMCrashCallback;

    move-result-object p1

    if-eqz p1, :cond_c4

    .line 134
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$600()Lcom/umeng/umcrash/UMCrashCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/umeng/umcrash/UMCrashCallback;->onCallback()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b2

    return-object v0

    .line 138
    :cond_b2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    const/16 v0, 0x100

    if-le p2, v0, :cond_c3

    .line 140
    invoke-static {p1, v0}, Lcom/umeng/umcrash/UMCrashUtils;->splitByByte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_c3
    return-object p1

    :cond_c4
    return-object v0
.end method

.method public onLogGenerated(Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
