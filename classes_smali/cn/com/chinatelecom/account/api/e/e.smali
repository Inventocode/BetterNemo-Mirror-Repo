.class public final Lcn/com/chinatelecom/account/api/e/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:J

.field private r:J

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Ljava/lang/StringBuffer;

.field private v:J

.field private w:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/com/chinatelecom/account/api/e/e;->r:J

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/e/e;->u:Ljava/lang/StringBuffer;

    const-string v0, ""

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/e/e;->c:Ljava/lang/String;

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/e/e;->e:Ljava/lang/String;

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/e/e;->n:Ljava/lang/String;

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/e/e;->m:Ljava/lang/String;

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/e/e;->p:Ljava/lang/String;

    const-string v1, "1.2"

    iput-object v1, p0, Lcn/com/chinatelecom/account/api/e/e;->a:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcn/com/chinatelecom/account/api/e/e;->v:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcn/com/chinatelecom/account/api/e/e;->b(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/chinatelecom/account/api/e/e;->b:Ljava/lang/String;

    sget-object v1, Lcn/com/chinatelecom/account/api/CtAuth;->mAppId:Ljava/lang/String;

    iput-object v1, p0, Lcn/com/chinatelecom/account/api/e/e;->d:Ljava/lang/String;

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/e/e;->f:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/e/e;->g:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/e/e;->h:Ljava/lang/String;

    const-string v0, "Android"

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/e/e;->i:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/e/e;->j:Ljava/lang/String;

    invoke-static {}, Lcn/com/chinatelecom/account/api/ClientUtils;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/e/e;->k:Ljava/lang/String;

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/e/e;->l:Ljava/lang/String;

    const-string p1, "0"

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/e/e;->s:Ljava/lang/String;

    return-void
.end method

.method private static b(J)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-object p0

    :catchall_13
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final a(I)Lcn/com/chinatelecom/account/api/e/e;
    .registers 2

    iput p1, p0, Lcn/com/chinatelecom/account/api/e/e;->o:I

    return-object p0
.end method

.method public final a(J)Lcn/com/chinatelecom/account/api/e/e;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_8

    iput-wide p1, p0, Lcn/com/chinatelecom/account/api/e/e;->q:J

    :cond_8
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;
    .registers 2

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/e/e;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/e/e;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)Lcn/com/chinatelecom/account/api/e/e;
    .registers 2

    iput p1, p0, Lcn/com/chinatelecom/account/api/e/e;->t:I

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;
    .registers 2

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/e/e;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final b()V
    .registers 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/com/chinatelecom/account/api/e/e;->w:J

    iget-wide v2, p0, Lcn/com/chinatelecom/account/api/e/e;->r:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_13

    iget-wide v2, p0, Lcn/com/chinatelecom/account/api/e/e;->v:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcn/com/chinatelecom/account/api/e/e;->r:J

    :cond_13
    return-void
.end method

.method public final c(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;
    .registers 2

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/e/e;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;
    .registers 2

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/e/e;->n:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;
    .registers 2

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/e/e;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/e/e;->s:Ljava/lang/String;

    :cond_8
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/e/e;->u:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "v"

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/e/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "t"

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/e/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tag"

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/e/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ai"

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/e/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "di"

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/e/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ns"

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/e/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "br"

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/e/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ml"

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/e/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os"

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/e/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ov"

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/e/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sv"

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/e/e;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ri"

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/e/e;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "api"

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/e/e;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "p"

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/e/e;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rt"

    iget v2, p0, Lcn/com/chinatelecom/account/api/e/e;->o:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "msg"

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/e/e;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "st"

    iget-wide v2, p0, Lcn/com/chinatelecom/account/api/e/e;->q:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "tt"

    iget-wide v2, p0, Lcn/com/chinatelecom/account/api/e/e;->r:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "ot"

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/e/e;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rec"

    iget v2, p0, Lcn/com/chinatelecom/account/api/e/e;->t:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ep"

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/e/e;->u:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a0
    .catchall {:try_start_0 .. :try_end_a0} :catchall_a1

    return-object v0

    :catchall_a1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method
