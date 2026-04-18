.class public Lcom/efs/sdk/base/EfsReporter$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/base/EfsReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/EfsReporter$Builder$IPublicParams;
    }
.end annotation


# static fields
.field private static sInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/efs/sdk/base/EfsReporter;",
            ">;"
        }
    .end annotation
.end field

.field private static sUseAppContext:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mGlobalEnvStruct:Lcom/efs/sdk/base/a/c/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 248
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/efs/sdk/base/EfsReporter$Builder;->sInstanceMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 301
    sput-boolean v0, Lcom/efs/sdk/base/EfsReporter$Builder;->sUseAppContext:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 140
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/efs/sdk/base/EfsReporter$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "efs.reporter.builder"

    .line 132
    iput-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->TAG:Ljava/lang/String;

    .line 144
    invoke-static {p1}, Lcom/efs/sdk/base/EfsReporter$Builder;->checkContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 146
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 149
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 153
    new-instance v0, Lcom/efs/sdk/base/a/c/a;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/c/a;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/a/c/a;

    .line 154
    iput-object p1, v0, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    .line 1117
    iput-object p2, v0, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 1125
    iput-object p3, v0, Lcom/efs/sdk/base/a/c/a;->b:Ljava/lang/String;

    return-void

    .line 150
    :cond_25
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "EfsReporter init, secret is empty"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_2d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "EfsReporter init, appid is empty"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static checkContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 4

    const-string v0, "efs.base"

    const/4 v1, 0x0

    if-eqz p0, :cond_24

    .line 309
    sget-boolean v2, Lcom/efs/sdk/base/EfsReporter$Builder;->sUseAppContext:Z

    if-eqz v2, :cond_23

    instance-of v2, p0, Landroid/app/Application;

    if-nez v2, :cond_23

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 311
    instance-of v2, p0, Landroid/app/Application;

    if-eqz v2, :cond_18

    goto :goto_23

    :cond_18
    const-string p0, "Can not get Application context from given context!"

    .line 15020
    invoke-static {v0, p0, v1}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :goto_23
    return-object p0

    :cond_24
    const-string p0, "context can not be null!"

    .line 14020
    invoke-static {v0, p0, v1}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    throw v1
.end method

