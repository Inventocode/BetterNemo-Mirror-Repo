.class public Lcom/chuanglan/shanyan_sdk/tool/n;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/chuanglan/shanyan_sdk/tool/n;


# instance fields
.field private b:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

.field private c:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

.field private d:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/n;->c:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/n;->d:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    return-void
.end method

.method public static a()Lcom/chuanglan/shanyan_sdk/tool/n;
    .registers 2

    sget-object v0, Lcom/chuanglan/shanyan_sdk/tool/n;->a:Lcom/chuanglan/shanyan_sdk/tool/n;

    if-nez v0, :cond_17

    const-class v0, Lcom/chuanglan/shanyan_sdk/tool/n;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/chuanglan/shanyan_sdk/tool/n;->a:Lcom/chuanglan/shanyan_sdk/tool/n;

    if-nez v1, :cond_12

    new-instance v1, Lcom/chuanglan/shanyan_sdk/tool/n;

    invoke-direct {v1}, Lcom/chuanglan/shanyan_sdk/tool/n;-><init>()V

    sput-object v1, Lcom/chuanglan/shanyan_sdk/tool/n;->a:Lcom/chuanglan/shanyan_sdk/tool/n;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/chuanglan/shanyan_sdk/tool/n;->a:Lcom/chuanglan/shanyan_sdk/tool/n;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/n;->b:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    return-void
.end method

.method public a(Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;)V
    .registers 4

    iput-object p3, p0, Lcom/chuanglan/shanyan_sdk/tool/n;->b:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/n;->d:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/n;->c:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    return-void
.end method

.method public b()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;
    .registers 2

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/n;->d:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/n;->b:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    return-object v0
.end method

.method public c()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;
    .registers 2

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/n;->c:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    return-object v0
.end method
