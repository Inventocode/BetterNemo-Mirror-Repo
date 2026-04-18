.class Lcom/codemao/nemo/activity/UserInfoSettingActivity$1;
.super Ljava/lang/Object;
.source "UserInfoSettingActivity.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate$ChooseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserInfoSettingActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 134
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$1;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public choose(I)V
    .registers 4

    .line 137
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$1;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->access$002(Lcom/codemao/nemo/activity/UserInfoSettingActivity;I)I

    .line 138
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$1;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->access$100(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;->setChoosePositon(I)V

    .line 139
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$1;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 140
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$1;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object v1, v0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->ivAvatar:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->access$200(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getLocalResId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
