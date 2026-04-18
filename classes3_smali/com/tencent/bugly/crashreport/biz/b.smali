.class public Lcom/tencent/bugly/crashreport/biz/b;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/crashreport/biz/b$a;
    }
.end annotation


# static fields
.field public static a:Lcom/tencent/bugly/crashreport/biz/a; = null

.field private static b:Z = false

.field private static c:I = 0xa

.field private static d:J = 0x493e0L

.field private static e:J = 0x7530L

.field private static f:J = 0x0L

.field private static g:I = 0x0

.field private static h:J = 0x0L

.field private static i:J = 0x0L

.field private static j:J = 0x0L

.field private static k:Landroid/app/Application$ActivityLifecycleCallbacks; = null

.field private static l:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static m:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .registers 5

    .line 264
    sget-object v0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    if-eqz v0, :cond_b

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 265
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/crashreport/biz/a;->a(IZJ)V

    :cond_b
    return-void
.end method

.method public static a(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_10

    .line 224
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object p0

    iget-wide p0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:J

    .line 226
    :cond_10
    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->f:J

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .line 341
    sget-boolean v0, Lcom/tencent/bugly/crashreport/biz/b;->b:Z

    if-eqz v0, :cond_34

    if-nez p0, :cond_7

    goto :goto_34

    :cond_7
    const/4 v0, 0x0

    .line 344
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_31

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    :cond_1d
    if-eqz v0, :cond_31

    :try_start_1f
    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz p0, :cond_31

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_31

    :catch_27
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_31
    :goto_31
    const/4 p0, 0x0

    .line 345
    sput-boolean p0, Lcom/tencent/bugly/crashreport/biz/b;->b:Z

    :cond_34
    :goto_34
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .registers 7

    .line 186
    sget-boolean v0, Lcom/tencent/bugly/crashreport/biz/b;->b:Z

    if-eqz v0, :cond_5

    return-void

    .line 190
    :cond_5
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->e:Z

    sput-boolean v0, Lcom/tencent/bugly/crashreport/biz/b;->m:Z

    .line 192
    new-instance v1, Lcom/tencent/bugly/crashreport/biz/a;

    invoke-direct {v1, p0, v0}, Lcom/tencent/bugly/crashreport/biz/a;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    const/4 v0, 0x1

    .line 194
    sput-boolean v0, Lcom/tencent/bugly/crashreport/biz/b;->b:Z

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_26

    .line 199
    invoke-virtual {p1}, Lcom/tencent/bugly/BuglyStrategy;->getUserInfoActivity()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/tencent/bugly/crashreport/biz/b;->l:Ljava/lang/Class;

    .line 200
    invoke-virtual {p1}, Lcom/tencent/bugly/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v2

    goto :goto_27

    :cond_26
    move-wide v2, v0

    :goto_27
    cmp-long v4, v2, v0

    if-gtz v4, :cond_2f

    .line 204
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/biz/b;->c(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    return-void

    .line 206
    :cond_2f
    invoke-static {}, Lcom/tencent/bugly/proguard/x;->a()Lcom/tencent/bugly/proguard/x;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/crashreport/biz/b$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/bugly/crashreport/biz/b$1;-><init>(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V
    .registers 6

    .line 235
    sget-object v0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    if-eqz v0, :cond_14

    if-nez p1, :cond_14

    .line 236
    invoke-static {}, Lcom/tencent/bugly/proguard/x;->a()Lcom/tencent/bugly/proguard/x;

    move-result-object p1

    if-eqz p1, :cond_14

    new-instance v1, Lcom/tencent/bugly/crashreport/biz/a$2;

    invoke-direct {v1, v0}, Lcom/tencent/bugly/crashreport/biz/a$2;-><init>(Lcom/tencent/bugly/crashreport/biz/a;)V

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Runnable;)Z

    :cond_14
    if-nez p0, :cond_17

    return-void

    .line 241
    :cond_17
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_21

    .line 242
    sput-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->e:J

    .line 244
    :cond_21
    iget p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->t:I

    if-lez p1, :cond_27

    .line 245
    sput p1, Lcom/tencent/bugly/crashreport/biz/b;->c:I

    .line 247
    :cond_27
    iget-wide p0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->u:J

    cmp-long v0, p0, v2

    if-lez v0, :cond_2f

    .line 248
    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->d:J

    :cond_2f
    return-void
.end method

.method static synthetic b(J)J
    .registers 2

    .line 26
    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->j:J

    return-wide p0
.end method

.method static synthetic b()Ljava/lang/Class;
    .registers 1

    .line 26
    sget-object v0, Lcom/tencent/bugly/crashreport/biz/b;->l:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .registers 2

    .line 26
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/biz/b;->c(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 4

    .line 163
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 164
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 165
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 166
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 167
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_14

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_2c

    const/16 v2, 0x64

    if-ne v1, v2, :cond_14

    const/4 p0, 0x1

    goto :goto_31

    :catchall_2c
    move-exception p0

    .line 174
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    :cond_30
    const/4 p0, 0x0

    :goto_31
    return p0
.end method

.method static synthetic c()J
    .registers 2

    .line 26
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->i:J

    return-wide v0
.end method

.method static synthetic c(J)J
    .registers 2

    .line 26
    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->h:J

    return-wide p0
.end method

.method private static c(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .registers 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 121
    invoke-virtual {p1}, Lcom/tencent/bugly/BuglyStrategy;->recordUserInfoOnceADay()Z

    move-result v2

    .line 122
    invoke-virtual {p1}, Lcom/tencent/bugly/BuglyStrategy;->isEnableUserInfo()Z

    move-result p1

    goto :goto_f

    :cond_d
    const/4 p1, 0x1

    const/4 v2, 0x0

    :goto_f
    const-wide/16 v3, 0x0

    if-eqz v2, :cond_6a

    .line 126
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p1

    iget-object v2, p1, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    sget-object v5, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-virtual {v5, v2}, Lcom/tencent/bugly/crashreport/biz/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_65

    const/4 v5, 0x0

    :goto_22
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_65

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    iget-object v7, v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->n:Ljava/lang/String;

    iget-object v8, p1, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    iget v7, v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    if-ne v7, v0, :cond_62

    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->b()J

    move-result-wide v7

    cmp-long v9, v7, v3

    if-lez v9, :cond_65

    iget-wide v9, v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    cmp-long v11, v9, v7

    if-ltz v11, :cond_62

    iget-wide v5, v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->f:J

    cmp-long p1, v5, v3

    if-gtz p1, :cond_60

    sget-object p1, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-static {}, Lcom/tencent/bugly/proguard/x;->a()Lcom/tencent/bugly/proguard/x;

    move-result-object v2

    if-eqz v2, :cond_60

    new-instance v5, Lcom/tencent/bugly/crashreport/biz/a$2;

    invoke-direct {v5, p1}, Lcom/tencent/bugly/crashreport/biz/a$2;-><init>(Lcom/tencent/bugly/crashreport/biz/a;)V

    invoke-virtual {v2, v5}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Runnable;)Z

    :cond_60
    const/4 p1, 0x0

    goto :goto_66

    :cond_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_65
    const/4 p1, 0x1

    :goto_66
    if-nez p1, :cond_69

    return-void

    :cond_69
    const/4 p1, 0x0

    .line 134
    :cond_6a
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v2

    if-eqz v2, :cond_79

    invoke-static {p0}, Lcom/tencent/bugly/crashreport/biz/b;->b(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-virtual {v2, v1, v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(IZ)V

    :cond_79
    if-eqz p1, :cond_ae

    const/4 p1, 0x0

    .line 137
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v2, v5, :cond_ae

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_91

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/app/Application;

    :cond_91
    if-eqz p1, :cond_ae

    :try_start_93
    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez p0, :cond_9e

    new-instance p0, Lcom/tencent/bugly/crashreport/biz/b$a;

    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/biz/b$a;-><init>()V

    sput-object p0, Lcom/tencent/bugly/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    :cond_9e
    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a3} :catch_a4

    goto :goto_ae

    :catch_a4
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_ae

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    :cond_ae
    :goto_ae
    sget-boolean p0, Lcom/tencent/bugly/crashreport/biz/b;->m:Z

    if-eqz p0, :cond_da

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->i:J

    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/tencent/bugly/crashreport/biz/a;->a(IZJ)V

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "[session] launch app, new start"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 144
    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/biz/a;->a()V

    .line 146
    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    const-wide/32 v0, 0x1499700

    invoke-static {}, Lcom/tencent/bugly/proguard/x;->a()Lcom/tencent/bugly/proguard/x;

    move-result-object p1

    new-instance v2, Lcom/tencent/bugly/crashreport/biz/a$c;

    invoke-direct {v2, p0, v0, v1}, Lcom/tencent/bugly/crashreport/biz/a$c;-><init>(Lcom/tencent/bugly/crashreport/biz/a;J)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Runnable;J)Z

    :cond_da
    return-void
.end method

.method static synthetic d()J
    .registers 2

    .line 26
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->h:J

    return-wide v0
.end method

.method static synthetic e()J
    .registers 2

    .line 26
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->f:J

    return-wide v0
.end method

.method static synthetic f()J
    .registers 2

    .line 26
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->e:J

    return-wide v0
.end method

.method static synthetic g()I
    .registers 2

    .line 26
    sget v0, Lcom/tencent/bugly/crashreport/biz/b;->g:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/tencent/bugly/crashreport/biz/b;->g:I

    return v0
.end method

.method static synthetic h()I
    .registers 1

    .line 26
    sget v0, Lcom/tencent/bugly/crashreport/biz/b;->g:I

    return v0
.end method

.method static synthetic i()I
    .registers 1

    .line 26
    sget v0, Lcom/tencent/bugly/crashreport/biz/b;->c:I

    return v0
.end method

.method static synthetic j()Z
    .registers 1

    .line 26
    sget-boolean v0, Lcom/tencent/bugly/crashreport/biz/b;->m:Z

    return v0
.end method

.method static synthetic k()J
    .registers 2

    .line 26
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->j:J

    return-wide v0
.end method

.method static synthetic l()J
    .registers 2

    .line 26
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->d:J

    return-wide v0
.end method
