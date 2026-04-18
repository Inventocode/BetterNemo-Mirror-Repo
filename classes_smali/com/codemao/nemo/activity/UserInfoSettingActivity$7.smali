.class Lcom/codemao/nemo/activity/UserInfoSettingActivity$7;
.super Ljava/lang/Object;
.source "UserInfoSettingActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserInfoSettingActivity;->onViewClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V
    .registers 2

    .line 259
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$7;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 267
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$7;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlChoose:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 268
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$7;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rvAvatarChoose:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
