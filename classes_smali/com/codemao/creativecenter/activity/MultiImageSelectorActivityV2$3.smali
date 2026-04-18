.class Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;
.super Ljava/lang/Object;
.source "MultiImageSelectorActivityV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    const-wide/16 v0, 0x3e8

    .line 190
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 193
    :cond_9
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$100(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_16

    return-void

    .line 196
    :cond_16
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$200(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_dc

    .line 197
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$300(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2b

    const-string p1, ".jpg"

    goto :goto_2d

    :cond_2b
    const-string p1, ".webp"

    .line 198
    :goto_2d
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-static {v2}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$300(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_87

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-static {v2}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$300(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_40

    goto :goto_87

    .line 206
    :cond_40
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-static {v2}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$300(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)I

    move-result v2

    if-ne v2, v1, :cond_d2

    .line 207
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    .line 208
    invoke-static {v2}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$100(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    .line 209
    invoke-static {v4}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$600(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->createUUId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    .line 210
    invoke-static {v3}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$700(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Z

    move-result v3

    .line 207
    invoke-virtual {v1, v2, v0, p1, v3}, Lcn/codemao/android/sketch/CodemaoSketch;->goBitmapBackgroundActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 211
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    sget v0, Lcom/codemao/creativecenter/R$anim;->creative_alpha_in_preview:I

    sget v1, Lcom/codemao/creativecenter/R$anim;->creative_alpha_out_preview:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_d2

    .line 199
    :cond_87
    :goto_87
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    .line 200
    invoke-static {v3}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$100(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    .line 201
    invoke-static {v0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$400(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    .line 202
    invoke-static {v0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$500(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    .line 203
    invoke-static {v1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$600(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->createUUId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    .line 204
    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$700(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Z

    move-result v8

    .line 199
    invoke-virtual/range {v2 .. v8}, Lcn/codemao/android/sketch/CodemaoSketch;->goBitmapActorActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 205
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    sget v0, Lcom/codemao/creativecenter/R$anim;->creative_alpha_in_preview:I

    sget v1, Lcom/codemao/creativecenter/R$anim;->creative_alpha_out_preview:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 213
    :cond_d2
    :goto_d2
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    sget v0, Lcom/codemao/creativecenter/R$anim;->creative_alpha_in_preview:I

    sget v1, Lcom/codemao/creativecenter/R$anim;->creative_alpha_out_preview:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_151

    .line 215
    :cond_dc
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    const-class v2, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-static {v1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$100(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "imgs"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 217
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-static {v1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$400(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "select_bgpath"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-static {v1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$600(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "select_path"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-static {v1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$300(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)I

    move-result v1

    const-string v2, "select_type"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-static {v1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$500(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "select_title"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-static {v1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$800(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_work_uid"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-static {v1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$100(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "chooseImg"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$700(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Z

    move-result v0

    const-string v1, "extra_is_landscape_stage"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 225
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$3;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    sget v0, Lcom/codemao/creativecenter/R$anim;->creative_alpha_in_preview:I

    sget v1, Lcom/codemao/creativecenter/R$anim;->creative_alpha_out_preview:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_151
    return-void
.end method
