.class Lcom/codemao/creativecenter/customview/CmDisplayRoleView$3;
.super Ljava/lang/Object;
.source "CmDisplayRoleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->clickDel(Lcom/codemao/creativestore/bean/ActorVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

.field final synthetic val$actorVO:Lcom/codemao/creativestore/bean/ActorVO;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 3

    .line 244
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$3;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$3;->val$actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 247
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/creativestore/bean/CreativeReportParams;->create()Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$3;->val$actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    iget-boolean v2, v2, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz v2, :cond_12

    const-string/jumbo v2, "背景"

    goto :goto_15

    :cond_12
    const-string/jumbo v2, "角色"

    :goto_15
    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/CreativeReportParams;->setRoleType(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreativeReportParams;->map()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "舞台编辑-横屏"

    const-string/jumbo v3, "舞台-角色删除"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 248
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$3;->val$actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    iget-boolean v0, v0, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz v0, :cond_40

    .line 249
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$3;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->access$100(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 250
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$3;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->access$100(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$3;->val$actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->cleanBg(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_61

    .line 252
    :cond_40
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$3;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->access$100(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 253
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "角色页面"

    const-string/jumbo v3, "删除角色成功"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 254
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$3;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->access$100(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$3;->val$actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->deleteActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    :cond_61
    :goto_61
    return-void
.end method
