.class public final Lokhttp3/JavaNetAuthenticator;
.super Ljava/lang/Object;
.source "JavaNetAuthenticator.java"

# interfaces
.implements Lokhttp3/Authenticator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConnectToInetAddress(Ljava/net/Proxy;Lokhttp3/HttpUrl;)Ljava/net/InetAddress;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_15

    .line 69
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_15

    .line 70
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    goto :goto_1d

    .line 71
    :cond_15
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    :goto_1d
    return-object p1
.end method


# virtual methods
.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 33
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->challenges()Ljava/util/List;

    move-result-object v1

    .line 34
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    .line 36
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x197

    if-ne v4, v6, :cond_19

    const/4 v4, 0x1

    goto :goto_1a

    :cond_19
    const/4 v4, 0x0

    .line 37
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v6

    .line 39
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    :goto_22
    if-ge v5, v7, :cond_b4

    .line 40
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lokhttp3/Challenge;

    .line 41
    invoke-virtual {v8}, Lokhttp3/Challenge;->scheme()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Basic"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_38

    goto/16 :goto_b0

    :cond_38
    if-eqz v4, :cond_63

    .line 45
    invoke-virtual {v6}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v9

    check-cast v9, Ljava/net/InetSocketAddress;

    .line 47
    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v6, v3}, Lokhttp3/JavaNetAuthenticator;->getConnectToInetAddress(Ljava/net/Proxy;Lokhttp3/HttpUrl;)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v12

    .line 48
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Lokhttp3/Challenge;->realm()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Lokhttp3/Challenge;->scheme()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v16

    sget-object v17, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 46
    invoke-static/range {v10 .. v17}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v9

    goto :goto_85

    .line 52
    :cond_63
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v6, v3}, Lokhttp3/JavaNetAuthenticator;->getConnectToInetAddress(Ljava/net/Proxy;Lokhttp3/HttpUrl;)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->port()I

    move-result v12

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v13

    .line 53
    invoke-virtual {v8}, Lokhttp3/Challenge;->realm()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Lokhttp3/Challenge;->scheme()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v16

    sget-object v17, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 51
    invoke-static/range {v10 .. v17}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v9

    :goto_85
    if-eqz v9, :cond_b0

    .line 58
    invoke-virtual {v9}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8}, Lokhttp3/Challenge;->charset()Ljava/nio/charset/Charset;

    move-result-object v5

    .line 57
    invoke-static {v1, v3, v5}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    if-eqz v4, :cond_a5

    const-string v3, "Proxy-Authorization"

    goto :goto_a7

    :cond_a5
    const-string v3, "Authorization"

    .line 60
    :goto_a7
    invoke-virtual {v2, v3, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    return-object v1

    :cond_b0
    :goto_b0
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_22

    :cond_b4
    const/4 v1, 0x0

    return-object v1
.end method
