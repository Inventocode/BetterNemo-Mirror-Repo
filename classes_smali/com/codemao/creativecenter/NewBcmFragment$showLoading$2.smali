.class final Lcom/codemao/creativecenter/NewBcmFragment$showLoading$2;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->showLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $imageView:Lcom/codemao/creativecenter/customview/FrameImageView;

.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativecenter/customview/FrameImageView;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showLoading$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    iput-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment$showLoading$2;->$imageView:Lcom/codemao/creativecenter/customview/FrameImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 266
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$showLoading$2;->$imageView:Lcom/codemao/creativecenter/customview/FrameImageView;

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showLoading$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/NewBcmFragment;->getCreativeLoadingAnimResource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/FrameImageView;->setData(I)V

    return-void
.end method
