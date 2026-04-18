.class public Lcom/sdk/a/c;
.super Lcom/sdk/d/c;

# interfaces
.implements Lcom/sdk/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdk/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sdk/d/c<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/sdk/c/b;"
    }
.end annotation


# static fields
.field public static final x:Lcom/sdk/a/b;

.field public static y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public i:J

.field public j:Lcom/sdk/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/e/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Lcom/sdk/a/c$a;

.field public n:I

.field public p:J

.field public q:Ljava/lang/String;

.field public r:Z

.field public s:Ljava/lang/Boolean;

.field public t:Ljava/lang/Boolean;

.field public u:Ljava/lang/Boolean;

.field public v:Lcom/sdk/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/a/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public w:J


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/sdk/a/b;

    const v1, 0x19000

    const-wide/32 v2, 0xea60

    invoke-direct {v0, v1, v2, v3}, Lcom/sdk/a/b;-><init>(IJ)V

    sput-object v0, Lcom/sdk/a/c;->x:Lcom/sdk/a/b;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/sdk/a/c;->y:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/sdk/a/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sdk/a/d<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sdk/d/c;-><init>()V

    invoke-static {}, Lcom/sdk/a/b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdk/a/c;->i:J

    sget-object v0, Lcom/sdk/a/c$a;->a:Lcom/sdk/a/c$a;

    iput-object v0, p0, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdk/a/c;->q:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdk/a/c;->r:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sdk/a/c;->s:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sdk/a/c;->t:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sdk/a/c;->u:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/sdk/a/d;->a()Lcom/sdk/a/e;

    move-result-object p1

    iput-object p1, p0, Lcom/sdk/a/c;->v:Lcom/sdk/a/e;

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Lcom/sdk/a/e;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sdk/a/c;->k:Ljava/lang/String;

    iget-object p1, p0, Lcom/sdk/a/c;->v:Lcom/sdk/a/e;

    invoke-virtual {p1}, Lcom/sdk/a/e;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sdk/a/c;->l:Ljava/lang/String;

    iget-object p1, p0, Lcom/sdk/a/c;->v:Lcom/sdk/a/e;

    invoke-virtual {p1}, Lcom/sdk/a/e;->c()I

    move-result p1

    iput p1, p0, Lcom/sdk/a/c;->n:I

    iget-object p1, p0, Lcom/sdk/a/c;->v:Lcom/sdk/a/e;

    invoke-virtual {p1}, Lcom/sdk/a/e;->a()Lcom/sdk/e/b;

    move-result-object p1

    iput-object p1, p0, Lcom/sdk/a/c;->j:Lcom/sdk/e/b;

    :cond_41
    return-void
.end method


