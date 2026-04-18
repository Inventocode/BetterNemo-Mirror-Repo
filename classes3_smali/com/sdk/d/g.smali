.class public Lcom/sdk/d/g;
.super Lcom/sdk/d/e;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sdk/d/e<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sdk/d/b;Ljava/lang/Runnable;)V
    .registers 3

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sdk/d/e;-><init>(Lcom/sdk/d/b;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/sdk/d/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
