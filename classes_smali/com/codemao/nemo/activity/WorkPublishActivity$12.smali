.class Lcom/codemao/nemo/activity/WorkPublishActivity$12;
.super Ljava/lang/Object;
.source "WorkPublishActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkPublishActivity;->showLeaveDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V
    .registers 2

    .line 861
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$12;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 864
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$12;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$1900(Lcom/codemao/nemo/activity/WorkPublishActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
