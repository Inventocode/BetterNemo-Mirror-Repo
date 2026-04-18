.class Lcom/tencent/connect/avatar/c$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/avatar/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/avatar/c;


# direct methods
.method constructor <init>(Lcom/tencent/connect/avatar/c;)V
    .registers 2

    .line 271
    iput-object p1, p0, Lcom/tencent/connect/avatar/c$1;->a:Lcom/tencent/connect/avatar/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-wide/16 v0, 0x12c

    .line 274
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 278
    :goto_a
    iget-object v0, p0, Lcom/tencent/connect/avatar/c$1;->a:Lcom/tencent/connect/avatar/c;

    new-instance v1, Lcom/tencent/connect/avatar/c$1$1;

    invoke-direct {v1, p0}, Lcom/tencent/connect/avatar/c$1$1;-><init>(Lcom/tencent/connect/avatar/c$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 286
    iget-object v0, p0, Lcom/tencent/connect/avatar/c$1;->a:Lcom/tencent/connect/avatar/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/connect/avatar/c;->a(Lcom/tencent/connect/avatar/c;Z)Z

    return-void
.end method
