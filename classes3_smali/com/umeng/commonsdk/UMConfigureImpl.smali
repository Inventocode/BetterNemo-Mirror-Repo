.class public Lcom/umeng/commonsdk/UMConfigureImpl;
.super Ljava/lang/Object;
.source "UMConfigureImpl.java"


# static fields
.field private static a:Ljava/lang/String; = "delayed_transmission_flag_new"

.field private static b:Ljava/util/concurrent/CopyOnWriteArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/umeng/commonsdk/utils/onMessageSendListener;",
            ">;"
        }
    .end annotation
.end field

.field private static c:I = 0x0

.field private static d:Z = false

.field private static final e:I = 0x3e8

.field private static f:Ljava/util/concurrent/ScheduledExecutorService;

.field private static g:Landroid/content/Context;

.field private static h:I

.field private static i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 25
    sput v0, Lcom/umeng/commonsdk/UMConfigureImpl;->c:I

    .line 26
    sput-boolean v0, Lcom/umeng/commonsdk/UMConfigureImpl;->d:Z

    .line 31
    sput v0, Lcom/umeng/commonsdk/UMConfigureImpl;->h:I

    .line 65
    new-instance v0, Lcom/umeng/commonsdk/UMConfigureImpl$1;

    invoke-direct {v0}, Lcom/umeng/commonsdk/UMConfigureImpl$1;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->i:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .registers 1

    .line 21
    sget v0, Lcom/umeng/commonsdk/UMConfigureImpl;->c:I

    return v0
.end method

.method static synthetic a(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 21
    sput-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->f:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .registers 1

    .line 21
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigureImpl;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    .line 21
    sput-boolean p0, Lcom/umeng/commonsdk/UMConfigureImpl;->d:Z

    return p0
.end method

.method static synthetic b()I
    .registers 1

    .line 21
    sget v0, Lcom/umeng/commonsdk/UMConfigureImpl;->h:I

    return v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)V
    .registers 3

    const-class p0, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter p0

    const/4 v0, 0x1

    .line 88
    :try_start_4
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->setTransmissionSendFlag(Z)V

    .line 91
    sget-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2a

    .line 92
    sget-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/utils/onMessageSendListener;

    .line 93
    invoke-interface {v1}, Lcom/umeng/commonsdk/utils/onMessageSendListener;->onMessageSend()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_26} :catch_2a
    .catchall {:try_start_4 .. :try_end_26} :catchall_27

    goto :goto_17

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    .line 99
    :catch_2a
    :cond_2a
    monitor-exit p0

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .registers 3

    .line 146
    :try_start_0
    sget-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 150
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 151
    sget-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_16

    :catchall_16
    :cond_16
    return-void
.end method

.method static synthetic c()Z
    .registers 1

    .line 21
    sget-boolean v0, Lcom/umeng/commonsdk/UMConfigureImpl;->d:Z

    return v0
.end method

.method static synthetic d()Landroid/content/Context;
    .registers 1

    .line 21
    sget-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->g:Landroid/content/Context;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    .line 162
    :try_start_1
    sget-object v1, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 166
    sget-object v1, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    :catchall_f
    :cond_f
    return v0
.end method

.method static synthetic e()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 21
    sget-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->f:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic f()I
    .registers 2

    .line 21
    sget v0, Lcom/umeng/commonsdk/UMConfigureImpl;->h:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/umeng/commonsdk/UMConfigureImpl;->h:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 10

    if-nez p0, :cond_3

    return-void

    .line 38
    :cond_3
    sput-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->g:Landroid/content/Context;

    .line 40
    :try_start_5
    sget v0, Lcom/umeng/commonsdk/UMConfigureImpl;->c:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_31

    .line 42
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigureImpl;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x0

    .line 45
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->setTransmissionSendFlag(Z)V

    .line 47
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigureImpl;->c(Landroid/content/Context;)V

    .line 49
    sget-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->f:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p0, :cond_34

    .line 50
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    sput-object v2, Lcom/umeng/commonsdk/UMConfigureImpl;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 51
    sget-object v3, Lcom/umeng/commonsdk/UMConfigureImpl;->i:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x64

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_34

    .line 54
    :cond_2d
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->setTransmissionSendFlag(Z)V

    goto :goto_34

    .line 57
    :cond_31
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->setTransmissionSendFlag(Z)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_34} :catch_34

    :catch_34
    :cond_34
    :goto_34
    return-void
.end method

.method public static declared-synchronized registerInterruptFlag()V
    .registers 2

    const-class v0, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter v0

    .line 131
    :try_start_3
    sget v1, Lcom/umeng/commonsdk/UMConfigureImpl;->c:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/umeng/commonsdk/UMConfigureImpl;->c:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_d
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    goto :goto_d

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1

    .line 133
    :catch_d
    :goto_d
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized registerMessageSendListener(Lcom/umeng/commonsdk/utils/onMessageSendListener;)V
    .registers 3

    const-class v0, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter v0

    .line 103
    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_a

    .line 104
    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_a
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->getTransmissionSendFlag()Z

    move-result p0

    if-eqz p0, :cond_33

    .line 108
    sget-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_33

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    if-lez p0, :cond_33

    .line 109
    sget-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/utils/onMessageSendListener;

    .line 110
    invoke-interface {v1}, Lcom/umeng/commonsdk/utils/onMessageSendListener;->onMessageSend()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2f} :catch_33
    .catchall {:try_start_3 .. :try_end_2f} :catchall_30

    goto :goto_20

    :catchall_30
    move-exception p0

    monitor-exit v0

    throw p0

    .line 117
    :catch_33
    :cond_33
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized removeInterruptFlag()V
    .registers 2

    const-class v0, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter v0

    .line 137
    :try_start_3
    sget v1, Lcom/umeng/commonsdk/UMConfigureImpl;->c:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/umeng/commonsdk/UMConfigureImpl;->c:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_d
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    goto :goto_d

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1

    .line 141
    :catch_d
    :goto_d
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized removeMessageSendListener(Lcom/umeng/commonsdk/utils/onMessageSendListener;)V
    .registers 3

    const-class v0, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter v0

    .line 121
    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_e

    .line 122
    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_e
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    goto :goto_e

    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0

    .line 127
    :catch_e
    :cond_e
    :goto_e
    monitor-exit v0

    return-void
.end method
