.class public Lcom/umeng/tunnel/UMChannelAgent;
.super Ljava/lang/Object;
.source "UMChannelAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UMChannelAgent"

.field private static final UMENG_VCHANNEL:Ljava/lang/String; = "com.umeng.commonsdk.vchannel.Sender"

.field private static vChannelReady:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    :try_start_0
    sget-object v0, Lcom/umeng/commonsdk/vchannel/Sender;->VCHANNEL_VERSION:Ljava/lang/String;

    const/4 v0, 0x1

    .line 24
    sput-boolean v0, Lcom/umeng/tunnel/UMChannelAgent;->vChannelReady:Z
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()Z
    .registers 2

    .line 77
    sget-boolean v0, Lcom/umeng/tunnel/UMChannelAgent;->vChannelReady:Z

    if-nez v0, :cond_b

    const-string v0, "UMChannelAgent"

    const-string v1, "--->>> Umeng tunnel module depends on common library, please integrate common first."

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_b
    sget-boolean v0, Lcom/umeng/tunnel/UMChannelAgent;->vChannelReady:Z

    return v0
.end method

.method public static onDebugEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-static {p0, p1, p2}, Lcom/umeng/tunnel/UMChannelAgent;->reflectOnEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static reflectOnEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "UMChannelAgent"

    .line 40
    :try_start_2
    const-class v1, Lcom/umeng/commonsdk/vchannel/Sender;

    sget-object v2, Lcom/umeng/commonsdk/vchannel/Sender;->VCHANNEL_VERSION:Ljava/lang/String;

    const-string v2, "onEvent"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    .line 41
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/util/Map;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object p1, v3, v7

    aput-object p2, v3, v8

    .line 42
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2a} :catch_3d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2a} :catch_37
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2a} :catch_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2b

    goto :goto_42

    :catch_2b
    const-string p0, "--->>> Exception is thrown when onEvent method is called !"

    .line 50
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :catch_31
    const-string p0, "--->>> Security exception is thrown when we find onEvent method !"

    .line 48
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :catch_37
    const-string p0, "--->>> Can not find method onEvent ."

    .line 46
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :catch_3d
    const-string p0, "--->>> Can not find class com.umeng.commonsdk.vchannel.sender ."

    .line 44
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42
    return-void
.end method

.method private static reflectSetCustomHeader(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "UMChannelAgent"

    .line 56
    :try_start_2
    const-class v1, Lcom/umeng/commonsdk/vchannel/Sender;

    sget-object v2, Lcom/umeng/commonsdk/vchannel/Sender;->VCHANNEL_VERSION:Ljava/lang/String;

    const-string v2, "setCustomHeader"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 57
    const-class v5, Ljava/util/Map;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    .line 58
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_1c} :catch_2f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_1c} :catch_29
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_1c} :catch_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_1d

    goto :goto_34

    :catch_1d
    const-string p0, "--->>> Exception is thrown when setCustomHeader method is called !"

    .line 66
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :catch_23
    const-string p0, "--->>> Security exception is thrown when we find setCustomHeader method !"

    .line 64
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :catch_29
    const-string p0, "--->>> Can not find method setCustomHeader ."

    .line 62
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :catch_2f
    const-string p0, "--->>> Can not find class com.umeng.commonsdk.vchannel.sender ."

    .line 60
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-void
.end method

.method public static setCustomHeader(Ljava/util/Map;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-static {p0}, Lcom/umeng/tunnel/UMChannelAgent;->reflectSetCustomHeader(Ljava/util/Map;)V

    return-void
.end method
