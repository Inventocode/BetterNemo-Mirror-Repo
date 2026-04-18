.class public Lcom/umeng/analytics/pro/v;
.super Ljava/lang/Object;
.source "ViewPageTracker.java"


# static fields
.field private static final c:I = 0x5

.field private static d:Lorg/json/JSONArray;

.field private static e:Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/umeng/analytics/vshelper/a;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/v;->d:Lorg/json/JSONArray;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/v;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/v;->f:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/v;->a:Ljava/util/Stack;

    .line 47
    invoke-static {}, Lcom/umeng/analytics/vshelper/PageNameMonitor;->getInstance()Lcom/umeng/analytics/vshelper/PageNameMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/v;->b:Lcom/umeng/analytics/vshelper/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    if-eqz p0, :cond_43

    .line 54
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 56
    sget-object v1, Lcom/umeng/analytics/pro/v;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_43

    .line 58
    :try_start_a
    sget-object v2, Lcom/umeng/analytics/pro/v;->d:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    sput-object v3, Lcom/umeng/analytics/pro/v;->d:Lorg/json/JSONArray;

    .line 60
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_40

    .line 61
    :try_start_18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_43

    .line 62
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v2, "__a"

    .line 63
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_43

    .line 66
    invoke-static {p0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p0

    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/u;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/i$a;->b:Lcom/umeng/analytics/pro/i$a;

    invoke-virtual {p0, v1, v0, v2}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/i$a;)Z
    :try_end_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_43

    goto :goto_43

    :catchall_40
    move-exception p0

    .line 60
    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    :try_start_42
    throw p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_43

    :catchall_43
    :cond_43
    :goto_43
    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 11

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 79
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 80
    iget-object v0, p0, Lcom/umeng/analytics/pro/v;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_32

    .line 81
    iget-object v0, p0, Lcom/umeng/analytics/pro/v;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "@"

    .line 82
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 84
    sget-object v2, Lcom/umeng/analytics/pro/j;->F:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\\|"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 87
    :cond_32
    iget-object v0, p0, Lcom/umeng/analytics/pro/v;->b:Lcom/umeng/analytics/vshelper/a;

    invoke-interface {v0, p1}, Lcom/umeng/analytics/vshelper/a;->customPageBegin(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/umeng/analytics/pro/v;->f:Ljava/util/Map;

    monitor-enter v0

    .line 89
    :try_start_3a
    iget-object v1, p0, Lcom/umeng/analytics/pro/v;->f:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 91
    iget-object v1, p0, Lcom/umeng/analytics/pro/v;->a:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_52
    monitor-exit v0

    goto :goto_57

    :catchall_54
    move-exception p1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3a .. :try_end_56} :catchall_54

    throw p1

    :cond_57
    :goto_57
    return-void
.end method

.method public b()V
    .registers 12

    .line 162
    iget-object v0, p0, Lcom/umeng/analytics/pro/v;->f:Ljava/util/Map;

    monitor-enter v0

    .line 163
    :try_start_3
    iget-object v1, p0, Lcom/umeng/analytics/pro/v;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 164
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-lez v8, :cond_10

    .line 165
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 166
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-wide v9, v2

    move-object v2, v4

    move-wide v3, v9

    goto :goto_10

    .line 169
    :cond_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_45

    if-eqz v2, :cond_44

    .line 171
    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/v;->b(Ljava/lang/String;)V

    :cond_44
    return-void

    :catchall_45
    move-exception v1

    .line 169
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public b(Ljava/lang/String;)V
    .registers 12

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 99
    iget-object v0, p0, Lcom/umeng/analytics/pro/v;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_af

    .line 101
    iget-object v0, p0, Lcom/umeng/analytics/pro/v;->f:Ljava/util/Map;

    monitor-enter v0

    .line 102
    :try_start_13
    iget-object v3, p0, Lcom/umeng/analytics/pro/v;->f:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 103
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_ac

    if-nez v3, :cond_1f

    return-void

    .line 112
    :cond_1f
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 113
    iget-object v0, p0, Lcom/umeng/analytics/pro/v;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_3e

    iget-object v0, p0, Lcom/umeng/analytics/pro/v;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 114
    iget-object v0, p0, Lcom/umeng/analytics/pro/v;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 118
    :cond_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 119
    sget-object v6, Lcom/umeng/analytics/pro/v;->e:Ljava/lang/Object;

    monitor-enter v6

    .line 121
    :try_start_4a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "page_name"

    .line 122
    invoke-virtual {v0, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "duration"

    .line 123
    invoke-virtual {v0, v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "page_start"

    .line 124
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "type"

    .line 125
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/v;->a()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    sget-object v3, Lcom/umeng/analytics/pro/v;->d:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 128
    sget-object v0, Lcom/umeng/analytics/pro/v;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_85

    const/4 v0, 0x0

    .line 129
    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_85

    const/16 v4, 0x1003

    .line 131
    invoke-static {v3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v5

    invoke-static {v3, v4, v5, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_85
    .catchall {:try_start_4a .. :try_end_85} :catchall_85

    .line 136
    :catchall_85
    :cond_85
    :try_start_85
    monitor-exit v6
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_a9

    .line 137
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 138
    iget-object v0, p0, Lcom/umeng/analytics/pro/v;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_d1

    const-string v0, "@"

    .line 140
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/String;

    aput-object p1, v7, v1

    .line 142
    sget-object v3, Lcom/umeng/analytics/pro/j;->E:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "\\|"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_d1

    :catchall_a9
    move-exception p1

    .line 136
    :try_start_aa
    monitor-exit v6
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw p1

    :catchall_ac
    move-exception p1

    .line 103
    :try_start_ad
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw p1

    .line 146
    :cond_af
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 147
    iget-object v0, p0, Lcom/umeng/analytics/pro/v;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_d1

    const-string v0, "@"

    .line 149
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/String;

    aput-object p1, v7, v1

    .line 151
    sget-object v3, Lcom/umeng/analytics/pro/j;->G:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "\\|"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_d1
    :goto_d1
    return-void
.end method
