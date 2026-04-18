.class public Lcom/tencent/open/log/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/text/SimpleDateFormat;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:Ljava/io/File;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "yy.MM.dd.HH"

    .line 97
    invoke-static {v0}, Lcom/tencent/open/log/d$d;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/log/b;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V
    .registers 14

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Tracer.File"

    .line 111
    iput-object v0, p0, Lcom/tencent/open/log/b;->b:Ljava/lang/String;

    const v0, 0x7fffffff

    .line 112
    iput v0, p0, Lcom/tencent/open/log/b;->c:I

    .line 113
    iput v0, p0, Lcom/tencent/open/log/b;->d:I

    const/16 v0, 0x1000

    .line 114
    iput v0, p0, Lcom/tencent/open/log/b;->e:I

    const-wide/16 v0, 0x2710

    .line 115
    iput-wide v0, p0, Lcom/tencent/open/log/b;->f:J

    const/16 v0, 0xa

    .line 117
    iput v0, p0, Lcom/tencent/open/log/b;->h:I

    const-string v0, ".log"

    .line 118
    iput-object v0, p0, Lcom/tencent/open/log/b;->i:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    .line 119
    iput-wide v0, p0, Lcom/tencent/open/log/b;->j:J

    .line 159
    invoke-virtual {p0, p1}, Lcom/tencent/open/log/b;->a(Ljava/io/File;)V

    .line 160
    invoke-virtual {p0, p2}, Lcom/tencent/open/log/b;->b(I)V

    .line 161
    invoke-virtual {p0, p3}, Lcom/tencent/open/log/b;->a(I)V

    .line 162
    invoke-virtual {p0, p4}, Lcom/tencent/open/log/b;->c(I)V

    .line 163
    invoke-virtual {p0, p5}, Lcom/tencent/open/log/b;->a(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, p6, p7}, Lcom/tencent/open/log/b;->b(J)V

    .line 165
    invoke-virtual {p0, p8}, Lcom/tencent/open/log/b;->d(I)V

    .line 166
    invoke-virtual {p0, p9}, Lcom/tencent/open/log/b;->b(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0, p10, p11}, Lcom/tencent/open/log/b;->c(J)V

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .registers 3

    .line 223
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 224
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 225
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "yy.MM.dd.HH"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.tencent.mobileqq_connectSdk."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".log"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(J)[Ljava/io/File;
    .registers 8

    const-string v0, "openSDK_LOG"

    .line 189
    invoke-virtual {p0}, Lcom/tencent/open/log/b;->b()Ljava/io/File;

    move-result-object v1

    .line 191
    invoke-static {p1, p2}, Lcom/tencent/open/log/b;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/open/log/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 193
    :try_start_e
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_15

    move-object v1, p2

    goto :goto_1b

    :catchall_15
    move-exception p2

    const-string v2, "getWorkFile,get old sdcard file exception:"

    .line 195
    invoke-static {v0, v2, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    :goto_1b
    invoke-static {}, Lcom/tencent/open/utils/m;->b()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    .line 201
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    if-eqz p2, :cond_45

    .line 203
    :cond_28
    :try_start_28
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/tencent/open/log/c;->o:Ljava/lang/String;

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_38

    .line 206
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 208
    :cond_38
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3d} :catch_3f

    move-object v2, p2

    goto :goto_45

    :catch_3f
    move-exception p1

    const-string p2, "getWorkFile,get app specific file exception:"

    .line 211
    invoke-static {v0, p2, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/io/File;

    const/4 p2, 0x0

    aput-object v1, p1, p2

    const/4 p2, 0x1

    aput-object v2, p1, p2

    return-object p1
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .line 296
    iput p1, p0, Lcom/tencent/open/log/b;->c:I

    return-void
.end method

.method public a(Ljava/io/File;)V
    .registers 2

    .line 375
    iput-object p1, p0, Lcom/tencent/open/log/b;->g:Ljava/io/File;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 275
    iput-object p1, p0, Lcom/tencent/open/log/b;->b:Ljava/lang/String;

    return-void
.end method

.method public a()[Ljava/io/File;
    .registers 3

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/open/log/b;->d(J)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/io/File;
    .registers 2

    .line 248
    invoke-virtual {p0}, Lcom/tencent/open/log/b;->e()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 250
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_9
    return-object v0
.end method

.method public b(I)V
    .registers 2

    .line 317
    iput p1, p0, Lcom/tencent/open/log/b;->d:I

    return-void
.end method

.method public b(J)V
    .registers 3

    .line 354
    iput-wide p1, p0, Lcom/tencent/open/log/b;->f:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 417
    iput-object p1, p0, Lcom/tencent/open/log/b;->i:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/tencent/open/log/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    .line 333
    iput p1, p0, Lcom/tencent/open/log/b;->e:I

    return-void
.end method

.method public c(J)V
    .registers 3

    .line 437
    iput-wide p1, p0, Lcom/tencent/open/log/b;->j:J

    return-void
.end method

.method public d()I
    .registers 2

    .line 322
    iget v0, p0, Lcom/tencent/open/log/b;->e:I

    return v0
.end method

.method public d(I)V
    .registers 2

    .line 396
    iput p1, p0, Lcom/tencent/open/log/b;->h:I

    return-void
.end method

.method public e()Ljava/io/File;
    .registers 2

    .line 364
    iget-object v0, p0, Lcom/tencent/open/log/b;->g:Ljava/io/File;

    return-object v0
.end method

.method public f()I
    .registers 2

    .line 385
    iget v0, p0, Lcom/tencent/open/log/b;->h:I

    return v0
.end method
