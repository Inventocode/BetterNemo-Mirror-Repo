.class public Lcom/sdk/a/a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "com.sdk.a.a"

.field public static d:Ljava/lang/Boolean;

.field public static e:Landroid/net/Network;

.field public static f:Z


# instance fields
.field public a:Ljava/net/HttpURLConnection;

.field public b:Landroid/net/ConnectivityManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/sdk/f/c;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/a/a;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/URL;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/sdk/a/a;->b:Landroid/net/ConnectivityManager;

    :try_start_d
    sget-object p1, Lcom/sdk/a/a;->e:Landroid/net/Network;

    if-eqz p1, :cond_1e

    sget-boolean v0, Lcom/sdk/a/a;->f:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_2a

    if-nez v0, :cond_1e

    :try_start_15
    invoke-virtual {p1, p2}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/sdk/a/a;->a:Ljava/net/HttpURLConnection;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_2a

    :catch_1d
    return-void

    :cond_1e
    const/4 p1, 0x0

    :try_start_1f
    sput-boolean p1, Lcom/sdk/a/a;->f:Z

    new-instance p1, Lcom/sdk/a/a$a;

    invoke-direct {p1, p0, p2}, Lcom/sdk/a/a$a;-><init>(Lcom/sdk/a/a;Ljava/net/URL;)V

    invoke-virtual {p0, p1}, Lcom/sdk/a/a;->a(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_29} :catch_2a

    goto :goto_36

    :catch_2a
    move-exception p1

    sget-object p2, Lcom/sdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sdk/a/a;->d:Ljava/lang/Boolean;

    invoke-static {p2, p1, v0}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :goto_36
    return-void
.end method


# virtual methods
.method public a()Ljava/net/HttpURLConnection;
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-lez v6, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/sdk/a/a;->a:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_4

    return-object v2

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 4

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/sdk/a/a;->b:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_19

    invoke-virtual {v1, v0, p1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_19
    return-void
.end method
