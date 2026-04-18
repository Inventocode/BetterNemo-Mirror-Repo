.class Lcom/geetest/sdk/w$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/w$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/w$a;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/w$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/w$a$c;->a:Lcom/geetest/sdk/w$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/w$a$c;->a:Lcom/geetest/sdk/w$a;

    iget-object v1, v0, Lcom/geetest/sdk/w$a;->b:Lcom/geetest/sdk/w;

    iget-object v0, v0, Lcom/geetest/sdk/w$a;->a:Lcom/geetest/sdk/an;

    invoke-virtual {v1, v0}, Lcom/geetest/sdk/u;->e(Lcom/geetest/sdk/an;)V

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/w$a$c;->a:Lcom/geetest/sdk/w$a;

    iget-object v1, v0, Lcom/geetest/sdk/w$a;->b:Lcom/geetest/sdk/w;

    iget-object v0, v0, Lcom/geetest/sdk/w$a;->a:Lcom/geetest/sdk/an;

    invoke-virtual {v1, v0}, Lcom/geetest/sdk/u;->b(Lcom/geetest/sdk/an;)V

    return-void
.end method
