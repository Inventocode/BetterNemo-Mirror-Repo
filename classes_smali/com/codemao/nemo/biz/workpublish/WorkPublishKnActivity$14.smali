.class Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$14;
.super Ljava/lang/Object;
.source "WorkPublishKnActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->back(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V
    .registers 2

    .line 561
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$14;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 564
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$14;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$1800(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
