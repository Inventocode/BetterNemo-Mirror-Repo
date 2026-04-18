.class public Lcn/com/chinatelecom/account/api/e/f;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Ljava/util/Map;

.field private static c:Ljava/util/List;

.field private static d:Lcn/com/chinatelecom/account/api/e/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/com/chinatelecom/account/api/e/f;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/com/chinatelecom/account/api/e/f;->c:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcn/com/chinatelecom/account/api/e/f;->d:Lcn/com/chinatelecom/account/api/e/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;
    .registers 4

    const-class v0, Lcn/com/chinatelecom/account/api/e/f;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sget-object v2, Lcn/com/chinatelecom/account/api/e/f;->b:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v1, Lcn/com/chinatelecom/account/api/e/f;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/chinatelecom/account/api/e/e;

    :cond_14
    if-nez v1, :cond_20

    new-instance v1, Lcn/com/chinatelecom/account/api/e/e;

    invoke-direct {v1, p0}, Lcn/com/chinatelecom/account/api/e/e;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/com/chinatelecom/account/api/e/f;->b:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit v0

    return-object v1

    :catchall_22
    move-exception v1

    :try_start_23
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcn/com/chinatelecom/account/api/e/e;

    invoke-direct {v1, p0}, Lcn/com/chinatelecom/account/api/e/e;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2d

    monitor-exit v0

    return-object v1

    :catchall_2d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lcn/com/chinatelecom/account/api/e/f;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_4a

    :try_start_b
    sget-object v2, Lcn/com/chinatelecom/account/api/e/f;->d:Lcn/com/chinatelecom/account/api/e/e;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcn/com/chinatelecom/account/api/e/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    sput-object v2, Lcn/com/chinatelecom/account/api/e/f;->d:Lcn/com/chinatelecom/account/api/e/e;

    :cond_19
    sget-object v2, Lcn/com/chinatelecom/account/api/e/f;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/com/chinatelecom/account/api/e/e;

    invoke-virtual {v3}, Lcn/com/chinatelecom/account/api/e/e;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_33
    const/4 v2, 0x0

    sput v2, Lcn/com/chinatelecom/account/api/e/f;->a:I

    sget-object v2, Lcn/com/chinatelecom/account/api/e/f;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_47

    :try_start_3c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_43

    return-void

    :cond_43
    invoke-static {p0, v0}, Lcn/com/chinatelecom/account/a/b;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_4a

    return-void

    :catchall_47
    move-exception p0

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcn/com/chinatelecom/account/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7

    const-class v0, Lcn/com/chinatelecom/account/api/e/f;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcn/com/chinatelecom/account/api/e/f;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object p1, Lcn/com/chinatelecom/account/api/e/f;->b:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/com/chinatelecom/account/api/e/e;

    invoke-virtual {p0, p2}, Lcn/com/chinatelecom/account/api/e/e;->g(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_56

    monitor-exit v0

    return-void

    :cond_18
    :try_start_18
    sget-object v1, Lcn/com/chinatelecom/account/api/e/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_54

    sget-object v1, Lcn/com/chinatelecom/account/api/e/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/chinatelecom/account/api/e/e;

    invoke-virtual {v2}, Lcn/com/chinatelecom/account/api/e/e;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_26

    invoke-virtual {v2}, Lcn/com/chinatelecom/account/api/e/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    if-eqz p1, :cond_26

    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/com/chinatelecom/account/api/e/e;->g(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    invoke-virtual {v2, p2}, Lcn/com/chinatelecom/account/api/e/e;->g(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;
    :try_end_53
    .catchall {:try_start_18 .. :try_end_53} :catchall_56

    goto :goto_26

    :cond_54
    monitor-exit v0

    return-void

    :catchall_56
    move-exception p0

    :try_start_57
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5c

    monitor-exit v0

    return-void

    :catchall_5c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcn/com/chinatelecom/account/api/e/f;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcn/com/chinatelecom/account/api/e/f;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcn/com/chinatelecom/account/api/e/f;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/chinatelecom/account/api/e/e;

    sput-object v1, Lcn/com/chinatelecom/account/api/e/f;->d:Lcn/com/chinatelecom/account/api/e/e;

    invoke-virtual {v1}, Lcn/com/chinatelecom/account/api/e/e;->b()V

    sget-object v1, Lcn/com/chinatelecom/account/api/e/f;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    :try_start_20
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_25

    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_1a

    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/com/chinatelecom/account/api/e/e;->a(I)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/com/chinatelecom/account/api/e/e;->e(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    goto :goto_2e

    :cond_1a
    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/com/chinatelecom/account/api/e/e;->a(I)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/com/chinatelecom/account/api/e/e;->e(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/com/chinatelecom/account/api/e/e;->d(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2e
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    const-class v0, Lcn/com/chinatelecom/account/api/e/f;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_46

    :try_start_3
    sget-object v1, Lcn/com/chinatelecom/account/api/e/f;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v1, Lcn/com/chinatelecom/account/api/e/f;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/chinatelecom/account/api/e/e;

    invoke-virtual {v1}, Lcn/com/chinatelecom/account/api/e/e;->b()V

    sget-object v2, Lcn/com/chinatelecom/account/api/e/f;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcn/com/chinatelecom/account/api/e/f;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    sget p0, Lcn/com/chinatelecom/account/api/e/f;->a:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_41

    sget-object p0, Lcn/com/chinatelecom/account/api/e/f;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2e

    goto :goto_41

    :cond_2e
    sput v1, Lcn/com/chinatelecom/account/api/e/f;->a:I

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_43

    :try_start_31
    new-instance p0, Lcn/com/chinatelecom/account/api/e/g;

    invoke-direct {p0}, Lcn/com/chinatelecom/account/api/e/g;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_40
    .catchall {:try_start_31 .. :try_end_40} :catchall_46

    return-void

    :cond_41
    :goto_41
    :try_start_41
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_43

    :try_start_45
    throw p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
