.class public Lcom/tencent/open/b/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://telephony/carriers/preferapn"

    .line 91
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/b/a;->a:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 133
    invoke-static {p0}, Lcom/tencent/open/b/a;->d(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    const-string p0, "wifi"

    return-object p0

    :cond_a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    const-string p0, "cmwap"

    return-object p0

    :cond_10
    const/4 v1, 0x4

    if-ne v0, v1, :cond_16

    const-string p0, "cmnet"

    return-object p0

    :cond_16
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1d

    const-string p0, "uniwap"

    return-object p0

    :cond_1d
    const/16 v1, 0x8

    if-ne v0, v1, :cond_24

    const-string p0, "uninet"

    return-object p0

    :cond_24
    const/16 v1, 0x40

    if-ne v0, v1, :cond_2b

    const-string p0, "wap"

    return-object p0

    :cond_2b
    const/16 v1, 0x20

    if-ne v0, v1, :cond_32

    const-string p0, "net"

    return-object p0

    :cond_32
    const/16 v1, 0x200

    if-ne v0, v1, :cond_39

    const-string p0, "ctwap"

    return-object p0

    :cond_39
    const/16 v1, 0x100

    if-ne v0, v1, :cond_40

    const-string p0, "ctnet"

    return-object p0

    :cond_40
    const/16 v1, 0x800

    if-ne v0, v1, :cond_47

    const-string p0, "3gnet"

    return-object p0

    :cond_47
    const/16 v1, 0x400

    if-ne v0, v1, :cond_4e

    const-string p0, "3gwap"

    return-object p0

    .line 159
    :cond_4e
    invoke-static {p0}, Lcom/tencent/open/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5c

    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5b

    goto :goto_5c

    :cond_5b
    return-object p0

    :cond_5c
    :goto_5c
    const-string p0, "none"

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 261
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/tencent/open/b/a;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_12

    return-object v0

    .line 266
    :cond_12
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 267
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 269
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_1f
    const-string v0, "proxy"

    .line 273
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_2c} :catch_2d

    return-object v0

    :catch_2d
    move-exception p0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApnProxy has exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "openSDK_LOG.APNUtil"

    invoke-static {v0, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static d(Landroid/content/Context;)I
    .registers 6

    const/16 v0, 0x80

    .line 368
    :try_start_2
    invoke-static {p0}, Lcom/tencent/open/b/a;->e(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_9

    return v0

    .line 372
    :cond_9
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 p0, 0x2

    return p0

    .line 376
    :cond_1b
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cmwap"

    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    const-string v2, "cmnet"

    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ac

    const-string v2, "epc.tmobile.com"

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_ac

    :cond_3e
    const-string v2, "uniwap"

    .line 382
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    const/16 p0, 0x10

    return p0

    :cond_49
    const-string v2, "uninet"

    .line 384
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    const/16 p0, 0x8

    return p0

    :cond_54
    const-string v2, "wap"

    .line 386
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/16 p0, 0x40

    return p0

    :cond_5f
    const-string v2, "net"

    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    const/16 p0, 0x20

    return p0

    :cond_6a
    const-string v2, "ctwap"

    .line 390
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x200

    if-eqz v2, :cond_75

    return v3

    :cond_75
    const-string v2, "ctnet"

    .line 392
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v4, 0x100

    if-eqz v2, :cond_80

    return v4

    :cond_80
    const-string v2, "3gwap"

    .line 394
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/16 p0, 0x400

    return p0

    :cond_8b
    const-string v2, "3gnet"

    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    const/16 p0, 0x800

    return p0

    :cond_96
    const-string v2, "#777"

    .line 399
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 400
    invoke-static {p0}, Lcom/tencent/open/b/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_ab

    .line 401
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a8} :catch_ae

    if-lez p0, :cond_ab

    return v3

    :cond_ab
    return v4

    :cond_ac
    :goto_ac
    const/4 p0, 0x4

    return p0

    :catch_ae
    move-exception p0

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMProxyType has exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "openSDK_LOG.APNUtil"

    invoke-static {v1, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c9
    return v0
.end method

.method static e(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "connectivity"

    .line 483
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 484
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    return-object v0
.end method
