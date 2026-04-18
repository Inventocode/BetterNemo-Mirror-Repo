.class public Lcom/tencent/smtt/sdk/TbsLogReport;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/TbsLogReport$a;,
        Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;,
        Lcom/tencent/smtt/sdk/TbsLogReport$EventType;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/smtt/sdk/TbsLogReport;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/content/Context;

.field private d:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->d:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "TbsLogReportThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/tencent/smtt/sdk/TbsLogReport$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/tencent/smtt/sdk/TbsLogReport$1;-><init>(Lcom/tencent/smtt/sdk/TbsLogReport;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(J)Ljava/lang/String;
    .registers 6

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    const/4 p1, 0x0

    :goto_16
    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_9

    const-string p1, ""

    :cond_9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()Lorg/json/JSONArray;
    .registers 6

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tbs_download_upload"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_40

    :cond_13
    :try_start_13
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_39

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-le v3, v4, :cond_39

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_38} :catch_3b

    return-object v0

    :cond_39
    move-object v0, v1

    goto :goto_40

    :catch_3b
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_40
    return-object v0
.end method

.method private a(ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/utils/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :try_start_39
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "ISO8859-1"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_46} :catch_48

    move-object v1, v2

    goto :goto_49

    :catch_48
    nop

    :goto_49
    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.tencent.mm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    const-string v2, "com.tencent.mm.BuildInfo.CLIENT_VERSION"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7c

    :cond_72
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/utils/b;->d(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->a(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->b(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->c(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->d(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->e(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->f(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->g(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->h(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->i(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->j(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->k(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->l(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->m(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->n(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->a:I

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->o(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->p(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p2

    iget-object p2, p2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_version"

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/smtt/utils/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "4.3.0.67_43967"

    invoke-direct {p0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->d()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a()Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_19b

    const/4 v3, 0x4

    :goto_180
    const/4 v4, 0x1

    if-lt v3, v4, :cond_19a

    :try_start_183
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_18f} :catch_190

    goto :goto_197

    :catch_190
    const-string v4, "upload"

    const-string v5, "JSONArray transform error!"

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_197
    add-int/lit8 v3, v3, -0x1

    goto :goto_180

    :cond_19a
    move-object v1, v2

    :cond_19b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tbs_download_upload"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-boolean p2, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->d:Z

    if-nez p2, :cond_1bc

    sget-object p2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_LOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    iget p2, p2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->a:I

    if-eq p1, p2, :cond_1bf

    :cond_1bc
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->b()V

    :cond_1bf
    return-void
.end method

.method private a(ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V
    .registers 6

    invoke-virtual {p2, p1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setEventTime(J)V

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/sdk/TbsListener;->onInstallFinish(I)V

    invoke-virtual {p0, p3, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/TbsLogReport;)V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/TbsLogReport;ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    return-void
.end method

.method private b(J)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .registers 6

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    if-eqz v0, :cond_22

    const-string v1, "SET_SENDREQUEST_AND_UPLOAD"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "upload"

    const-string v1, "[TbsLogReport.sendLogReportRequest] -- SET_SENDREQUEST_AND_UPLOAD is false"

    :goto_1e
    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    const-string v0, "TbsDownload"

    const-string v1, "[TbsApkDownloadStat.reportDownloadStat]"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_8b

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_36

    goto :goto_8b

    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsApkDownloadStat.reportDownloadStat] jsonArray:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4a
    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/utils/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/utils/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/utils/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "utf-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v3, Lcom/tencent/smtt/sdk/TbsLogReport$3;

    invoke-direct {v3, p0}, Lcom/tencent/smtt/sdk/TbsLogReport$3;-><init>(Lcom/tencent/smtt/sdk/TbsLogReport;)V

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v4}, Lcom/tencent/smtt/utils/f;->a(Ljava/lang/String;[BLcom/tencent/smtt/utils/f$a;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsApkDownloadStat.reportDownloadStat] response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " testcase: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_4a .. :try_end_85} :catchall_86

    goto :goto_8a

    :catchall_86
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8a
    return-void

    :cond_8b
    :goto_8b
    const-string v1, "[TbsApkDownloadStat.reportDownloadStat] no data"

    goto :goto_1e
.end method

.method static synthetic b(Lcom/tencent/smtt/sdk/TbsLogReport;)V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->c()V

    return-void
.end method

.method private c()V
    .registers 3

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tbs_download_upload"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private d()Landroid/content/SharedPreferences;
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    const-string v1, "tbs_download_stat"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;
    .registers 3

    sget-object v0, Lcom/tencent/smtt/sdk/TbsLogReport;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    if-nez v0, :cond_17

    const-class v0, Lcom/tencent/smtt/sdk/TbsLogReport;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/tencent/smtt/sdk/TbsLogReport;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    if-nez v1, :cond_12

    new-instance v1, Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/TbsLogReport;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/smtt/sdk/TbsLogReport;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/tencent/smtt/sdk/TbsLogReport;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .registers 2

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method

.method public dailyReport()V
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->b:Landroid/os/Handler;

    const/16 v1, 0x259

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V
    .registers 5

    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x258

    iput v1, v0, Landroid/os/Message;->what:I

    iget p1, p1, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->a:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    goto :goto_37

    :catchall_1c
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[TbsLogReport.eventReport] error, message="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "upload"

    invoke-static {p2, p1}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_37
    return-void
.end method

.method public getShouldUploadEventReport()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->d:Z

    return v0
.end method

.method public reportTbsLog()V
    .registers 12

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    if-eqz v0, :cond_22

    const-string v1, "SET_SENDREQUEST_AND_UPLOAD"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "upload"

    const-string v1, "[TbsLogReport.reportTbsLog] -- SET_SENDREQUEST_AND_UPLOAD is false"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2c

    return-void

    :cond_2c
    invoke-static {}, Lcom/tencent/smtt/utils/TbsLog;->getTbsLogFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_33

    return-void

    :cond_33
    invoke-static {}, Lcom/tencent/smtt/utils/g;->a()Lcom/tencent/smtt/utils/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/g;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/utils/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    :try_start_4f
    invoke-static {}, Lcom/tencent/smtt/utils/g;->a()Lcom/tencent/smtt/utils/g;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/tencent/smtt/utils/g;->a([B)[B

    move-result-object v2

    invoke-static {}, Lcom/tencent/smtt/utils/g;->a()Lcom/tencent/smtt/utils/g;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tencent/smtt/utils/g;->a([B)[B

    move-result-object v3
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5f} :catch_5f

    :catch_5f
    invoke-static {v2}, Lcom/tencent/smtt/utils/g;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/tencent/smtt/utils/g;->b([B)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/utils/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/utils/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/smtt/utils/m;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&aid="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Content-Type"

    const-string v5, "application/octet-stream"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Charset"

    const-string v5, "UTF-8"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/utils/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "QUA2"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_a8
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/tencent/smtt/utils/FileUtil;->a:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/tencent/smtt/sdk/TbsLogReport$a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/tencent/smtt/utils/FileUtil;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/tbslog_temp.zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/tencent/smtt/sdk/TbsLogReport$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/TbsLogReport$a;->a()V

    new-instance v0, Ljava/io/File;

    sget-object v6, Lcom/tencent/smtt/utils/FileUtil;->a:Ljava/lang/String;

    const-string v7, "tbslog_temp.zip"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_d3} :catch_117
    .catchall {:try_start_a8 .. :try_end_d3} :catchall_113

    :try_start_d3
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d8} :catch_110
    .catchall {:try_start_d3 .. :try_end_d8} :catchall_10d

    const/16 v7, 0x2000

    :try_start_da
    new-array v7, v7, [B

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e1} :catch_10a
    .catchall {:try_start_da .. :try_end_e1} :catchall_107

    :goto_e1
    :try_start_e1
    invoke-virtual {v6, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_ec

    invoke-virtual {v8, v7, v4, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e1

    :cond_ec
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-static {}, Lcom/tencent/smtt/utils/g;->a()Lcom/tencent/smtt/utils/g;

    move-result-object v7

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/tencent/smtt/utils/g;->a([B)[B

    move-result-object v5
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_fb} :catch_105
    .catchall {:try_start_e1 .. :try_end_fb} :catchall_14c

    :try_start_fb
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_fe} :catch_fe

    :catch_fe
    :try_start_fe
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_101} :catch_101

    :catch_101
    :goto_101
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_12f

    :catch_105
    move-exception v7

    goto :goto_11b

    :catchall_107
    move-exception v1

    move-object v8, v5

    goto :goto_14d

    :catch_10a
    move-exception v7

    move-object v8, v5

    goto :goto_11b

    :catchall_10d
    move-exception v1

    move-object v8, v5

    goto :goto_14e

    :catch_110
    move-exception v7

    move-object v6, v5

    goto :goto_11a

    :catchall_113
    move-exception v1

    move-object v0, v5

    move-object v8, v0

    goto :goto_14e

    :catch_117
    move-exception v7

    move-object v0, v5

    move-object v6, v0

    :goto_11a
    move-object v8, v6

    :goto_11b
    :try_start_11b
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11e
    .catchall {:try_start_11b .. :try_end_11e} :catchall_14c

    if-eqz v6, :cond_125

    :try_start_120
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_123} :catch_124

    goto :goto_125

    :catch_124
    nop

    :cond_125
    :goto_125
    if-eqz v8, :cond_12c

    :try_start_127
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12a} :catch_12b

    goto :goto_12c

    :catch_12b
    nop

    :cond_12c
    :goto_12c
    if-eqz v0, :cond_12f

    goto :goto_101

    :cond_12f
    :goto_12f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&ek="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/smtt/sdk/TbsLogReport$2;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/TbsLogReport$2;-><init>(Lcom/tencent/smtt/sdk/TbsLogReport;)V

    invoke-static {v0, v3, v5, v1, v4}, Lcom/tencent/smtt/utils/f;->a(Ljava/lang/String;Ljava/util/Map;[BLcom/tencent/smtt/utils/f$a;Z)Ljava/lang/String;

    return-void

    :catchall_14c
    move-exception v1

    :goto_14d
    move-object v5, v6

    :goto_14e
    if-eqz v5, :cond_155

    :try_start_150
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_153} :catch_154

    goto :goto_155

    :catch_154
    nop

    :cond_155
    :goto_155
    if-eqz v8, :cond_15c

    :try_start_157
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_15a} :catch_15b

    goto :goto_15c

    :catch_15b
    nop

    :cond_15c
    :goto_15c
    if-eqz v0, :cond_161

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_161
    throw v1
.end method

.method public setInstallErrorCode(ILjava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_INSTALL:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V

    return-void
.end method

.method public setInstallErrorCode(ILjava/lang/String;Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V
    .registers 7

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_23

    const/16 v0, 0xdc

    if-eq p1, v0, :cond_23

    const/16 v0, 0xdd

    if-eq p1, v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error occured in installation, errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "TbsDownload"

    invoke-static {v2, v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_23
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V

    return-void
.end method

.method public setInstallErrorCode(ILjava/lang/Throwable;)V
    .registers 4

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/Throwable;)V

    sget-object p2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_INSTALL:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V

    return-void
.end method

.method public setLoadErrorCode(ILjava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setEventTime(J)V

    invoke-virtual {v0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    sget-object p1, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_LOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    return-void
.end method

.method public setLoadErrorCode(ILjava/lang/Throwable;)V
    .registers 5

    if-eqz p2, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; err: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_3f

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_3f

    :cond_3d
    const-string p2, "NULL"

    :cond_3f
    :goto_3f
    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setLoadErrorCode(ILjava/lang/String;)V

    return-void
.end method

.method public setShouldUploadEventReport(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->d:Z

    return-void
.end method

.method public tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;
    .registers 3

    new-instance v0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;-><init>(Lcom/tencent/smtt/sdk/TbsLogReport$1;)V

    return-object v0
.end method