# virtual methods
.method public final a(Lcom/sdk/a/d;Ljava/net/HttpURLConnection;)Lcom/sdk/a/f;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sdk/a/d<",
            "TT;>;",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Lcom/sdk/a/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "PriorityAsyncTask"

    iget-object v1, p0, Lcom/sdk/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    new-instance p1, Lcom/sdk/a/f;

    const-string p2, "网络访问已取消"

    invoke-direct {p1, v2, p2, v3}, Lcom/sdk/a/f;-><init>(ILjava/lang/Object;Z)V

    return-object p1

    :cond_14
    :try_start_14
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sdk/a/c;->w:J
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_22} :catch_26a

    sub-long/2addr v4, v6

    :try_start_23
    invoke-static {v1}, Lcom/sdk/n/c;->a(Ljava/lang/String;)V

    sget-object v6, Lcom/sdk/n/c;->a:Lcom/sdk/f/a;

    iget-object v6, v6, Lcom/sdk/f/a;->b:Lcom/sdk/f/a$a;

    iget-object v6, v6, Lcom/sdk/f/a$a;->a:Ljava/util/List;

    new-instance v7, Lcom/sdk/f/a$a$a;

    invoke-direct {v7}, Lcom/sdk/f/a$a$a;-><init>()V

    iput-object v1, v7, Lcom/sdk/f/a$a$a;->a:Ljava/lang/String;

    iput-wide v4, v7, Lcom/sdk/f/a$a$a;->b:J

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sdk/n/c;->a:Lcom/sdk/f/a;

    iget-object v1, v1, Lcom/sdk/f/a;->b:Lcom/sdk/f/a$a;

    iput-object v6, v1, Lcom/sdk/f/a$a;->a:Ljava/util/List;
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_3e

    :catchall_3e
    :try_start_3e
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "net请求host："

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n net请求path："

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n  net请求码："

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sdk/d/c;->f:Ljava/lang/Boolean;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_75} :catch_26a

    if-nez v4, :cond_79

    const-string v4, ""

    :cond_79
    :try_start_79
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    iget-object v4, p0, Lcom/sdk/d/c;->f:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c7

    sget-object v4, Lcom/sdk/a/c;->y:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sdk/a/c;->w:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "响应返回：code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";耗时="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/sdk/a/c;->w:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sdk/d/c;->f:Ljava/lang/Boolean;

    invoke-static {v0, v4, v5}, Lcom/sdk/n/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_c7
    const/16 v4, 0x12c

    if-ge v1, v4, :cond_17c

    iget-boolean p1, p0, Lcom/sdk/a/c;->r:Z

    if-eqz p1, :cond_132

    iget-object p1, p0, Lcom/sdk/a/c;->s:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_10a

    sget-object p1, Lcom/sdk/l/a;->a:Ljava/lang/String;

    const-string p1, "Accept-Ranges"

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_e7} :catch_26a

    const-string v4, "bytes"

    if-eqz v1, :cond_f0

    :try_start_eb
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_106

    :cond_f0
    const-string v1, "Content-Range"

    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_105

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_106

    :cond_105
    const/4 p1, 0x0

    :goto_106
    if-eqz p1, :cond_10a

    const/4 p1, 0x1

    goto :goto_10b

    :cond_10a
    const/4 p1, 0x0

    :goto_10b
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sdk/a/c;->s:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/sdk/a/c;->t:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_11e

    invoke-static {p2}, Lcom/sdk/l/a;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1

    goto :goto_11f

    :cond_11e
    const/4 p1, 0x0

    :goto_11f
    move-object v9, p1

    new-instance v4, Lcom/sdk/c/a;

    invoke-direct {v4}, Lcom/sdk/c/a;-><init>()V

    iget-object v7, p0, Lcom/sdk/a/c;->q:Ljava/lang/String;

    iget-object p1, p0, Lcom/sdk/a/c;->s:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move-object v5, p2

    move-object v6, p0

    invoke-virtual/range {v4 .. v9}, Lcom/sdk/c/a;->a(Ljava/net/HttpURLConnection;Lcom/sdk/c/b;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    :cond_132
    iget-object p1, p0, Lcom/sdk/a/c;->u:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_15a

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    :goto_147
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_152

    invoke-virtual {p2, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_147

    :cond_152
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto :goto_176

    :cond_15a
    new-instance p1, Lcom/sdk/c/c;

    invoke-direct {p1}, Lcom/sdk/c/c;-><init>()V

    const-string v1, "UTF-8"

    invoke-virtual {p1, p2, p0, v1}, Lcom/sdk/c/c;->a(Ljava/net/HttpURLConnection;Lcom/sdk/c/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sdk/a/c;->x:Lcom/sdk/a/b;

    iget-object v1, p0, Lcom/sdk/a/c;->k:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/sdk/a/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_176

    iget-object v1, p0, Lcom/sdk/a/c;->l:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sdk/a/c;->i:J

    invoke-virtual {p2, v1, p1, v4, v5}, Lcom/sdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_176
    :goto_176
    new-instance p2, Lcom/sdk/a/f;

    invoke-direct {p2, v3, p1, v3}, Lcom/sdk/a/f;-><init>(ILjava/lang/Object;Z)V

    return-object p2

    :cond_17c
    const/16 v4, 0x12d

    if-eq v1, v4, :cond_184

    const/16 v4, 0x12e

    if-ne v1, v4, :cond_23a

    :cond_184
    const-string v4, "Location"

    invoke-virtual {p2, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Set-Cookie"

    invoke-virtual {p2, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_23a

    iget-object v1, p1, Lcom/sdk/a/d;->b:Lcom/sdk/a/e;

    iput-object v4, v1, Lcom/sdk/a/e;->b:Ljava/lang/String;

    sget-object v1, Lcom/sdk/l/a;->a:Ljava/lang/String;
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_1a8} :catch_26a

    :try_start_1a8
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v6, "\\."

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    const/4 v7, 0x0

    :goto_1b9
    if-ge v7, v6, :cond_1d5

    aget-object v8, v1, v7

    const/4 v9, 0x0

    :goto_1be
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_1d2

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1cc} :catch_1d7

    if-nez v10, :cond_1cf

    goto :goto_1d7

    :cond_1cf
    add-int/lit8 v9, v9, 0x1

    goto :goto_1be

    :cond_1d2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b9

    :cond_1d5
    const/4 v1, 0x1

    goto :goto_1d8

    :catch_1d7
    :goto_1d7
    const/4 v1, 0x0

    :goto_1d8
    if-eqz v1, :cond_1df

    :try_start_1da
    invoke-virtual {p1, v4, v2}, Lcom/sdk/a/d;->a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v1

    goto :goto_1e3

    :cond_1df
    invoke-virtual {p1, v4, v3}, Lcom/sdk/a/d;->a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v1

    :goto_1e3
    invoke-static {v5}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_1eb
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_1eb} :catch_26a

    const-string v6, "ctc"

    const-string v7, "Cookie"

    if-eqz v4, :cond_20b

    :try_start_1f1
    const-string v4, "/ctcnet/gctcmc.do"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_207

    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v6, v5}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_200
    .catch Ljava/lang/Exception; {:try_start_1f1 .. :try_end_200} :catch_26a

    const-string p2, "mdb Cookie cache"

    :try_start_202
    iget-object v4, p0, Lcom/sdk/d/c;->f:Ljava/lang/Boolean;

    invoke-static {v0, p2, v4}, Lcom/sdk/n/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_207
    invoke-virtual {v1, v7, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_216

    :cond_20b
    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v6}, Lcom/sdk/j/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v7, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_216
    if-nez v1, :cond_222

    new-instance p1, Lcom/sdk/a/f;

    invoke-virtual {p0}, Lcom/sdk/a/c;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v3, p2, v3}, Lcom/sdk/a/f;-><init>(ILjava/lang/Object;Z)V

    return-object p1

    :cond_222
    iget-object p2, p1, Lcom/sdk/a/d;->b:Lcom/sdk/a/e;
    :try_end_224
    .catch Ljava/lang/Exception; {:try_start_202 .. :try_end_224} :catch_26a

    const-string v4, "GET"

    :try_start_226
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_235

    iput-object v4, p2, Lcom/sdk/a/e;->a:Ljava/lang/String;

    :cond_235
    invoke-virtual {p0, p1, v1}, Lcom/sdk/a/c;->b(Lcom/sdk/a/d;Ljava/net/HttpURLConnection;)Lcom/sdk/a/f;

    move-result-object p1
    :try_end_239
    .catch Ljava/lang/Exception; {:try_start_226 .. :try_end_239} :catch_26a

    return-object p1

    :cond_23a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "服务异常 ResponseCode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sdk/n/c;->b(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sdk/d/c;->f:Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    new-instance p1, Lcom/sdk/a/f;

    const-string p2, "服务端数据格式出错"

    invoke-direct {p1, v3, p2, v3}, Lcom/sdk/a/f;-><init>(ILjava/lang/Object;Z)V

    return-object p1

    :catch_26a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sdk/n/c;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sdk/d/c;->f:Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    new-instance p1, Lcom/sdk/a/f;

    const-string p2, "网络访问异常"

    invoke-direct {p1, v2, p2, v3}, Lcom/sdk/a/f;-><init>(ILjava/lang/Object;Z)V

    return-object p1
