.class public Lcom/sdk/d/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/sdk/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/d/e<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Lcom/sdk/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/d/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdk/d/a;->a:Z

    invoke-virtual {p0, p1}, Lcom/sdk/d/a;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdk/d/a;->b:Lcom/sdk/d/e;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-boolean v1, p0, Lcom/sdk/d/a;->a:Z

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    iget-object v0, v0, Lcom/sdk/d/e;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sdk/d/a;->b:Lcom/sdk/d/e;

    goto :goto_1b

    :cond_6
    instance-of v0, p1, Lcom/sdk/d/e;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/sdk/d/e;

    iput-object p1, p0, Lcom/sdk/d/a;->b:Lcom/sdk/d/e;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sdk/d/a;->a:Z

    goto :goto_1b

    :cond_12
    new-instance v0, Lcom/sdk/d/e;

    sget-object v1, Lcom/sdk/d/b;->d:Lcom/sdk/d/b;

    invoke-direct {v0, v1, p1}, Lcom/sdk/d/e;-><init>(Lcom/sdk/d/b;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sdk/d/a;->b:Lcom/sdk/d/e;

    :goto_1b
    return-void
.end method
