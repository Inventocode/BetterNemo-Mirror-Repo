.class public Lcom/sdk/t/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/sdk/t/a;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/sdk/f/c;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/sdk/t/a;
    .registers 3

    sget-object v0, Lcom/sdk/t/a;->a:Lcom/sdk/t/a;

    if-nez v0, :cond_13

    const-class v0, Lcom/sdk/t/a;

    monitor-enter v0

    :try_start_7
    new-instance v1, Lcom/sdk/t/a;

    invoke-direct {v1, p0}, Lcom/sdk/t/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sdk/t/a;->a:Lcom/sdk/t/a;

    monitor-exit v0

    goto :goto_13

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw p0

    :cond_13
    :goto_13
    sget-object p0, Lcom/sdk/t/a;->a:Lcom/sdk/t/a;

    return-object p0
.end method
