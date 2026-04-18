.class Lcom/tencent/smtt/sdk/a/e$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/sdk/a/e$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/smtt/sdk/a/e$1;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/a/e$1;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/smtt/sdk/a/e$1$1;->b:Lcom/tencent/smtt/sdk/a/e$1;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/a/e$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/a/e$1$1;->b:Lcom/tencent/smtt/sdk/a/e$1;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/a/e$1;->a:Lcom/tencent/smtt/sdk/a/e$a;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/tencent/smtt/sdk/a/e$1$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/smtt/sdk/a/e$a;->a(Ljava/lang/String;)V

    :cond_b
    return-void
.end method
