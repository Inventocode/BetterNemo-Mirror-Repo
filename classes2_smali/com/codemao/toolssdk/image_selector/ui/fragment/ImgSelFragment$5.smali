.class Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$5;
.super Ljava/lang/Object;
.source "ImgSelFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->createPopupFolderList(II)V
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

    .line 356
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$5;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$5;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$400(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Lcom/codemao/toolssdk/image_selector/common/Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/toolssdk/image_selector/common/Callback;->onDismissFolderPopup()V

    .line 360
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$5;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->setBackgroundAlpha(F)V

    return-void
.end method
