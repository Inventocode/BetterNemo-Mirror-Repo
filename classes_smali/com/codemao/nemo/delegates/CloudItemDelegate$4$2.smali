.class Lcom/codemao/nemo/delegates/CloudItemDelegate$4$2;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "CloudItemDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/delegates/CloudItemDelegate$4;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/delegates/CloudItemDelegate$4;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$2;->this$1:Lcom/codemao/nemo/delegates/CloudItemDelegate$4;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 286
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$2;->this$1:Lcom/codemao/nemo/delegates/CloudItemDelegate$4;

    iget-object p1, p1, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->access$200(Lcom/codemao/nemo/delegates/CloudItemDelegate;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1202e7

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 291
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$2;->this$1:Lcom/codemao/nemo/delegates/CloudItemDelegate$4;

    iget-object p1, p1, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->access$200(Lcom/codemao/nemo/delegates/CloudItemDelegate;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 277
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$2;->onSuccess(Lokhttp3/ResponseBody;)V

    return-void
.end method

.method protected onSuccess(Lokhttp3/ResponseBody;)V
    .registers 2

    return-void
.end method
