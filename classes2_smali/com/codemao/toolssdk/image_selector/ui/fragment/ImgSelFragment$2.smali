.class Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$2;
.super Ljava/lang/Object;
.source "ImgSelFragment.java"

# interfaces
.implements Lcom/codemao/toolssdk/image_selector/common/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$2;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedClick(ILcom/codemao/toolssdk/image_selector/bean/Image;)I
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$2;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {v0, p1, p2}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$100(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;ILcom/codemao/toolssdk/image_selector/bean/Image;)I

    move-result p1

    return p1
.end method

.method public onImageClick(ILcom/codemao/toolssdk/image_selector/bean/Image;)V
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$2;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$200(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->needCamera:Z

    if-eqz v0, :cond_12

    if-nez p1, :cond_12

    .line 157
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$2;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$300(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)V

    goto :goto_35

    .line 159
    :cond_12
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$2;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$200(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->multiSelect:Z

    if-eqz v0, :cond_22

    .line 160
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$2;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {v0, p1, p2}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$100(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;ILcom/codemao/toolssdk/image_selector/bean/Image;)I

    goto :goto_35

    .line 162
    :cond_22
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$2;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$400(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Lcom/codemao/toolssdk/image_selector/common/Callback;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 163
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$2;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$400(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Lcom/codemao/toolssdk/image_selector/common/Callback;

    move-result-object p1

    iget-object p2, p2, Lcom/codemao/toolssdk/image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/codemao/toolssdk/image_selector/common/Callback;->onSingleImageSelected(Ljava/lang/String;)V

    :cond_35
    :goto_35
    return-void
.end method
