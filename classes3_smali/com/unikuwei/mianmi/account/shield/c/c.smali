.class public Lcom/unikuwei/mianmi/account/shield/c/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/unikuwei/mianmi/account/shield/c/c;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x0

    :goto_a
    const/4 v2, 0x5

    if-ge v1, v2, :cond_18

    add-int/2addr v2, v1

    aget-byte v3, p1, v2

    aget-byte v2, p2, v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_1a

    if-eq v3, v2, :cond_15

    return v0

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_18
    const/4 p1, 0x1

    return p1

    :catch_1a
    return v0
.end method

.method public static a()Lcom/unikuwei/mianmi/account/shield/c/c;
    .registers 2

    sget-object v0, Lcom/unikuwei/mianmi/account/shield/c/c;->a:Lcom/unikuwei/mianmi/account/shield/c/c;

    if-nez v0, :cond_17

    const-class v0, Lcom/unikuwei/mianmi/account/shield/c/c;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/unikuwei/mianmi/account/shield/c/c;->a:Lcom/unikuwei/mianmi/account/shield/c/c;

    if-nez v1, :cond_12

    new-instance v1, Lcom/unikuwei/mianmi/account/shield/c/c;

    invoke-direct {v1}, Lcom/unikuwei/mianmi/account/shield/c/c;-><init>()V

    sput-object v1, Lcom/unikuwei/mianmi/account/shield/c/c;->a:Lcom/unikuwei/mianmi/account/shield/c/c;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/unikuwei/mianmi/account/shield/c/c;->a:Lcom/unikuwei/mianmi/account/shield/c/c;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/h;->b(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/unikuwei/mianmi/account/shield/e/h;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/unikuwei/mianmi/account/shield/e/h;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/e/k;->a()[B

    move-result-object v4

    const-string v5, "3.0.0A0000B0508"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1d

    :goto_1b
    const/4 v3, 0x0

    goto :goto_31

    :cond_1d
    invoke-direct {p0, v5, v3}, Lcom/unikuwei/mianmi/account/shield/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eq v6, v7, :cond_29

    const-string v3, "Different SDK"

    invoke-static {v3}, Lcom/unikuwei/mianmi/account/shield/e/f;->b(Ljava/lang/String;)V

    goto :goto_1b

    :cond_29
    invoke-virtual {v5, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_30

    goto :goto_1b

    :cond_30
    const/4 v3, 0x1

    :goto_31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unikuwei/mianmi/account/shield/e/f;->b(Ljava/lang/String;)V

    if-nez v3, :cond_4b

    invoke-static {p1, v4}, Lcom/unikuwei/mianmi/account/shield/e/h;->b(Landroid/content/Context;[B)V

    goto :goto_4e

    :cond_4b
    invoke-static {p1, v2}, Lcom/unikuwei/mianmi/account/shield/e/h;->a(Landroid/content/Context;[B)Z

    :goto_4e
    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/unikuwei/mianmi/account/shield/e/h;->a(Landroid/content/Context;Ljava/lang/String;)Ldalvik/system/DexClassLoader;

    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/h;->c(Landroid/content/Context;)V

    if-nez v3, :cond_5d

    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/h;->d(Landroid/content/Context;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5d} :catch_6a
    .catchall {:try_start_2 .. :try_end_5d} :catchall_68

    :cond_5d
    if-eqz v1, :cond_67

    :try_start_5f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_67

    :catch_63
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_67
    :goto_67
    return v7

    :catchall_68
    move-exception p1

    goto :goto_79

    :catch_6a
    move-exception p1

    :try_start_6b
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_68

    if-eqz v1, :cond_78

    :try_start_70
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_78

    :catch_74
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_78
    :goto_78
    return v0

    :goto_79
    if-eqz v1, :cond_83

    :try_start_7b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_83

    :catch_7f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_83
    :goto_83
    throw p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const-class v0, Ljava/lang/String;

    :try_start_2
    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/e/h;->a()Ldalvik/system/DexClassLoader;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "Y29tLnVuaWNvbS54aWFvd28ubG9naW5jb3JlLlVuaUF1dGhIZWxwZXI="

    invoke-static {v3}, Lcom/unikuwei/mianmi/account/shield/e/l;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "init"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v8, 0x2

    aput-object v0, v6, v8

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v7

    aput-object p3, v1, v8

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_42} :catch_43

    goto :goto_4a

    :catch_43
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/h;->d(Landroid/content/Context;)V

    :goto_4a
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;IILcom/unikuwei/mianmi/account/shield/ResultListener;)V
    .registers 10

    const-string v0, "operatorType"

    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/g;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p3, v2, :cond_5f

    if-eqz v1, :cond_5f

    :try_start_b
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "resultCode"

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "resultMsg"

    const-string v2, "调用成功"

    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "msgId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unikuwei/mianmi/account/shield/e/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p3, 0x0

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "resultData"

    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "CU"

    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p2}, Lcom/unikuwei/mianmi/account/shield/ResultListener;->onResult(Ljava/lang/String;)V

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/e/g;->k()Z

    move-result p2

    if-nez p2, :cond_5e

    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/g;->a(Landroid/content/Context;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    new-instance v0, Lcom/unikuwei/mianmi/account/shield/c/a;

    invoke-direct {v0}, Lcom/unikuwei/mianmi/account/shield/c/a;-><init>()V

    new-instance v1, Lcom/unikuwei/mianmi/account/shield/c/c$1;

    invoke-direct {v1, p0, p4}, Lcom/unikuwei/mianmi/account/shield/c/c$1;-><init>(Lcom/unikuwei/mianmi/account/shield/c/c;Lcom/unikuwei/mianmi/account/shield/ResultListener;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Landroid/content/Context;IILcom/unikuwei/mianmi/account/shield/c/a$a;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-direct {p0, p1}, Lcom/unikuwei/mianmi/account/shield/c/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, p2, p3}, Lcom/unikuwei/mianmi/account/shield/c/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_a
    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/h;->d(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_12
    return-void
.end method

.method public a(Z)V
    .registers 2

    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/f;->a(Z)V

    return-void
.end method
