.class public Lcom/sdk/d/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/sdk/d/b;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sdk/d/b;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sdk/d/b;",
            "TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    sget-object p1, Lcom/sdk/d/b;->d:Lcom/sdk/d/b;

    :cond_7
    iput-object p1, p0, Lcom/sdk/d/e;->a:Lcom/sdk/d/b;

    iput-object p2, p0, Lcom/sdk/d/e;->b:Ljava/lang/Object;

    return-void
.end method
