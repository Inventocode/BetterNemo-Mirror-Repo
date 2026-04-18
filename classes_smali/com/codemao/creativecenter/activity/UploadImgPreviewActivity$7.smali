.class Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$7;
.super Ljava/lang/Object;
.source "UploadImgPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V
    .registers 2

    .line 303
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$7;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13

    .line 306
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$7;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1800(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_52

    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$7;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1800(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    goto :goto_52

    .line 308
    :cond_13
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$7;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1800(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_93

    .line 309
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$7;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$7;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v3}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->createUUId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$7;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v3}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2200(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$7;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v3}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2300(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Z

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcn/codemao/android/sketch/CodemaoSketch;->goBitmapBackgroundActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_93

    .line 307
    :cond_52
    :goto_52
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object v4

    iget-object v5, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$7;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v5}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$7;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1900(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$7;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2000(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$7;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->createUUId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$7;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2200(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$7;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2300(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Z

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lcn/codemao/android/sketch/CodemaoSketch;->goBitmapActorActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 311
    :cond_93
    :goto_93
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$7;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    sget v0, Lcom/codemao/creativecenter/R$anim;->creative_alpha_in_preview:I

    sget v1, Lcom/codemao/creativecenter/R$anim;->creative_alpha_out_preview:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
