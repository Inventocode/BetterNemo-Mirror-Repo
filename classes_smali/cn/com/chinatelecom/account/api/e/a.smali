.class public final Lcn/com/chinatelecom/account/api/e/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "a"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)J
    .registers 4

    const-string v0, "key_difference_time"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcn/com/chinatelecom/account/api/e/c;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/net/HttpURLConnection;Z)Lcn/com/chinatelecom/account/api/e/c;
    .registers 9

    new-instance p2, Lcn/com/chinatelecom/account/api/e/c;

    invoke-direct {p2}, Lcn/com/chinatelecom/account/api/e/c;-><init>()V

    :try_start_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    const-string v0, "p"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcn/com/chinatelecom/account/api/e/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request protocol : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/chinatelecom/account/api/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    const-string v0, "Set-Cookie"

    const-string v2, "gw_auth"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_68

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_68

    const/4 v3, 0x0

    :goto_46
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_68

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_65

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-static {v4, v2}, Lcn/com/chinatelecom/account/api/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcn/com/chinatelecom/account/api/e/c;->a:Ljava/lang/String;

    goto :goto_68

    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_68
    :goto_68
    const-string v0, "Log-Level"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_91

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_91

    const/4 v2, 0x0

    :goto_79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_91

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8e

    invoke-static {p0, v3}, Lcn/com/chinatelecom/account/api/e/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8e
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    :cond_91
    const-string v0, "p-reset"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_b2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b2

    const-string v2, "key_p_rset_v3.8.7"

    invoke-static {p0, v2, v0}, Lcn/com/chinatelecom/account/api/e/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b2
    const-string p0, "p-ikgx"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_d7

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d7

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d7

    iput-object p0, p2, Lcn/com/chinatelecom/account/api/e/c;->c:Ljava/lang/String;

    sput-object p0, Lcn/com/chinatelecom/account/api/e/h;->d:Ljava/lang/String;
    :try_end_d2
    .catchall {:try_start_5 .. :try_end_d2} :catchall_d3

    goto :goto_d7

    :catchall_d3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d7
    :goto_d7
    return-object p2
.end method

.method public static a(Ljava/net/HttpURLConnection;)Lcn/com/chinatelecom/account/api/e/c;
    .registers 6

    new-instance v0, Lcn/com/chinatelecom/account/api/e/c;

    invoke-direct {v0}, Lcn/com/chinatelecom/account/api/e/c;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    const-string v1, "rdt_allow"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_37

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcn/com/chinatelecom/account/api/e/c;->d:Ljava/lang/String;

    sget-object v1, Lcn/com/chinatelecom/account/api/e/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request method : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcn/com/chinatelecom/account/api/e/c;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/com/chinatelecom/account/api/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    const-string v1, "p-ikgx"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5a

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5a

    iput-object p0, v0, Lcn/com/chinatelecom/account/api/e/c;->c:Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_5 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5a
    :goto_5a
    return-object v0
.end method

