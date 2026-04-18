.class public Lcom/sdk/d/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/sdk/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/d/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public b:Lcom/sdk/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/d/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final synthetic d:Lcom/sdk/d/f;


# direct methods
.method public constructor <init>(Lcom/sdk/d/f;)V
    .registers 3

    iput-object p1, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sdk/d/f;->a()V

    :try_start_8
    iget-object v0, p1, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    iget-object v0, v0, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    iput-object v0, p0, Lcom/sdk/d/f$a;->a:Lcom/sdk/d/a;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sdk/d/f$a;->c:Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1a

    :cond_16
    invoke-virtual {p1}, Lcom/sdk/d/f;->b()V

    return-void

    :catchall_1a
    move-exception v0

    invoke-virtual {p1}, Lcom/sdk/d/f;->b()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/sdk/d/f$a;->a:Lcom/sdk/d/a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    invoke-virtual {v0}, Lcom/sdk/d/f;->a()V

    :try_start_5
    iget-object v0, p0, Lcom/sdk/d/f$a;->a:Lcom/sdk/d/a;

    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/sdk/d/f$a;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sdk/d/f$a;->b:Lcom/sdk/d/a;

    :goto_d
    iget-object v2, v0, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    if-ne v2, v0, :cond_18

    iget-object v0, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    iget-object v0, v0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    iget-object v2, v0, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    goto :goto_23

    :cond_18
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    move-object v0, v2

    goto :goto_d

    :cond_23
    :goto_23
    iput-object v2, p0, Lcom/sdk/d/f$a;->a:Lcom/sdk/d/a;

    if-nez v2, :cond_29

    const/4 v0, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual {v2}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_2d
    iput-object v0, p0, Lcom/sdk/d/f$a;->c:Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_3b

    iget-object v0, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    invoke-virtual {v0}, Lcom/sdk/d/f;->b()V

    return-object v1

    :cond_35
    :try_start_35
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v0

    iget-object v1, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    invoke-virtual {v1}, Lcom/sdk/d/f;->b()V

    throw v0
.end method

.method public remove()V
    .registers 5

    iget-object v0, p0, Lcom/sdk/d/f$a;->b:Lcom/sdk/d/a;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    invoke-virtual {v0}, Lcom/sdk/d/f;->a()V

    :try_start_9
    iget-object v0, p0, Lcom/sdk/d/f$a;->b:Lcom/sdk/d/a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sdk/d/f$a;->b:Lcom/sdk/d/a;

    iget-object v1, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    iget-object v1, v1, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    :cond_12
    iget-object v2, v1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v1, :cond_20

    if-ne v1, v0, :cond_12

    iget-object v0, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    invoke-virtual {v0, v1, v2}, Lcom/sdk/d/f;->a(Lcom/sdk/d/a;Lcom/sdk/d/a;)V
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_26

    :cond_20
    iget-object v0, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    invoke-virtual {v0}, Lcom/sdk/d/f;->b()V

    return-void

    :catchall_26
    move-exception v0

    iget-object v1, p0, Lcom/sdk/d/f$a;->d:Lcom/sdk/d/f;

    invoke-virtual {v1}, Lcom/sdk/d/f;->b()V

    throw v0

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
