.class public Lcom/geetest/sdk/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/geetest/sdk/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/geetest/sdk/ae<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/geetest/sdk/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geetest/sdk/ae<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/geetest/sdk/ae;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geetest/sdk/ae<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/ag;->b:Lcom/geetest/sdk/ae;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/geetest/sdk/ag;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/geetest/sdk/ag;)Lcom/geetest/sdk/ae;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/ag;->b:Lcom/geetest/sdk/ae;

    return-object p0
.end method

.method public static a(Lcom/geetest/sdk/ae;)Lcom/geetest/sdk/ag;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/geetest/sdk/ae<",
            "TT;>;)",
            "Lcom/geetest/sdk/ag<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/geetest/sdk/ag;

    invoke-direct {v0, p0}, Lcom/geetest/sdk/ag;-><init>(Lcom/geetest/sdk/ae;)V

    return-object v0
.end method

.method private b(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/ag;->a:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 2
    new-instance v1, Lcom/geetest/sdk/ag$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geetest/sdk/ag$a;-><init>(Lcom/geetest/sdk/ag;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e

    .line 14
    :cond_d
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geetest/sdk/ag$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geetest/sdk/ag$b;-><init>(Lcom/geetest/sdk/ag;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1e
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/ag;->b:Lcom/geetest/sdk/ae;

    if-nez v0, :cond_5

    return-void

    .line 6
    :cond_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_13

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/geetest/sdk/ag;->b(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1d

    .line 11
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/geetest/sdk/ag;->b:Lcom/geetest/sdk/ae;

    invoke-interface {v0, p1, p2, p3}, Lcom/geetest/sdk/ae;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1d
    return-void
.end method
