.class Lcom/cmic/sso/sdk/view/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/view/c;->c()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/view/c;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/view/c;)V
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/view/c$1;->a:Lcom/cmic/sso/sdk/view/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/cmic/sso/sdk/view/c$1;->a:Lcom/cmic/sso/sdk/view/c;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/c;->a(Lcom/cmic/sso/sdk/view/c;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    iget-object p1, p0, Lcom/cmic/sso/sdk/view/c$1;->a:Lcom/cmic/sso/sdk/view/c;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/c;->b()V

    return-void
.end method
