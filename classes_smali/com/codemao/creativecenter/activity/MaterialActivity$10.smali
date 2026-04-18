.class Lcom/codemao/creativecenter/activity/MaterialActivity$10;
.super Ljava/lang/Object;
.source "MaterialActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/MaterialActivity;->clickTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V
    .registers 2

    .line 1123
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$10;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    .line 1126
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$10;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$000(Lcom/codemao/creativecenter/activity/MaterialActivity;)Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->clNotice:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 1127
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$10;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$1800(Lcom/codemao/creativecenter/activity/MaterialActivity;)V

    :cond_13
    return-void
.end method
