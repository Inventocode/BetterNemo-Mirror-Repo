.class Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;
.super Ljava/lang/Object;
.source "NewBcmFragmentV2.java"

# interfaces
.implements Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->onTopMenuClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickHelp()V
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->showHelp()V

    return-void
.end method

.method public clickHistoryWorks()V
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$000(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V

    return-void
.end method

.method public clickUpload(Landroid/view/View;Z)V
    .registers 5

    .line 164
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->getSideBarVm()Lcom/codemao/creativecenter/vm/SidebarVM;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->getSideBarVm()Lcom/codemao/creativecenter/vm/SidebarVM;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->getSideBarVm()Lcom/codemao/creativecenter/vm/SidebarVM;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_34

    .line 165
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string v0, "积木编辑"

    const-string v1, "积木-发布"

    invoke-virtual {p1, v0, v1, p2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3f

    .line 167
    :cond_34
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string v0, "舞台编辑-横屏"

    const-string v1, "舞台-发布"

    invoke-virtual {p1, v0, v1, p2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 169
    :goto_3f
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->onUploadButtonClick(I)V

    return-void
.end method

.method public quite(Landroid/view/View;)V
    .registers 6

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击保存并退出"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$100(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 181
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 182
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    const-string v0, "创作页-点击前往登录（退出）"

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$200(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Ljava/lang/String;)V

    return-void

    .line 187
    :cond_2e
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->getSideBarVm()Lcom/codemao/creativecenter/vm/SidebarVM;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_62

    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->getSideBarVm()Lcom/codemao/creativecenter/vm/SidebarVM;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    if-eqz p1, :cond_62

    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->getSideBarVm()Lcom/codemao/creativecenter/vm/SidebarVM;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_62

    .line 188
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string v2, "积木编辑"

    const-string v3, "积木-退出"

    invoke-virtual {p1, v2, v3, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_6d

    .line 190
    :cond_62
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string v2, "舞台编辑-横屏"

    const-string v3, "舞台-退出"

    invoke-virtual {p1, v2, v3, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 192
    :goto_6d
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p1

    iget p1, p1, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_91

    .line 193
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$300(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)Z

    move-result p1

    if-eqz p1, :cond_8b

    .line 194
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    new-instance v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1$1;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;)V

    invoke-virtual {p1, v1, v0}, Lcom/codemao/creativecenter/NewBcmFragment;->saveWork(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V

    goto :goto_c9

    .line 206
    :cond_8b
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->showModuleConfirm()V

    goto :goto_c9

    .line 208
    :cond_91
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p1

    iget p1, p1, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    if-nez p1, :cond_a6

    .line 209
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    new-instance v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1$2;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;)V

    invoke-virtual {p1, v1, v0}, Lcom/codemao/creativecenter/NewBcmFragment;->saveWork(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V

    goto :goto_c9

    .line 221
    :cond_a6
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/WorksEvent;->havePublished:Z

    if-eqz p1, :cond_b6

    .line 222
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->showUpdateConfirm()V

    goto :goto_c9

    .line 224
    :cond_b6
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/WorksEvent;->isHavePublishStatus()Z

    move-result v0

    xor-int/2addr v0, v1

    new-instance v1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1$3;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/codemao/creativecenter/NewBcmFragment;->saveWork(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V

    .line 238
    :goto_c9
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$500(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
