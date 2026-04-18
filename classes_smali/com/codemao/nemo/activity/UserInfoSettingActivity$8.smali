.class Lcom/codemao/nemo/activity/UserInfoSettingActivity$8;
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

    .line 290
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$8;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 298
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$8;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlChoose:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 299
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$8;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rvAvatarChoose:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 300
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$8;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->access$100(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$8;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->access$000(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;->setChoosePositon(I)V

    .line 301
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$8;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

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
