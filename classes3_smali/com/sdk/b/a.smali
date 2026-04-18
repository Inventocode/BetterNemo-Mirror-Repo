.class public Lcom/sdk/b/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "a"

.field public static b:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/sdk/f/c;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/b/a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    sget-object v0, Lcom/sdk/l/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_3
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_17

    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_17

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_31
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_31} :catch_32

    goto :goto_33

    :catch_32
    :cond_32
    move-object v1, v0

    :goto_33
    invoke-static {v1}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_55

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessCode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_55
    return-object v0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->useCache()Z

    move-result v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    invoke-static {p1, p2}, Lcom/sdk/b/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-static {p0, p2}, Lcom/sdk/j/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9a

    invoke-static {p0}, Lcom/sdk/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Lcom/sdk/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sdk/s/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_9a

    const/4 v1, 0x1

    :try_start_31
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "exp"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_40} :catch_47

    cmp-long v6, v2, v4

    if-gez v6, :cond_45

    goto :goto_60

    :cond_45
    const/4 v2, 0x0

    goto :goto_61

    :catch_47
    move-exception v2

    :try_start_48
    sget-object v3, Lcom/sdk/s/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "out data error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/sdk/s/a;->b:Ljava/lang/Boolean;

    invoke-static {v3, v2, v4}, Lcom/sdk/n/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :goto_60
    const/4 v2, 0x1

    :goto_61
    if-nez v2, :cond_91

    sget-object v2, Lcom/sdk/b/a;->a:Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_65} :catch_9a

    const-string v3, "can use cache"

    :try_start_67
    sget-object v4, Lcom/sdk/b/a;->b:Ljava/lang/Boolean;

    invoke-static {v2, v3, v4}, Lcom/sdk/n/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-ne p1, v1, :cond_78

    const-string p0, "fakeMobile"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_78
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_91
    sget-object p0, Lcom/sdk/b/a;->a:Ljava/lang/String;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_93} :catch_9a

    const-string p1, "OutDate cache invalid"

    :try_start_95
    sget-object p2, Lcom/sdk/b/a;->b:Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lcom/sdk/n/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_9a} :catch_9a

    :catch_9a
    :cond_9a
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->useCache()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {p2}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p1, p3}, Lcom/sdk/b/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_22

    invoke-static {p0, p1, p2}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_22
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method