.end method

.method public a()V
    .registers 4

    sget-object v0, Lcom/sdk/a/c$a;->e:Lcom/sdk/a/c$a;

    iput-object v0, p0, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    iget-object v0, p0, Lcom/sdk/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_24

    :try_start_c
    iget-object v0, p0, Lcom/sdk/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/sdk/d/c;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_18

    goto :goto_24

    :catchall_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdk/d/c;->f:Ljava/lang/Boolean;

    const-string v2, "PriorityAsyncTask"

    invoke-static {v2, v0, v1}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_24
    :goto_24
    return-void
.end method

.method public a(JJZ)Z
    .registers 16

    iget-object v0, p0, Lcom/sdk/a/c;->j:Lcom/sdk/e/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    sget-object v3, Lcom/sdk/a/c$a;->e:Lcom/sdk/a/c$a;

    if-eq v0, v3, :cond_55

    const/4 v0, 0x3

    const/4 v3, 0x2

    if-eqz p5, :cond_28

    new-array p5, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p5, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v3

    invoke-virtual {p0, p5}, Lcom/sdk/d/c;->a([Ljava/lang/Object;)V

    goto :goto_55

    :cond_28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sdk/a/c;->p:J

    sub-long v6, v4, v6

    iget-object p5, p0, Lcom/sdk/a/c;->j:Lcom/sdk/e/b;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p5, 0x3e8

    int-to-long v8, p5

    cmp-long p5, v6, v8

    if-ltz p5, :cond_55

    iput-wide v4, p0, Lcom/sdk/a/c;->p:J

    new-array p5, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p5, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v3

    invoke-virtual {p0, p5}, Lcom/sdk/d/c;->a([Ljava/lang/Object;)V

    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    sget-object p2, Lcom/sdk/a/c$a;->e:Lcom/sdk/a/c$a;

    if-eq p1, p2, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v1, 0x0

    :goto_5d
    return v1
.end method

.method public final b(Lcom/sdk/a/d;Ljava/net/HttpURLConnection;)Lcom/sdk/a/f;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sdk/a/d<",
            "TT;>;",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Lcom/sdk/a/f<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_3
    sget-object v3, Lcom/sdk/a/c;->x:Lcom/sdk/a/b;

    iget-object v4, p0, Lcom/sdk/a/c;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sdk/a/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/sdk/a/c;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sdk/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    new-instance v4, Lcom/sdk/a/f;

    invoke-direct {v4, v0, v3, v2}, Lcom/sdk/a/f;-><init>(ILjava/lang/Object;Z)V

    return-object v4

    :cond_1b
    iget-object v3, p0, Lcom/sdk/a/c;->s:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_61

    iget-boolean v3, p0, Lcom/sdk/a/c;->r:Z

    if-eqz v3, :cond_61

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sdk/a/c;->q:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_41

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_78

    goto :goto_42

    :cond_41
    move-wide v3, v5

    :goto_42
    cmp-long v7, v3, v5

    if-lez v7, :cond_61

    const-string v5, "RANGE"

    :try_start_48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v5, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    iget-object v3, p0, Lcom/sdk/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_a7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sdk/a/c;->w:J

    invoke-virtual {p1, p2}, Lcom/sdk/a/d;->a(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/sdk/a/c;->a(Lcom/sdk/a/d;Ljava/net/HttpURLConnection;)Lcom/sdk/a/f;

    move-result-object v1
    :try_end_77
    .catchall {:try_start_48 .. :try_end_77} :catchall_78

    goto :goto_a7

    :catchall_78
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sdk/n/c;->b(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "网络访问异常："

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sdk/d/c;->f:Ljava/lang/Boolean;

    const-string v5, "PriorityAsyncTask"

    invoke-static {v5, v3, v4}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    iget v3, p0, Lcom/sdk/a/c;->n:I

    if-lez v3, :cond_a7

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/sdk/a/c;->n:I

    invoke-virtual {p0, p1, p2}, Lcom/sdk/a/c;->b(Lcom/sdk/a/d;Ljava/net/HttpURLConnection;)Lcom/sdk/a/f;

    move-result-object v1

    :cond_a7
    :goto_a7
    if-nez v1, :cond_b0

    new-instance v1, Lcom/sdk/a/f;

    const-string p1, "网络访问异常"

    invoke-direct {v1, v2, p1, v0}, Lcom/sdk/a/f;-><init>(ILjava/lang/Object;Z)V

    :cond_b0
    return-object v1
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "status"

    const v2, 0x18e71

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "msg"

    const-string v2, "选择流量通道失败"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    const/4 v0, 0x0

    return-object v0
.end method
