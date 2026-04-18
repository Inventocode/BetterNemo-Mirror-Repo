.class final Lorg/conscrypt/ApplicationProtocolSelectorAdapter;
.super Ljava/lang/Object;
.source "ApplicationProtocolSelectorAdapter.java"


# static fields
.field private static final NO_PROTOCOL_SELECTED:I = -0x1


# instance fields
.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private final selector:Lorg/conscrypt/ApplicationProtocolSelector;

.field private final socket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/conscrypt/ApplicationProtocolSelector;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "engine"

    .line 37
    invoke-static {p1, v0}, Lorg/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLEngine;

    iput-object p1, p0, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;->engine:Ljavax/net/ssl/SSLEngine;

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;->socket:Ljavax/net/ssl/SSLSocket;

    const-string p1, "selector"

    .line 39
    invoke-static {p2, p1}, Lorg/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/conscrypt/ApplicationProtocolSelector;

    iput-object p1, p0, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;->selector:Lorg/conscrypt/ApplicationProtocolSelector;

    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLSocket;Lorg/conscrypt/ApplicationProtocolSelector;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;->engine:Ljavax/net/ssl/SSLEngine;

    const-string v0, "socket"

    .line 44
    invoke-static {p1, v0}, Lorg/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    iput-object p1, p0, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;->socket:Ljavax/net/ssl/SSLSocket;

    const-string p1, "selector"

    .line 45
    invoke-static {p2, p1}, Lorg/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/conscrypt/ApplicationProtocolSelector;

    iput-object p1, p0, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;->selector:Lorg/conscrypt/ApplicationProtocolSelector;

    return-void
.end method


# virtual methods
.method selectApplicationProtocol([B)I
    .registers 7

    const/4 v0, -0x1

    if-eqz p1, :cond_4b

    .line 56
    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_4b

    .line 61
    :cond_7
    invoke-static {p1}, Lorg/conscrypt/SSLUtils;->decodeProtocols([B)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 65
    iget-object v1, p0, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;->engine:Ljavax/net/ssl/SSLEngine;

    if-eqz v1, :cond_1a

    .line 66
    iget-object v2, p0, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;->selector:Lorg/conscrypt/ApplicationProtocolSelector;

    invoke-virtual {v2, v1, p1}, Lorg/conscrypt/ApplicationProtocolSelector;->selectApplicationProtocol(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    .line 68
    :cond_1a
    iget-object v1, p0, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;->selector:Lorg/conscrypt/ApplicationProtocolSelector;

    iget-object v2, p0, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1, v2, p1}, Lorg/conscrypt/ApplicationProtocolSelector;->selectApplicationProtocol(Ljavax/net/ssl/SSLSocket;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    :goto_22
    if-eqz v1, :cond_4b

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_4b

    :cond_2b
    const/4 v2, 0x0

    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    return v2

    .line 83
    :cond_43
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    goto :goto_30

    :cond_4b
    :goto_4b
    return v0
.end method
