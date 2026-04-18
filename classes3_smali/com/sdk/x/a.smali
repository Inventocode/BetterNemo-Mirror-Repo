.class public Lcom/sdk/x/a;
.super Lcom/sdk/u/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sdk/u/a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/sdk/f/c;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sdk/e/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sdk/e/a<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/sdk/mobile/config/MobileConfig;

    invoke-direct {v0}, Lcom/sdk/mobile/config/MobileConfig;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/sdk/u/a;-><init>(Landroid/content/Context;Lcom/sdk/e/a;Lcom/sdk/f/b;)V

    return-void
.end method
