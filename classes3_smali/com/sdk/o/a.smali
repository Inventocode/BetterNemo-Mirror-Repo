.class public Lcom/sdk/o/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "com.sdk.o.a"

.field public static final b:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/sdk/f/c;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/o/a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/sdk/o/b$b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/sdk/o/b$b;"
        }
    .end annotation

    sget-object v0, Lcom/sdk/o/b$b;->c:Lcom/sdk/o/b$b;

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_40

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MOBILE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object p0, Lcom/sdk/o/b$b;->b:Lcom/sdk/o/b$b;

    :goto_27
    move-object v0, p0

    goto :goto_40

    :cond_29
    const-string v1, "WIFI"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_40

    sget-object p0, Lcom/sdk/o/b$b;->a:Lcom/sdk/o/b$b;
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_34

    goto :goto_27

    :catchall_34
    move-exception p0

    sget-object v1, Lcom/sdk/o/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/sdk/o/a;->b:Ljava/lang/Boolean;

    invoke-static {v1, p0, v2}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_40
    :goto_40
    return-object v0
.end method
