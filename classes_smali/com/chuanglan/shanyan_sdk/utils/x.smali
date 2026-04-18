.class public Lcom/chuanglan/shanyan_sdk/utils/x;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/chuanglan/shanyan_sdk/utils/x;

.field private static b:Landroid/content/SharedPreferences;

.field private static c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/x;
    .registers 4

    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/x;->a:Lcom/chuanglan/shanyan_sdk/utils/x;

    if-nez v0, :cond_26

    const-class v0, Lcom/chuanglan/shanyan_sdk/utils/x;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/chuanglan/shanyan_sdk/utils/x;->a:Lcom/chuanglan/shanyan_sdk/utils/x;

    if-nez v1, :cond_21

    new-instance v1, Lcom/chuanglan/shanyan_sdk/utils/x;

    invoke-direct {v1}, Lcom/chuanglan/shanyan_sdk/utils/x;-><init>()V

    sput-object v1, Lcom/chuanglan/shanyan_sdk/utils/x;->a:Lcom/chuanglan/shanyan_sdk/utils/x;

    const-string v1, "shanyan_share_data"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/chuanglan/shanyan_sdk/utils/x;->b:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sput-object p0, Lcom/chuanglan/shanyan_sdk/utils/x;->c:Landroid/content/SharedPreferences$Editor;

    :cond_21
    monitor-exit v0

    goto :goto_26

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw p0

    :cond_26
    :goto_26
    sget-object p0, Lcom/chuanglan/shanyan_sdk/utils/x;->a:Lcom/chuanglan/shanyan_sdk/utils/x;

    return-object p0
.end method


# virtual methods
.method a()Landroid/content/SharedPreferences;
    .registers 2

    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/x;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method b()Landroid/content/SharedPreferences$Editor;
    .registers 2

    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/x;->c:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method
