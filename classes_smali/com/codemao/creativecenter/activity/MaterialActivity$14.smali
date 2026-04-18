.class Lcom/codemao/creativecenter/activity/MaterialActivity$14;
.super Landroid/os/CountDownTimer;
.source "MaterialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/MaterialActivity;->startDissmissCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/MaterialActivity;JJ)V
    .registers 6

    .line 1896
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$14;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 1905
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$14;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$2302(Lcom/codemao/creativecenter/activity/MaterialActivity;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 1906
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$14;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$000(Lcom/codemao/creativecenter/activity/MaterialActivity;)Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->clNotice:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onTick(J)V
    .registers 3

    return-void
.end method
