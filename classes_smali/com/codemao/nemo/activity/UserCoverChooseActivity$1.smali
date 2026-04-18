.class Lcom/codemao/nemo/activity/UserCoverChooseActivity$1;
.super Ljava/lang/Object;
.source "UserCoverChooseActivity.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/UserCoverChooseDelegate$ChooseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserCoverChooseActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserCoverChooseActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserCoverChooseActivity;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity$1;->this$0:Lcom/codemao/nemo/activity/UserCoverChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public choose(I)V
    .registers 6

    .line 121
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity$1;->this$0:Lcom/codemao/nemo/activity/UserCoverChooseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->access$000(Lcom/codemao/nemo/activity/UserCoverChooseActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_49

    .line 123
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity$1;->this$0:Lcom/codemao/nemo/activity/UserCoverChooseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->access$100(Lcom/codemao/nemo/activity/UserCoverChooseActivity;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 124
    invoke-static {}, Lcom/codemao/nemo/ui/MultiImageSelector;->create()Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/ui/MultiImageSelector;->showCamera(Z)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/ui/MultiImageSelector;->single()Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/ui/MultiImageSelector;->setTitle(Ljava/lang/String;)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/ui/MultiImageSelector;->setType(I)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity$1;->this$0:Lcom/codemao/nemo/activity/UserCoverChooseActivity;

    const/16 v1, 0x4e21

    .line 125
    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/ui/MultiImageSelector;->start(Landroid/app/Activity;I)V

    goto :goto_5c

    .line 127
    :cond_39
    sget-object p1, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity$1;->this$0:Lcom/codemao/nemo/activity/UserCoverChooseActivity;

    const/16 v1, 0x67

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->access$100(Lcom/codemao/nemo/activity/UserCoverChooseActivity;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "TYPE_OPEN_XIANGCE"

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionInOrigin(Landroid/app/Activity;ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_5c

    .line 130
    :cond_49
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity$1;->this$0:Lcom/codemao/nemo/activity/UserCoverChooseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->access$000(Lcom/codemao/nemo/activity/UserCoverChooseActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getHttpUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->access$200(Lcom/codemao/nemo/activity/UserCoverChooseActivity;Ljava/lang/String;)V

    :goto_5c
    return-void
.end method
