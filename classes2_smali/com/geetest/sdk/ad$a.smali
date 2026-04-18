.class Lcom/geetest/sdk/ad$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/ad;->a(Lcom/geetest/sdk/ac;Lcom/geetest/sdk/ae;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/ac;

.field final synthetic b:Lcom/geetest/sdk/ae;

.field final synthetic c:Lcom/geetest/sdk/ad;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/ad;Lcom/geetest/sdk/ac;Lcom/geetest/sdk/ae;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/ad$a;->c:Lcom/geetest/sdk/ad;

    iput-object p2, p0, Lcom/geetest/sdk/ad$a;->a:Lcom/geetest/sdk/ac;

    iput-object p3, p0, Lcom/geetest/sdk/ad$a;->b:Lcom/geetest/sdk/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/ad$a;->c:Lcom/geetest/sdk/ad;

    iget-object v1, p0, Lcom/geetest/sdk/ad$a;->a:Lcom/geetest/sdk/ac;

    iget-object v2, p0, Lcom/geetest/sdk/ad$a;->b:Lcom/geetest/sdk/ae;

    invoke-virtual {v0, v1, v2}, Lcom/geetest/sdk/ad;->b(Lcom/geetest/sdk/ac;Lcom/geetest/sdk/ae;)V

    return-void
.end method