.method private checkParam(Ljava/lang/String;)V
    .registers 5

    .line 272
    sget-object v0, Lcom/efs/sdk/base/EfsReporter$Builder;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/efs/sdk/base/EfsReporter;

    .line 273
    invoke-static {p1}, Lcom/efs/sdk/base/EfsReporter;->access$100(Lcom/efs/sdk/base/EfsReporter;)Lcom/efs/sdk/base/a/c/a;

    move-result-object p1

    .line 277
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "efs-core: duplicate init, but "

    if-eqz v0, :cond_c0

    .line 6121
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/a;->b:Ljava/lang/String;

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 7121
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/a;->b:Ljava/lang/String;

    .line 282
    invoke-virtual {p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/a/c/a;

    move-result-object v2

    .line 8121
    iget-object v2, v2, Lcom/efs/sdk/base/a/c/a;->b:Ljava/lang/String;

    .line 282
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_4a

    .line 283
    :cond_33
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "secret is different"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8178
    :cond_4a
    :goto_4a
    iget-boolean v0, p1, Lcom/efs/sdk/base/a/c/a;->i:Z

    .line 286
    invoke-virtual {p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/a/c/a;

    move-result-object v2

    .line 9178
    iget-boolean v2, v2, Lcom/efs/sdk/base/a/c/a;->i:Z

    if-ne v0, v2, :cond_a9

    .line 290
    invoke-virtual {p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    .line 10129
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->h:Ljava/lang/String;

    .line 290
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 291
    invoke-virtual {p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    .line 11129
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->h:Ljava/lang/String;

    .line 12129
    iget-object v2, p1, Lcom/efs/sdk/base/a/c/a;->h:Ljava/lang/String;

    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid is different"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "efs.reporter.builder"

    .line 13025
    invoke-static {v2, v0, v1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    :cond_85
    invoke-virtual {p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/a/c/a;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_a8

    invoke-virtual {p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/a/c/a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a8

    .line 297
    invoke-virtual {p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/a/c/a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/a/c/a;->a(Ljava/util/Map;)V

    :cond_a8
    return-void

    .line 287
    :cond_a9
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "intl setting is different"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 278
    :cond_c0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "application context is different"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addEfsReporterObserver(Lcom/efs/sdk/base/observer/IEfsReporterObserver;)Lcom/efs/sdk/base/EfsReporter$Builder;
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/a/c/a;

    .line 3245
    iget-object v1, v0, Lcom/efs/sdk/base/a/c/a;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 3246
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    return-object p0
.end method

.method public build()Lcom/efs/sdk/base/EfsReporter;
    .registers 5

    .line 251
    invoke-virtual {p0}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    .line 5113
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 254
    sget-object v1, Lcom/efs/sdk/base/EfsReporter$Builder;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2b

    .line 255
    const-class v1, Lcom/efs/sdk/base/EfsReporter;

    monitor-enter v1

    .line 256
    :try_start_12
    sget-object v3, Lcom/efs/sdk/base/EfsReporter$Builder;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 257
    new-instance v3, Lcom/efs/sdk/base/EfsReporter;

    invoke-direct {v3, p0, v2}, Lcom/efs/sdk/base/EfsReporter;-><init>(Lcom/efs/sdk/base/EfsReporter$Builder;Lcom/efs/sdk/base/EfsReporter$1;)V

    .line 258
    sget-object v2, Lcom/efs/sdk/base/EfsReporter$Builder;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    monitor-exit v1

    return-object v3

    .line 261
    :cond_26
    monitor-exit v1

    goto :goto_2b

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    :goto_2b
    const-string v1, "efs.reporter.builder"

    const-string v3, "efs-core: duplicate init"

    .line 6025
    invoke-static {v1, v3, v2}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    invoke-direct {p0, v0}, Lcom/efs/sdk/base/EfsReporter$Builder;->checkParam(Ljava/lang/String;)V

    .line 268
    sget-object v1, Lcom/efs/sdk/base/EfsReporter$Builder;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/efs/sdk/base/EfsReporter;

    return-object v0
.end method

.method public configRefreshAction(Lcom/efs/sdk/base/IConfigRefreshAction;)Lcom/efs/sdk/base/EfsReporter$Builder;
    .registers 3

    .line 204
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v0

    .line 3199
    iput-object p1, v0, Lcom/efs/sdk/base/a/c/a/c;->b:Lcom/efs/sdk/base/IConfigRefreshAction;

    return-object p0
.end method

.method public configRefreshDelayMills(J)Lcom/efs/sdk/base/EfsReporter$Builder;
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/a/c/a;

    iput-wide p1, v0, Lcom/efs/sdk/base/a/c/a;->j:J

    return-object p0
.end method

.method public debug(Z)Lcom/efs/sdk/base/EfsReporter$Builder;
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/a/c/a;

    .line 1212
    iput-boolean p1, v0, Lcom/efs/sdk/base/a/c/a;->f:Z

    return-object p0
.end method

.method public efsDirRootName(Ljava/lang/String;)Lcom/efs/sdk/base/EfsReporter$Builder;
    .registers 2

    .line 224
    invoke-static {p1}, Lcom/efs/sdk/base/a/h/a;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public enableSendLog(Z)Lcom/efs/sdk/base/EfsReporter$Builder;
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/a/c/a;

    .line 4198
    iput-boolean p1, v0, Lcom/efs/sdk/base/a/c/a;->e:Z

    return-object p0
.end method

.method public enableWaStat(Z)Lcom/efs/sdk/base/EfsReporter$Builder;
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/a/c/a;

    .line 2190
    iput-boolean p1, v0, Lcom/efs/sdk/base/a/c/a;->d:Z

    return-object p0
.end method

.method public getGlobalEnvStruct()Lcom/efs/sdk/base/a/c/a;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/a/c/a;

    return-object v0
.end method

.method public intl(Z)Lcom/efs/sdk/base/EfsReporter$Builder;
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/a/c/a;

    .line 4182
    iput-boolean p1, v0, Lcom/efs/sdk/base/a/c/a;->i:Z

    return-object p0
.end method

.method public logEncryptAction(Lcom/efs/sdk/base/processor/action/ILogEncryptAction;)Lcom/efs/sdk/base/EfsReporter$Builder;
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/a/c/a;

    .line 3174
    iput-object p1, v0, Lcom/efs/sdk/base/a/c/a;->m:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    return-object p0
.end method

.method public maxConcurrentUploadCnt(I)Lcom/efs/sdk/base/EfsReporter$Builder;
    .registers 3

    .line 209
    invoke-static {}, Lcom/efs/sdk/base/a/e/d;->a()Lcom/efs/sdk/base/a/e/d;

    move-result-object v0

    .line 3227
    iput p1, v0, Lcom/efs/sdk/base/a/e/d;->a:I

    return-object p0
.end method

.method public printLogDetail(Z)Lcom/efs/sdk/base/EfsReporter$Builder;
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/a/c/a;

    .line 2220
    iput-boolean p1, v0, Lcom/efs/sdk/base/a/c/a;->g:Z

    return-object p0
.end method

.method public publicParams(Lcom/efs/sdk/base/EfsReporter$Builder$IPublicParams;)Lcom/efs/sdk/base/EfsReporter$Builder;
    .registers 3

    .line 180
    invoke-interface {p1}, Lcom/efs/sdk/base/EfsReporter$Builder$IPublicParams;->getRecordHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Lcom/efs/sdk/base/EfsReporter$Builder$IPublicParams;->getRecordHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 181
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/a/c/a;

    invoke-interface {p1}, Lcom/efs/sdk/base/EfsReporter$Builder$IPublicParams;->getRecordHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/a/c/a;->a(Ljava/util/Map;)V

    :cond_19
    return-object p0
.end method

.method public publicParams(Ljava/util/Map;)Lcom/efs/sdk/base/EfsReporter$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/efs/sdk/base/EfsReporter$Builder;"
        }
    .end annotation

    .line 187
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 188
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/a/c/a;

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/a/c/a;->a(Ljava/util/Map;)V

    :cond_b
    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/efs/sdk/base/EfsReporter$Builder;
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/efs/sdk/base/EfsReporter$Builder;->mGlobalEnvStruct:Lcom/efs/sdk/base/a/c/a;

    .line 1133
    iput-object p1, v0, Lcom/efs/sdk/base/a/c/a;->h:Ljava/lang/String;

    return-object p0
.end method
