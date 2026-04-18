.class Lcom/codemao/nemo/activity/UserNameDesEditActivity$8;
.super Ljava/lang/Object;
.source "UserNameDesEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserNameDesEditActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserNameDesEditActivity;)V
    .registers 2

    .line 310
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$8;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 314
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$8;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 315
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$8;->this$0:Lcom/codemao/nemo/activity/UserNameDesEditActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method
