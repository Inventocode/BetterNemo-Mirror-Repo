.class public abstract Lcn/com/chinatelecom/account/api/c/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static c:Landroid/os/Handler;


# instance fields
.field private a:Z

.field private b:J

.field private d:Lcn/com/chinatelecom/account/api/c/o;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/com/chinatelecom/account/api/c/n;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/chinatelecom/account/api/c/n;->a:Z

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/chinatelecom/account/api/c/n;->a:Z

    iput-wide p1, p0, Lcn/com/chinatelecom/account/api/c/n;->b:J

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(Z)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/com/chinatelecom/account/api/c/n;->a:Z

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcn/com/chinatelecom/account/api/c/n;->a:Z

    return v0
.end method

.method public final d()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/n;->d:Lcn/com/chinatelecom/account/api/c/o;

    if-eqz v0, :cond_9

    sget-object v1, Lcn/com/chinatelecom/account/api/c/n;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    :cond_9
    return-void

    :catchall_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public run()V
    .registers 6

    iget-wide v0, p0, Lcn/com/chinatelecom/account/api/c/n;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_16

    new-instance v0, Lcn/com/chinatelecom/account/api/c/o;

    invoke-direct {v0, p0}, Lcn/com/chinatelecom/account/api/c/o;-><init>(Lcn/com/chinatelecom/account/api/c/n;)V

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/c/n;->d:Lcn/com/chinatelecom/account/api/c/o;

    sget-object v1, Lcn/com/chinatelecom/account/api/c/n;->c:Landroid/os/Handler;

    iget-wide v2, p0, Lcn/com/chinatelecom/account/api/c/n;->b:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_16
    invoke-virtual {p0}, Lcn/com/chinatelecom/account/api/c/n;->a()V

    return-void
.end method
