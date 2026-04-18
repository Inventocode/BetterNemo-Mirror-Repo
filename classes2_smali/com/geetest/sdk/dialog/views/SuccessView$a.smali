.class Lcom/geetest/sdk/dialog/views/SuccessView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/geetest/sdk/views/GT3View$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/dialog/views/SuccessView;->a(Landroid/content/Context;Lcom/geetest/sdk/h;Lcom/geetest/sdk/GT3ConfigBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/h;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/dialog/views/SuccessView;Lcom/geetest/sdk/h;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/geetest/sdk/dialog/views/SuccessView$a;->a:Lcom/geetest/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/SuccessView$a;->a:Lcom/geetest/sdk/h;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/geetest/sdk/h;->d()V

    :cond_7
    return-void
.end method
