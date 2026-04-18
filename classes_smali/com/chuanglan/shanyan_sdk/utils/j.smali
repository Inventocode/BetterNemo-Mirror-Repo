.class public Lcom/chuanglan/shanyan_sdk/utils/j;
.super Lcom/chuanglan/shanyan_sdk/tool/i;


# static fields
.field private static volatile a:Lcom/chuanglan/shanyan_sdk/utils/j;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/tool/i;-><init>()V

    return-void
.end method

.method public static a()Lcom/chuanglan/shanyan_sdk/tool/i;
    .registers 2

    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/j;->a:Lcom/chuanglan/shanyan_sdk/utils/j;

    if-nez v0, :cond_17

    const-class v0, Lcom/chuanglan/shanyan_sdk/utils/j;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/chuanglan/shanyan_sdk/utils/j;->a:Lcom/chuanglan/shanyan_sdk/utils/j;

    if-nez v1, :cond_12

    new-instance v1, Lcom/chuanglan/shanyan_sdk/utils/j;

    invoke-direct {v1}, Lcom/chuanglan/shanyan_sdk/utils/j;-><init>()V

    sput-object v1, Lcom/chuanglan/shanyan_sdk/utils/j;->a:Lcom/chuanglan/shanyan_sdk/utils/j;

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
    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/j;->a:Lcom/chuanglan/shanyan_sdk/utils/j;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 10

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "ns"

    invoke-static {p1, v2, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v2, :cond_4c

    const-string v5, "CheckAuthEnableShanYanTask"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "checkMobileNetwork network_switch"

    aput-object v7, v6, v1

    aput-object v2, v6, v4

    invoke-static {v5, v6}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "OPPO"

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/16 v0, 0x9

    if-gt v3, v0, :cond_4c

    const/4 v0, 0x6

    if-lt v3, v0, :cond_4c

    goto :goto_46

    :cond_3e
    const-string v0, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_44} :catch_48

    if-eqz v0, :cond_4c

    :goto_46
    const/4 v1, 0x1

    goto :goto_4c

    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4c
    :goto_4c
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/l;->a()Lcom/chuanglan/shanyan_sdk/tool/m;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/chuanglan/shanyan_sdk/tool/m;->a(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method
