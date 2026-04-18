.class public Lcn/com/chinatelecom/account/a/b;
.super Lcn/com/chinatelecom/account/api/d/a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcn/com/chinatelecom/account/api/d/a;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/util/Queue;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcn/com/chinatelecom/account/a/b;->b(Landroid/content/Context;Ljava/util/Queue;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/util/List;I)Ljava/util/Queue;
    .registers 3

    invoke-static {p0, p1, p2}, Lcn/com/chinatelecom/account/a/b;->b(Landroid/content/Context;Ljava/util/List;I)Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .registers 2

    const-string v0, ""

    invoke-static {p0, v0}, Lcn/com/chinatelecom/account/api/e/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_40

    :goto_c
    const/4 p1, -0x1

    goto :goto_2e

    :sswitch_e
    const-string v0, "ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_c

    :cond_17
    const/4 p1, 0x2

    goto :goto_2e

    :sswitch_19
    const-string v0, "OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_c

    :cond_22
    const/4 p1, 0x1

    goto :goto_2e

    :sswitch_24
    const-string v0, "ALL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_c

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    packed-switch p1, :pswitch_data_4e

    goto :goto_34

    :pswitch_32  #0x1
    const/4 v1, -0x2

    goto :goto_35

    :goto_34
    :pswitch_34  #0x0
    const/4 v1, 0x0

    :goto_35
    :pswitch_35  #0x2
    :try_start_35
    const-string p1, "key_c_l_l_v"

    invoke-static {p0, p1, v1}, Lcn/com/chinatelecom/account/api/e/c;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :sswitch_data_40
    .sparse-switch
        0xfd81 -> :sswitch_24
        0x1314f -> :sswitch_19
        0x3f2d9e8 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_34  #00000000
        :pswitch_32  #00000001
        :pswitch_35  #00000002
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .registers 4

    invoke-static {p0}, Lcn/com/chinatelecom/account/a/b;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_8

    return-void

    :cond_8
    new-instance v1, Lcn/com/chinatelecom/account/a/c;

    invoke-direct {v1, p0, p1, v0}, Lcn/com/chinatelecom/account/a/c;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/d/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/util/Queue;I)V
    .registers 7

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_3e

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_1e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2f

    const-string v2, "rt"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_12

    :cond_2f
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_37
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_3e

    goto :goto_12

    :cond_3e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_54

    :try_start_44
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/Helper;->eneulret(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4c} :catch_4d

    goto :goto_56

    :catch_4d
    move-exception p1

    const/4 p2, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, p2

    goto :goto_56

    :cond_54
    const-string p1, ""

    :goto_56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5f

    invoke-static {p0, p1}, Lcn/com/chinatelecom/account/api/e/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5f
    return-void
.end method

.method private static b(Landroid/content/Context;)I
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "key_c_l_l_v"

    invoke-static {p0, v1, v0}, Lcn/com/chinatelecom/account/api/e/c;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_c
    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/util/Queue;)Ljava/lang/String;
    .registers 6

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_1f
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_28

    goto :goto_13

    :catch_28
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    :cond_2d
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-gtz p1, :cond_36

    const-string p0, ""

    return-object p0

    :cond_36
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    :try_start_40
    invoke-static {p0, p1}, Lcn/com/chinatelecom/account/api/Helper;->guulam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4f
    :goto_4f
    invoke-static {}, Lcn/com/chinatelecom/account/api/e/h;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcn/com/chinatelecom/account/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized b(Landroid/content/Context;Ljava/util/List;I)Ljava/util/Queue;
    .registers 10

    const-class v0, Lcn/com/chinatelecom/account/a/b;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0xa

    if-nez v3, :cond_49

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/a/c;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/Helper;->dneulret([B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_83

    :try_start_21
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    :goto_2b
    if-ge v3, v5, :cond_3f

    if-gt v3, v4, :cond_3f

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_3c

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_3f
    const-string v2, ""

    invoke-static {p0, v2}, Lcn/com/chinatelecom/account/api/e/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_44} :catch_45
    .catchall {:try_start_21 .. :try_end_44} :catchall_83

    goto :goto_49

    :catch_45
    move-exception p0

    :try_start_46
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_49
    :goto_49
    const/4 p0, -0x1

    if-ne p2, p0, :cond_72

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_50
    :goto_50
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_77

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_5c
    .catchall {:try_start_46 .. :try_end_5c} :catchall_83

    :try_start_5c
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "rt"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_50

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_6c} :catch_6d
    .catchall {:try_start_5c .. :try_end_6c} :catchall_83

    goto :goto_50

    :catch_6d
    move-exception p1

    :try_start_6e
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_50

    :cond_72
    if-nez p2, :cond_77

    invoke-interface {v1, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    :cond_77
    :goto_77
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result p0

    if-le p0, v4, :cond_81

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;
    :try_end_80
    .catchall {:try_start_6e .. :try_end_80} :catchall_83

    goto :goto_77

    :cond_81
    monitor-exit v0

    return-object v1

    :catchall_83
    move-exception p0

    monitor-exit v0

    throw p0
.end method
