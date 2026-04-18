.class Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;
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

    .line 270
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const-wide/16 v0, 0x190

    .line 273
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 276
    :cond_9
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_66

    .line 277
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_57

    .line 278
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v2}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1200(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 279
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    const/16 v2, -0x63

    invoke-static {p1, v2}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1202(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;I)I

    .line 280
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_4d

    const/4 v2, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v2, 0x0

    :goto_4e
    invoke-static {p1, v2}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1300(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;Z)V

    .line 281
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$500(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    goto :goto_97

    .line 283
    :cond_57
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1400(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    .line 284
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1200(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1500(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;I)V

    goto :goto_97

    .line 287
    :cond_66
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v2}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v3}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1202(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;I)I

    .line 289
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1600(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    .line 290
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1, v1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1300(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;Z)V

    .line 291
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1700(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V

    .line 294
    :goto_97
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_c7

    .line 295
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object v2, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_add_with_num:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v4}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d8

    .line 297
    :cond_c7
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$6;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object v0, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_library_add:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d8
    return-void
.end method
