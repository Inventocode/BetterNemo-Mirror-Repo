.class public Lcom/tencent/open/utils/h;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/lang/String; = "openSDK_LOG.OpenApiProviderUtils"

.field private static b:Ljava/lang/String; = "com.tencent.mobileqq.openapi.provider"

.field private static c:Ljava/lang/String; = "com.tencent.tim.openapi.provider"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_26

    if-eqz p2, :cond_26

    if-nez p1, :cond_8

    goto :goto_26

    :cond_8
    const-string v1, "com.tencent.mobileqq"

    .line 45
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 46
    sget-object p2, Lcom/tencent/open/utils/h;->b:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/tencent/open/utils/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    const-string v1, "com.tencent.tim"

    .line 47
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 48
    sget-object p2, Lcom/tencent/open/utils/h;->c:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/tencent/open/utils/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    :goto_26
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_24

    :cond_a
    const-string v1, "\\."

    .line 121
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 122
    array-length v1, p0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_15

    return v0

    .line 125
    :cond_15
    array-length v1, p0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_22

    aget-object v3, p0, v2

    .line 127
    :try_start_1b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1e} :catch_21

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :catch_21
    return v0

    :cond_22
    const/4 p0, 0x1

    return p0

    :cond_24
    :goto_24
    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 75
    invoke-static {p0, p1, p2}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_f

    .line 77
    sget-object p0, Lcom/tencent/open/utils/h;->a:Ljava/lang/String;

    const-string p2, "queryTargetAppVersion null"

    invoke-static {p0, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 80
    :cond_f
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-gtz p2, :cond_1d

    .line 81
    sget-object p0, Lcom/tencent/open/utils/h;->a:Ljava/lang/String;

    const-string p2, "queryTargetAppVersion empty"

    invoke-static {p0, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 85
    :cond_1d
    :try_start_1d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p2, 0x0

    .line 86
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 88
    sget-object p0, Lcom/tencent/open/utils/h;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {p2}, Lcom/tencent/open/utils/h;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_45

    return-object p2

    :cond_45
    const-string p0, "UNKNOWN"
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_47} :catch_48

    return-object p0

    :catch_48
    move-exception p0

    .line 98
    sget-object p2, Lcom/tencent/open/utils/h;->a:Ljava/lang/String;

    const-string v0, "queryTargetAppVersion exception: "

    invoke-static {p2, v0, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "query_app_version"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "appid"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "pkgName"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 p0, 0x0

    new-array v2, p0, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 113
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