.method public static declared-synchronized a(I)Ljava/lang/String;
    .registers 3

    const-class v0, Lcn/com/chinatelecom/account/api/e/a;

    monitor-enter v0

    :try_start_3
    sget v1, Lcn/com/chinatelecom/account/api/e;->a:I

    if-ne p0, v1, :cond_b

    const-string p0, "presdk"
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    monitor-exit v0

    return-object p0

    :cond_b
    :try_start_b
    const-string p0, "preauthIfaa"
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_f

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_25

    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    aget-object p0, p0, v0

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aget-object p0, p0, p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_21

    goto :goto_27

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :catch_21
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_25
    const-string p0, ""

    :goto_27
    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcn/com/chinatelecom/account/api/d/i;Ljava/lang/String;Landroid/net/Network;ZLjava/lang/String;)Lorg/json/JSONObject;
    .registers 12

    const-string v0, "data"

    if-eqz p1, :cond_d9

    iget-object v1, p1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    if-nez v1, :cond_a

    goto/16 :goto_d9

    :cond_a
    :try_start_a
    iget v2, p1, Lcn/com/chinatelecom/account/api/d/i;->a:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto/16 :goto_d3

    :cond_17
    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_25} :catch_d4

    const/4 v5, 0x0

    if-nez v4, :cond_52

    :try_start_28
    invoke-static {v3, p2}, Lcn/com/chinatelecom/account/api/e/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_3a

    const-string v3, "gwAuth"

    iget-object p1, p1, Lcn/com/chinatelecom/account/api/d/i;->c:Ljava/lang/String;

    invoke-virtual {v4, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3a
    const/16 p1, -0x2724

    if-ne v2, p1, :cond_43

    const-string p1, "taskId"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_43
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_47

    goto :goto_52

    :catchall_47
    move-exception p1

    :try_start_48
    sget-object v3, Lcn/com/chinatelecom/account/api/e/a;->a:Ljava/lang/String;

    const-string v4, "dct"

    invoke-static {v3, v4, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_52
    :goto_52
    const/16 p1, 0x7532

    if-ne v2, p1, :cond_88

    if-eqz p4, :cond_88

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "urls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_7c

    const/4 v0, 0x0

    :goto_6c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_7c

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    :cond_7c
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_83

    return-object v5

    :cond_83
    invoke-static {p0, p4, p2, p3, p5}, Lcn/com/chinatelecom/account/api/e/a;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/net/Network;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_88
    const/16 p1, -0x2719

    if-eq v2, p1, :cond_90

    const/16 p1, -0x7531

    if-ne v2, p1, :cond_d8

    :cond_90
    const-string p1, "timeStamp"

    const-wide/16 p2, -0x1

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p4

    cmp-long p1, p4, p2

    if-nez p1, :cond_cf

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/d;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Lcn/com/chinatelecom/account/api/d/h;

    invoke-direct {p4}, Lcn/com/chinatelecom/account/api/d/h;-><init>()V

    const-string p5, "reqTimestamp"

    invoke-virtual {p4, p5}, Lcn/com/chinatelecom/account/api/d/h;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/d/h;

    invoke-virtual {p4, p1}, Lcn/com/chinatelecom/account/api/d/h;->b(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/d/h;

    invoke-virtual {p4}, Lcn/com/chinatelecom/account/api/d/h;->a()Lcn/com/chinatelecom/account/api/d/g;

    move-result-object p1

    new-instance p4, Lcn/com/chinatelecom/account/api/d/b;

    invoke-direct {p4, p0}, Lcn/com/chinatelecom/account/api/d/b;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/h;->b()Ljava/lang/String;

    move-result-object p5

    const-string v0, ""

    const/4 v2, 0x1

    invoke-interface {p4, p5, v0, v2, p1}, Lcn/com/chinatelecom/account/api/d/e;->a(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/i;

    move-result-object p1

    iget-object p1, p1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    if-eqz p1, :cond_d8

    const-string p4, "msg"

    invoke-virtual {p1, p4, p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcn/com/chinatelecom/account/api/e/a;->a(Landroid/content/Context;J)V

    goto :goto_d8

    :cond_cf
    invoke-static {p0, p4, p5}, Lcn/com/chinatelecom/account/api/e/a;->a(Landroid/content/Context;J)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_d2} :catch_d4

    goto :goto_d8

    :cond_d3
    :goto_d3
    return-object v1

    :catch_d4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d8
    :goto_d8
    return-object v1

    :cond_d9
    :goto_d9
    invoke-static {}, Lcn/com/chinatelecom/account/api/e/k;->b()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/net/Network;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 18

    move-object v7, p0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_6f

    move-object v10, p1

    :try_start_a
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    goto :goto_6c

    :cond_1b
    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/h;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2a

    invoke-static {p0, v0}, Lcn/com/chinatelecom/account/api/d/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2a
    new-instance v1, Lcn/com/chinatelecom/account/api/d/h;

    invoke-direct {v1}, Lcn/com/chinatelecom/account/api/d/h;-><init>()V
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_64

    move-object/from16 v11, p4

    :try_start_31
    invoke-virtual {v1, v11}, Lcn/com/chinatelecom/account/api/d/h;->b(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/d/h;
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_60

    move-object/from16 v12, p3

    :try_start_36
    invoke-virtual {v1, v12}, Lcn/com/chinatelecom/account/api/d/h;->a(Landroid/net/Network;)Lcn/com/chinatelecom/account/api/d/h;

    invoke-virtual {v1}, Lcn/com/chinatelecom/account/api/d/h;->a()Lcn/com/chinatelecom/account/api/d/g;

    move-result-object v1

    new-instance v2, Lcn/com/chinatelecom/account/api/d/b;

    invoke-direct {v2, p0}, Lcn/com/chinatelecom/account/api/d/b;-><init>(Landroid/content/Context;)V

    const-string v3, ""

    invoke-interface {v2, v0, v3, v8, v1}, Lcn/com/chinatelecom/account/api/d/e;->a(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/i;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcn/com/chinatelecom/account/api/e/a;->a(Landroid/content/Context;Lcn/com/chinatelecom/account/api/d/i;Ljava/lang/String;Landroid/net/Network;ZLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6c

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1
    :try_end_5b
    .catchall {:try_start_36 .. :try_end_5b} :catchall_5e

    if-nez v1, :cond_6c

    return-object v0

    :catchall_5e
    move-exception v0

    goto :goto_69

    :catchall_60
    move-exception v0

    move-object/from16 v12, p3

    goto :goto_69

    :catchall_64
    move-exception v0

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    :goto_69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6c
    :goto_6c
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6f
    const v0, 0x13881

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/com/chinatelecom/account/api/e/k;->b:[B

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "- redirect 30002 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/chinatelecom/account/api/e/k;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-string v0, "key_difference_time"

    invoke-static {p0, v0, p1, p2}, Lcn/com/chinatelecom/account/api/e/c;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    :cond_10
    return-void
.end method
