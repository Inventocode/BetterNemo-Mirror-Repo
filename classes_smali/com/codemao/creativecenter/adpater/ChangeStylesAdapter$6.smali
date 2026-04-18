.class Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$6;
.super Ljava/lang/Object;
.source "ChangeStylesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)V
    .registers 2

    .line 262
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$6;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    const-wide/16 v0, 0x3e8

    .line 265
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 268
    :cond_9
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$6;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$100(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    .line 269
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v2, "背景造型页面"

    const-string/jumbo v3, "背景-添加"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$6;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    .line 271
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$100(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1992

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$6;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    .line 273
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorkUid()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$6;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    .line 274
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorkId()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$6;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    .line 275
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p1

    iget-object v5, p1, Lcom/codemao/creativestore/bean/WorksEvent;->materialsUrl:Ljava/lang/String;

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$6;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    .line 276
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v6

    .line 270
    invoke-static/range {v0 .. v6}, Lcom/codemao/creativecenter/activity/MaterialActivity;->jumpBackgroundMaterial(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_cf

    .line 280
    :cond_66
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v2, "角色造型页面"

    const-string/jumbo v3, "造型-添加"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$6;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    .line 282
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$100(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x198e

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$6;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    .line 284
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorkUid()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$6;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    .line 285
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorkId()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$6;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    .line 286
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    iget-object v5, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$6;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v5}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/SceneVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$6;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    .line 287
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p1

    iget-object v6, p1, Lcom/codemao/creativestore/bean/WorksEvent;->materialsUrl:Ljava/lang/String;

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$6;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    .line 288
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v7

    .line 281
    invoke-static/range {v0 .. v7}, Lcom/codemao/creativecenter/activity/MaterialActivity;->jumpStyleMaterial(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_cf
    return-void
.end method
