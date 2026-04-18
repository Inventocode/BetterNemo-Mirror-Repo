.class Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$3;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;I)V
    .registers 3

    .line 202
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    iput p2, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13

    .line 205
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 206
    :cond_7
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$000(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$3;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/StyleVO;

    move-result-object v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativestore/presenter/CreateUtils;->getUserMaterialsImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->createUUId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".webp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 209
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$100(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v1

    iget-boolean v1, v1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_7e

    .line 210
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v1, "背景造型页面"

    const-string/jumbo v3, "背景-再编辑"

    invoke-virtual {v0, v1, v3, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 211
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object v3

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$500(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Landroid/content/Context;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/Activity;

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    .line 212
    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x1994

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    .line 215
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v8

    .line 211
    invoke-virtual/range {v3 .. v8}, Lcn/codemao/android/sketch/CodemaoSketch;->goBitmapBackgroundEditActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_d1

    .line 217
    :cond_7e
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    const-string/jumbo v3, "角色造型页面"

    const-string/jumbo v4, "造型-再编辑"

    invoke-virtual {v1, v3, v4, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 218
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object v3

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$500(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Landroid/content/Context;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/app/Activity;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    .line 219
    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v2}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SceneVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 221
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    .line 222
    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1993

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    .line 224
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v10

    .line 218
    invoke-virtual/range {v3 .. v10}, Lcn/codemao/android/sketch/CodemaoSketch;->goCanvasActorEditActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_d1
    return-void
.end method
