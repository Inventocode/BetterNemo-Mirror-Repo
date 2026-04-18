.class public Lcom/sdk/l/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "com.sdk.l.a"

.field public static final b:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/sdk/f/c;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/l/a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale",
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdk/n/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_67

    if-eqz p0, :cond_5b

    :try_start_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_5a

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1b

    :try_start_16
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_1b
    .catchall {:try_start_16 .. :try_end_1a} :catchall_5a

    goto :goto_21

    :catch_1b
    :cond_1b
    :try_start_1b
    const-string p0, "http.agent"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2c
    if-ge v4, v2, :cond_54

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x1f

    if-le v5, v6, :cond_3f

    const/16 v6, 0x7f

    if-lt v5, v6, :cond_3b

    goto :goto_3f

    :cond_3b
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_51

    :cond_3f
    :goto_3f
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v3

    const-string v5, "\\u%04x"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_58
    .catchall {:try_start_1b .. :try_end_58} :catchall_5a

    move-object v0, p0

    goto :goto_5b

    :catchall_5a
    nop

    :cond_5b
    :goto_5b
    invoke-static {v0}, Lcom/sdk/n/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_67

    const-string v0, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 %sSafari/533.1"

    :cond_67
    return-object v0
.end method

.method public static a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const-string v1, "GBK"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_46

    const/16 p0, 0x22

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_3a

    goto :goto_47

    :catchall_3a
    move-exception p0

    sget-object v0, Lcom/sdk/l/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/sdk/l/a;->b:Ljava/lang/Boolean;

    invoke-static {v0, p0, v1}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_46
    const/4 p0, 0x0

    :goto_47
    return-object p0
.end method
