.class public Lcom/tencent/smtt/sdk/TbsVideoUtils;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/smtt/sdk/s;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 5

    const-class v0, Lcom/tencent/smtt/sdk/TbsVideoUtils;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a:Lcom/tencent/smtt/sdk/s;

    if-nez v1, :cond_28

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/smtt/sdk/f;->a(Z)Lcom/tencent/smtt/sdk/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v3}, Lcom/tencent/smtt/sdk/f;->a(Landroid/content/Context;ZZ)V

    invoke-static {v1}, Lcom/tencent/smtt/sdk/f;->a(Z)Lcom/tencent/smtt/sdk/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/f;->a()Lcom/tencent/smtt/sdk/u;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/u;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v1

    :cond_1f
    if-eqz v1, :cond_28

    new-instance p0, Lcom/tencent/smtt/sdk/s;

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/s;-><init>(Lcom/tencent/smtt/export/external/DexLoader;)V

    sput-object p0, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a:Lcom/tencent/smtt/sdk/s;

    :cond_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public static deleteVideoCache(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a:Lcom/tencent/smtt/sdk/s;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p0, p1}, Lcom/tencent/smtt/sdk/s;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public static getCurWDPDecodeType(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a:Lcom/tencent/smtt/sdk/s;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const-string p0, ""

    return-object p0
.end method
