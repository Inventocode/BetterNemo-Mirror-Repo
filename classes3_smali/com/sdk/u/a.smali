.class public Lcom/sdk/u/a;
.super Lcom/sdk/g/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sdk/g/b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sdk/e/a;Lcom/sdk/f/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sdk/e/a<",
            "TT;>;",
            "Lcom/sdk/f/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/sdk/g/b;-><init>(Landroid/content/Context;Lcom/sdk/e/a;Lcom/sdk/f/b;)V

    invoke-virtual {p0}, Lcom/sdk/u/a;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    sget-boolean v0, Lcom/sdk/f/c;->d:Z

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->getTestHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->getStatisticalTestHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_1c

    :cond_17
    sget-object v1, Lcom/sdk/f/c$b;->a:Lcom/sdk/f/c$b;

    invoke-virtual {v1}, Lcom/sdk/f/c$b;->a()Ljava/lang/String;

    :goto_1c
    invoke-static {v0}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_2d

    :cond_27
    sget-object v0, Lcom/sdk/f/c$b;->b:Lcom/sdk/f/c$b;

    invoke-virtual {v0}, Lcom/sdk/f/c$b;->a()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    iput-object v0, p0, Lcom/sdk/g/b;->g:Ljava/lang/String;

    goto :goto_3d

    :cond_30
    sget-object v0, Lcom/sdk/f/c$b;->b:Lcom/sdk/f/c$b;

    invoke-virtual {v0}, Lcom/sdk/f/c$b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdk/g/b;->g:Ljava/lang/String;

    sget-object v0, Lcom/sdk/f/c$b;->a:Lcom/sdk/f/c$b;

    invoke-virtual {v0}, Lcom/sdk/f/c$b;->a()Ljava/lang/String;

    :goto_3d
    return-void
.end method
