.class Lcom/codemao/creativecenter/activity/MaterialActivity$1;
.super Ljava/lang/Object;
.source "MaterialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/MaterialActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 332
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$1;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 335
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$1;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$000(Lcom/codemao/creativecenter/activity/MaterialActivity;)Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->clNotice:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
